import os, sys
import math
import matplotlib.pyplot as plt
from matplotlib import collections  as mc

class ButterflyNet(object):

    def __init__(self, n_stage=None, n_port=None, type_list=None, pfx_list=None, tcl_fn=None):
        self.n_stage = n_stage
        self.n_port = n_port
        self.type_list = type_list
        self.pfx_list = pfx_list
        self.tcl_fn = tcl_fn

        # baseline size is based on 2K definition (2560*1440)
        self.zoom_factor = 256 / self.n_port
        # horizontal and vertical margin of the (0, 0) switch node
        self.H_margin = 6.0
        self.V_margin = 1.0

        self.get_all_size()
        self.get_all_coordinates()
        self.get_pin_pairs()

        self.create_canvas()
        self.draw_switch_nodes()
        self.draw_pin_connection()

    def get_all_size(self):
        ''' Get size(float) of canvas, switch nodes, spacing, line segments etc '''
        self.TNode_height = 0.8 * self.zoom_factor
        self.TNode_vspace = 0.18 * self.zoom_factor
        
        self.FNode_height = 1.6 * self.zoom_factor
        self.FNode_vspace = 0.36 * self.zoom_factor
        
        self.Node_width = 1.2 * (8 / self.n_stage)
        self.Node_hspace = 24.4 * (8 / self.n_stage)


    def get_all_coordinates(self):
        ''' Get coordinates(float) of every switch node, including the central point and input/output pins '''
        
        # set the coordinate of the (0, 0) switch node
        x0 = self.H_margin + self.Node_width/2

        ''' Create dictionary to record the coordinate of the central point
            Key: switch node tuples (i, j) as identifier of stage i and j_th switch node
            Value: one tuple of float value as (x, y) coordinate 
        '''
        self.dict_central_point_coord = {}
        for i in range(self.n_stage):
            # switch node travseral: stage i, j_th node
            n_nodes = self.n_port // self.type_list[i]
            y0 = self.V_margin + (self.TNode_height/2 if self.type_list[i] == 2 else self.FNode_height/2)

            for j in range(n_nodes):
                x = x0 + i * self.Node_hspace
                if self.type_list[i] == 2:
                    y = y0 + j * self.TNode_height + j//2 * self.FNode_vspace
                else:
                    y = y0 + j * (self.FNode_height+self.FNode_vspace)

                self.dict_central_point_coord[(i, j)] = (x, y)


        hw = self.Node_width / 2
        z = self.zoom_factor

        hqw = hw * 1.5
        ''' Create dictionary to record the coordinate of the input pins
            Key: switch node tuples (i, j) as identifier of stage i and j_th switch node
            Value: one list consists of two/four tuples, each of float value as (x, y) coordinate
            Note: with the same key, the tuples are organized in y-coordinate ascending order
        '''
        self.dict_input_pin_coord = {}
        for i in range(self.n_stage):
            # switch node travseral: stage i, j_th node
            n_nodes = self.n_port // self.type_list[i]

            xi = self.dict_central_point_coord[(i, 0)][0]
            x = xi - hqw
            for j in range(n_nodes):
                yj = self.dict_central_point_coord[(i, j)][1]
                self.dict_input_pin_coord[(i, j)] = []
                
                if self.type_list[i] == 2:
                    self.dict_input_pin_coord[(i, j)].append((x, yj - 0.2*z))
                    self.dict_input_pin_coord[(i, j)].append((x, yj + 0.2*z))
                else:
                    self.dict_input_pin_coord[(i, j)].append((x, yj - 0.6*z))
                    self.dict_input_pin_coord[(i, j)].append((x, yj - 0.2*z))
                    self.dict_input_pin_coord[(i, j)].append((x, yj + 0.2*z))
                    self.dict_input_pin_coord[(i, j)].append((x, yj + 0.6*z))

        ''' Create dictionary to record the coordinate of the output pins
            Key: switch node tuples (i, j) as identifier of stage i and j_th switch node
            Value: one list consists of two/four tuples, each of float value as (x, y) coordinate
            Note: with the same key, the tuples are organized in y-coordinate ascending order
        '''
        self.dict_output_pin_coord = {}
        for i in range(self.n_stage):
            # switch node travseral: stage i, j_th node
            n_nodes = self.n_port // self.type_list[i]

            xi = self.dict_central_point_coord[(i, 0)][0]
            x = xi + hqw
            for j in range(n_nodes):
                yj = self.dict_central_point_coord[(i, j)][1]
                self.dict_output_pin_coord[(i, j)] = []
                
                if self.type_list[i] == 2:
                    self.dict_output_pin_coord[(i, j)].append((x, yj - 0.2*z))
                    self.dict_output_pin_coord[(i, j)].append((x, yj + 0.2*z))
                else:
                    self.dict_output_pin_coord[(i, j)].append((x, yj - 0.6*z))
                    self.dict_output_pin_coord[(i, j)].append((x, yj - 0.2*z))
                    self.dict_output_pin_coord[(i, j)].append((x, yj + 0.2*z))
                    self.dict_output_pin_coord[(i, j)].append((x, yj + 0.6*z))


    def get_pin_pairs(self):
        ''' Get all pin pairs for connection in the next step
            Firstly, build (uniSrcId, uniDstId) pairs, then convert to
            From (srcSwId, srcPortId) to (dstSwId, dstPortId)
        '''
        list_uni_pairs = [[] for i in range(self.n_stage-1)]
        # create (uniSrcId, uniDstId) tuples as pin pairs
        for i in range(self.n_stage-1):
            pre_span = self.n_port // math.prod(self.type_list[0:i])
            cur_span = self.n_port // math.prod(self.type_list[0:i+1])

            # traverse across all switch nodes from i_th stage
            n_ports = self.type_list[i]
            n_nodes = self.n_port // n_ports
            for j in range(n_nodes):
                uniId_ofst = j*n_ports // pre_span * pre_span
                for k in range(n_ports):
                    uniSrcId = j*n_ports + k
                    rank = (uniSrcId%pre_span) // cur_span
                    if k == rank:
                        fxPortId = k

                for l in range(n_ports):
                    uniSrcId = j*n_ports + (fxPortId+l)%n_ports
                    uniDstId = uniId_ofst + (j*n_ports+fxPortId + cur_span*l) % pre_span

                    list_uni_pairs[i].append((uniSrcId, uniDstId))

        ''' Create dictionary to record the connection pairs between output pins of i_th stage and input pins of i+1_th stage
            Key: stage Id tuples (i, i+1)
            Value: list of lists, each inner list consists of [(srcSwId, srcPortId), (dstSwId, dstPortId)] as a [src, dst] list
        '''
        self.dict_connect_pin_pairs = {}
        # convert uniId to (SwId, PortId) tuple
        for i in range(self.n_stage-1):
            self.dict_connect_pin_pairs[(i, i+1)] = []

            # traverse across all pin pairs within one list
            for srcId, dstId in list_uni_pairs[i]:
                srcSwId = srcId // self.type_list[i]
                srcPortId = srcId % self.type_list[i]

                dstSwId = dstId // self.type_list[i+1]
                dstPortId = dstId % self.type_list[i+1]

                self.dict_connect_pin_pairs[(i, i+1)].append([(srcSwId, srcPortId), (dstSwId, dstPortId)])


    def create_canvas(self):
        ''' In 2K monitor definition baseline, canvas size is 1280 (Width) * 2160 (Height) in pixels '''
        Width = 216.0
        Height= 128.0

        plt.figure(figsize=[Width, Height], dpi=10)
        self.ax = plt.subplot(111,aspect = 'equal')
        self.ax.set_xlim([0, Width])
        self.ax.set_ylim([0, Height])

        plt.subplots_adjust(left=0, bottom=0, right=1, top=1, wspace=0, hspace=0)


    def draw_switch_nodes(self):
        ''' Draw switch nodes (edges) and their corresponding i/o pins by matplotlib
            Top Edge -a; Bottom Edge - b; Left Edge - c; Right Edge - d
        '''
        # create coordinate pairs for edges of switch nodes
        list_edge_a_pairs = [[] for i in range(self.n_stage)]
        list_edge_b_pairs = [[] for i in range(self.n_stage)]
        list_edge_c_pairs = [[] for i in range(self.n_stage)]
        list_edge_d_pairs = [[] for i in range(self.n_stage)]

        hw = self.Node_width / 2
        z = self.zoom_factor

        hqw = hw * 1.5
        for i in range(self.n_stage):
            # switch node travseral: stage i, j_th node
            n_nodes = self.n_port // self.type_list[i]        
            
            xi = self.dict_central_point_coord[(i, 0)][0]
            for j in range(n_nodes):
                yj = self.dict_central_point_coord[(i, j)][1]
                if self.type_list[i] == 2:
                    list_edge_a_pairs[i].append([(xi-hw, yj-0.4*z), (xi+hw, yj-0.4*z)])
                    list_edge_b_pairs[i].append([(xi-hw, yj+0.4*z), (xi+hw, yj+0.4*z)])
                    list_edge_c_pairs[i].append([(xi-hw, yj-0.4*z), (xi-hw, yj+0.4*z)])
                    list_edge_d_pairs[i].append([(xi+hw, yj-0.4*z), (xi+hw, yj+0.4*z)])
                else:
                    list_edge_a_pairs[i].append([(xi-hw, yj-0.8*z), (xi+hw, yj-0.8*z)])
                    list_edge_b_pairs[i].append([(xi-hw, yj+0.8*z), (xi+hw, yj+0.8*z)])
                    list_edge_c_pairs[i].append([(xi-hw, yj-0.8*z), (xi-hw, yj+0.8*z)])
                    list_edge_d_pairs[i].append([(xi+hw, yj-0.8*z), (xi+hw, yj+0.8*z)])

        # create coordinate pairs for i/o pins of switch nodes
        list_input_pin_pairs = [[] for i in range(self.n_stage)]
        list_output_pin_pairs = [[] for i in range(self.n_stage)]
        
        for i in range(self.n_stage):
            # switch node travseral: stage i, j_th node
            n_nodes = self.n_port // self.type_list[i]        
            
            xi = self.dict_central_point_coord[(i, 0)][0]
            for j in range(n_nodes):
                yj = self.dict_central_point_coord[(i, j)][1]
                if self.type_list[i] == 2:
                    list_input_pin_pairs[i].append([(xi-hqw, yj-0.2*z), (xi-hw, yj-0.2*z)])
                    list_input_pin_pairs[i].append([(xi-hqw, yj+0.2*z), (xi-hw, yj+0.2*z)])

                    list_output_pin_pairs[i].append([(xi+hw, yj-0.2*z), (xi+hqw, yj-0.2*z)])
                    list_output_pin_pairs[i].append([(xi+hw, yj+0.2*z), (xi+hqw, yj+0.2*z)])
                else:
                    list_input_pin_pairs[i].append([(xi-hqw, yj-0.6*z), (xi-hw, yj-0.6*z)])
                    list_input_pin_pairs[i].append([(xi-hqw, yj-0.2*z), (xi-hw, yj-0.2*z)])
                    list_input_pin_pairs[i].append([(xi-hqw, yj+0.2*z), (xi-hw, yj+0.2*z)])
                    list_input_pin_pairs[i].append([(xi-hqw, yj+0.6*z), (xi-hw, yj+0.6*z)])

                    list_output_pin_pairs[i].append([(xi+hw, yj-0.6*z), (xi+hqw, yj-0.6*z)])
                    list_output_pin_pairs[i].append([(xi+hw, yj-0.2*z), (xi+hqw, yj-0.2*z)])
                    list_output_pin_pairs[i].append([(xi+hw, yj+0.2*z), (xi+hqw, yj+0.2*z)])
                    list_output_pin_pairs[i].append([(xi+hw, yj+0.6*z), (xi+hqw, yj+0.6*z)])

        # draw edges and i/o pins
        for i in range(self.n_stage):
            lc_edge_a = mc.LineCollection(list_edge_a_pairs[i], colors='k', linewidth=8)
            lc_edge_b = mc.LineCollection(list_edge_b_pairs[i], colors='k', linewidth=8)
            lc_edge_c = mc.LineCollection(list_edge_c_pairs[i], colors='k', linewidth=8)
            lc_edge_d = mc.LineCollection(list_edge_d_pairs[i], colors='k', linewidth=8)

            self.ax.add_collection(lc_edge_a)
            self.ax.add_collection(lc_edge_b)
            self.ax.add_collection(lc_edge_c)
            self.ax.add_collection(lc_edge_d)

            lc_input_pin = mc.LineCollection(list_input_pin_pairs[i], colors='k', linewidth=6)
            lc_output_pin = mc.LineCollection(list_output_pin_pairs[i], colors='k', linewidth=6)

            self.ax.add_collection(lc_input_pin)
            self.ax.add_collection(lc_output_pin)


    def draw_pin_connection(self):
        ''' Draw the connection line segments among pins by matplotlib '''
        
        for i in range(self.n_stage-1):
            # convert pin pairs to coordinate pairs i.e. (SwId, PortId) to (x, y)
            list_pin_pairs = []
            
            pin_pairs = self.dict_connect_pin_pairs[(i, i+1)]
            for pair in pin_pairs:
                src_pin = pair[0]
                dst_pin = pair[1]

                src_pin_coord = self.dict_output_pin_coord[(i, src_pin[0])][src_pin[1]]
                dst_pin_coord = self.dict_input_pin_coord[(i+1, dst_pin[0])][dst_pin[1]]
                list_pin_pairs.append([src_pin_coord, dst_pin_coord])

            lc = mc.LineCollection(list_pin_pairs, colors='b', linewidth=6)
            self.ax.add_collection(lc)


    def save_network_image(self):
        ''' Save the butterfly network topology image as file '''
        
        str_type_list = ''
        for i in range(self.n_stage):
            str_type_list = str_type_list + '_' + str(self.type_list[i])
        
        img_fn = 'ButterflyNet_%dX%d%s' % (self.n_port, self.n_port, str_type_list)
        # img_fn = 'ButterflyNet_' + str(self.n_port) + 'X' + str(self.n_port) + '_' + str_type_list
        plt.savefig(img_fn)


    def gen_bufferfly_tcl(self):
        ''' Generate the tcl command for automatic connection as file
            Tcl cmd <create external ports>: make_bd_pins_external  [get_bd_pins <IP_Instance>/<Pin>]
            Tcl cmd <rename external ports>: set_property name <new_name> [get_bd_ports <old_name>]
            Tcl cmd <connect external ports>: connect_bd_net [get_bd_ports <ext_port>] [get_bd_pins <IP_Instance>/<Pin>]
            Tcl cmd <connect two pins>: connect_bd_net [get_bd_pins <IP_Instance_a>/<Pin_a>] [get_bd_pins <IP_Instance_b>/<Pin_b>]
        '''
        assert self.tcl_fn is not None, "GraFlex Error: Output tcl command file not provided"

        self.gen_tcl_crt_rn_ext_ports() # create & rename external ports
        self.gen_tcl_connect_clk_rst() # connect clk & rst_n signals

        for stageIdx in range(self.n_stage-1):
            self.gen_tcl_connect_consec_stages(stageIdx)


    def gen_tcl_crt_rn_ext_ports(self):
        
        with open(self.tcl_fn, 'w') as file:
            file.write('startgroup\n')

            cmd_ext_clk = 'make_bd_pins_external  [get_bd_pins '+ self.pfx_list[0] +'_0/clk]\n'
            cmd_ext_rst = 'make_bd_pins_external  [get_bd_pins '+ self.pfx_list[0] +'_0/rst_n]\n'
            file.write(cmd_ext_clk)
            file.write(cmd_ext_rst)

            # ivld signals
            for i in range(self.n_port):
                if (self.type_list[0] == 2):
                    cmd_crt_ivld = 'make_bd_pins_external  [get_bd_pins '+ self.pfx_list[0] +'_'+str(i//2)+'/ivld_'+chr(ord('a')+i%2)+']\n'
                else:
                    cmd_crt_ivld = 'make_bd_pins_external  [get_bd_pins '+ self.pfx_list[0] +'_'+str(i//4)+'/ivld_'+chr(ord('a')+i%4)+']\n'
                file.write(cmd_crt_ivld)
            file.write('\n')
            
            # din signals
            for i in range(self.n_port):
                if (self.type_list[0] == 2):
                    cmd_crt_din = 'make_bd_pins_external  [get_bd_pins '+ self.pfx_list[0] +'_'+str(i//2)+'/din_'+chr(ord('a')+i%2)+']\n'
                else:
                    cmd_crt_din = 'make_bd_pins_external  [get_bd_pins '+ self.pfx_list[0] +'_'+str(i//4)+'/din_'+chr(ord('a')+i%4)+']\n'
                file.write(cmd_crt_din)
            file.write('\n')
            
            # ofw signals
            for i in range(self.n_port):
                if (self.type_list[0] == 2):
                    cmd_crt_ofw = 'make_bd_pins_external  [get_bd_pins '+ self.pfx_list[0] +'_'+str(i//2)+'/ofw_input_'+chr(ord('a')+i%2)+']\n'
                else:
                    cmd_crt_ofw = 'make_bd_pins_external  [get_bd_pins '+ self.pfx_list[0] +'_'+str(i//4)+'/ofw_input_'+chr(ord('a')+i%4)+']\n'
                file.write(cmd_crt_ofw)
            file.write('\n')

            # ovld signals
            for i in range(self.n_port):
                if (self.type_list[self.n_stage-1] == 2):
                    cmd_crt_ovld = 'make_bd_pins_external  [get_bd_pins '+ self.pfx_list[self.n_stage-1] +'_'+str(i//2)+'/ovld_'+chr(ord('a')+i%2)+']\n'
                else:
                    cmd_crt_ovld = 'make_bd_pins_external  [get_bd_pins '+ self.pfx_list[self.n_stage-1] +'_'+str(i//4)+'/ovld_'+chr(ord('a')+i%4)+']\n'
                file.write(cmd_crt_ovld)
            file.write('\n')

            # dout signals
            for i in range(self.n_port):
                if (self.type_list[self.n_stage-1] == 2):
                    cmd_crt_dout = 'make_bd_pins_external  [get_bd_pins '+ self.pfx_list[self.n_stage-1] +'_'+str(i//2)+'/dout_'+chr(ord('a')+i%2)+']\n'
                else:
                    cmd_crt_dout = 'make_bd_pins_external  [get_bd_pins '+ self.pfx_list[self.n_stage-1] +'_'+str(i//4)+'/dout_'+chr(ord('a')+i%4)+']\n'
                file.write(cmd_crt_dout)
            file.write('\n')

            # bp signals
            for i in range(self.n_port):
                if (self.type_list[self.n_stage-1] == 2):
                    cmd_crt_bp = 'make_bd_pins_external  [get_bd_pins '+ self.pfx_list[self.n_stage-1] +'_'+str(i//2)+'/ofw_output_'+chr(ord('a')+i%2)+']\n'
                else:
                    cmd_crt_bp = 'make_bd_pins_external  [get_bd_pins '+ self.pfx_list[self.n_stage-1] +'_'+str(i//4)+'/ofw_output_'+chr(ord('a')+i%4)+']\n'
                file.write(cmd_crt_bp)
            file.write('endgroup\n\n\n')

        ''' Rename External Ports '''
        with open(self.tcl_fn, 'a') as file:
            file.write('startgroup\n')

            cmd_ext_clk = 'set_property name clk [get_bd_ports clk_0]\n'
            cmd_ext_rst = 'set_property name rst_n [get_bd_ports rst_n_0]\n'
            file.write(cmd_ext_clk)
            file.write(cmd_ext_rst)

            # ivld signals
            for i in range(self.n_port):
                if (self.type_list[0] == 2):
                    cmd_rn_ivld = 'set_property name ivld_'+str(i)+' [get_bd_ports ivld_'+chr(ord('a')+i%2)+'_'+str(i//2)+']\n'
                else:
                    cmd_rn_ivld = 'set_property name ivld_'+str(i)+' [get_bd_ports ivld_'+chr(ord('a')+i%4)+'_'+str(i//4)+']\n'
                file.write(cmd_rn_ivld)
            file.write('\n')

            # din signals
            for i in range(self.n_port):
                if (self.type_list[0] == 2):
                    cmd_rn_din = 'set_property name din_'+str(i)+' [get_bd_ports din_'+chr(ord('a')+i%2)+'_'+str(i//2)+']\n'
                else:
                    cmd_rn_din = 'set_property name din_'+str(i)+' [get_bd_ports din_'+chr(ord('a')+i%4)+'_'+str(i//4)+']\n'
                file.write(cmd_rn_din)
            file.write('\n')

            # ofw signals
            for i in range(self.n_port):
                if (self.type_list[0] == 2):
                    cmd_rn_ofw = 'set_property name ofw_'+str(i)+' [get_bd_ports ofw_input_'+chr(ord('a')+i%2)+'_'+str(i//2)+']\n'
                else:
                    cmd_rn_ofw = 'set_property name ofw_'+str(i)+' [get_bd_ports ofw_input_'+chr(ord('a')+i%4)+'_'+str(i//4)+']\n'
                file.write(cmd_rn_ofw)
            file.write('\n')

            # ovld signals
            for i in range(self.n_port):
                if (self.type_list[self.n_stage-1] == 2):
                    cmd_rn_ovld = 'set_property name ovld_'+str(i)+' [get_bd_ports ovld_'+chr(ord('a')+i%2)+'_'+str(i//2)+']\n'
                else:
                    cmd_rn_ovld = 'set_property name ovld_'+str(i)+' [get_bd_ports ovld_'+chr(ord('a')+i%4)+'_'+str(i//4)+']\n'
                
                file.write(cmd_rn_ovld)
            file.write('\n')

            # dout signals
            for i in range(self.n_port):
                if (self.type_list[self.n_stage-1] == 2):
                    cmd_rn_dout = 'set_property name dout_'+str(i)+' [get_bd_ports dout_'+chr(ord('a')+i%2)+'_'+str(i//2)+']\n'
                else:
                    cmd_rn_dout = 'set_property name dout_'+str(i)+' [get_bd_ports dout_'+chr(ord('a')+i%4)+'_'+str(i//4)+']\n'
                file.write(cmd_rn_dout)
            file.write('\n')

            # bp signals
            for i in range(self.n_port):
                if (self.type_list[self.n_stage-1] == 2):
                    cmd_rn_bp = 'set_property name bp_'+str(i)+' [get_bd_ports ofw_output_'+chr(ord('a')+i%2)+'_'+str(i//2)+']\n'
                else:
                    cmd_rn_bp = 'set_property name bp_'+str(i)+' [get_bd_ports ofw_output_'+chr(ord('a')+i%4)+'_'+str(i//4)+']\n'
                file.write(cmd_rn_bp)
            file.write('endgroup\n\n\n')


    def gen_tcl_connect_clk_rst(self):
        
        with open(self.tcl_fn, 'a') as file:
            for i in range(self.n_stage):
                n_nodes = self.n_port // self.type_list[i]
                for j in range(n_nodes):
                    if not (i==0 and j==0):
                        cmd_clk = 'connect_bd_net [get_bd_ports clk] [get_bd_pins '+ self.pfx_list[i] +'_'+str(j)+'/clk]\n'
                        cmd_rst = 'connect_bd_net [get_bd_ports rst_n] [get_bd_pins '+ self.pfx_list[i] +'_'+str(j)+'/rst_n]\n'
                        file.write(cmd_clk)
                        file.write(cmd_rst)
                
                file.write('\n')


    def gen_tcl_connect_consec_stages(self, stageIdx):
        
        ''' Connect pins between stage stageIdx and stageIdx+1 '''
        # list of [(srcSwId, srcPortId), (dstSwId, dstPortId)] lists
        pin_pairs = self.dict_connect_pin_pairs[(stageIdx, stageIdx+1)]

        # ovld to ivld
        with open(self.tcl_fn, 'a') as file:
            file.write('startgroup\n')
            for pair in pin_pairs:
                src_pin = pair[0] # srcSwId: src_pin[0]; srcPortId: src_pin[1]
                dst_pin = pair[1] # dstSwId: dst_pin[0]; dstPortId: dst_pin[1]

                cmd = 'connect_bd_net [get_bd_pins '+self.pfx_list[stageIdx]+'_'+str(src_pin[0])+'/ovld_'+chr(ord('a')+src_pin[1])+'] ' \
				'[get_bd_pins '+self.pfx_list[stageIdx+1]+'_'+str(dst_pin[0])+'/ivld_'+chr(ord('a')+dst_pin[1])+']\n'
                file.write(cmd)

            file.write('\n')

        # dout to din
        with open(self.tcl_fn, 'a') as file:
            for pair in pin_pairs:
                src_pin = pair[0] # srcSwId: src_pin[0]; srcPortId: src_pin[1]
                dst_pin = pair[1] # dstSwId: dst_pin[0]; dstPortId: dst_pin[1]

                cmd = 'connect_bd_net [get_bd_pins '+self.pfx_list[stageIdx]+'_'+str(src_pin[0])+'/dout_'+chr(ord('a')+src_pin[1])+'] ' \
				'[get_bd_pins '+self.pfx_list[stageIdx+1]+'_'+str(dst_pin[0])+'/din_'+chr(ord('a')+dst_pin[1])+']\n'
                file.write(cmd)

            file.write('\n')

        # ofw_input to ofw_output
        with open(self.tcl_fn, 'a') as file:
            for pair in pin_pairs:
                src_pin = pair[0] # srcSwId: src_pin[0]; srcPortId: src_pin[1]
                dst_pin = pair[1] # dstSwId: dst_pin[0]; dstPortId: dst_pin[1]

                cmd = 'connect_bd_net [get_bd_pins '+self.pfx_list[stageIdx]+'_'+str(src_pin[0])+'/ofw_output_'+chr(ord('a')+src_pin[1])+'] ' \
				'[get_bd_pins '+self.pfx_list[stageIdx+1]+'_'+str(dst_pin[0])+'/ofw_input_'+chr(ord('a')+dst_pin[1])+']\n'
                file.write(cmd)

            file.write('\n')
            file.write('endgroup\n\n')


def packButterfly(sysConfig, typeList, tclFn, fn):
    nIO = sysConfig["ParallelSetting"]["N_Net_IO"]
    pktWidth  = sysConfig["ParallelSetting"]["W_Net_Packet"]
    
    projName = "network" +str(nIO)+ "x" +str(nIO)+ "_" +sysConfig["AppPrefix"]+ "_v" +str(sysConfig["AppVersion"])
    projPath = sysConfig["RepoPath"]["AppRootDir"] + "/GEN_IP/" + projName
    bdName = "net" +str(nIO)+ "x" +str(nIO)+ "_" +sysConfig["AppPrefix"]+ "_v" +str(sysConfig["AppVersion"])

    with open(fn, 'w') as tclFile:

        tclFile.write('puts "*** Phase 1: Generating Butterfly Network ***\\n"\n')
        # create project & block design    
        if (sysConfig["Board"] == "U280"):
            tclFile.write("create_project -force " + projName + " " + projPath + " -part xcu280-fsvh2892-2L-e\n")
        else:
            print("** For board other than U280, please modify **")
            sys.exit(0)
        tclFile.write('create_bd_design "' + bdName + '"\n')

        tclFile.write("set_property  ip_repo_paths  " + sysConfig["RepoPath"]["InfrasIPDir"] + " [current_project]\n")
        tclFile.write("update_ip_catalog\n")

        # export switch IP instances
        for idx in range(sysConfig["ParallelSetting"]["N_Net_Stage"]):
            # process per stage
            impl = sysConfig["ParallelSetting"]["Impl_Sw_"+str(idx)]
            
            if typeList[idx] == 2:
                instPfxName = "Sw2X2_FIFO"
            elif typeList[idx] == 4:
                instPfxName = "Sw4X4_FIFO"

            if pktWidth > 32:
                if impl == "BRAM36":
                    fullTH = 512 - 4*(idx+1)
                    instPfxName += "36_W"
                elif impl == "LUT":
                    fullTH = max(32-4*(idx+1), 24)
                    instPfxName += "_LUT_W"
            else:
                if impl == "BRAM36":
                    fullTH = 512 - 4*(idx+1)
                    instPfxName += "36"
                elif impl == "BRAM18":
                    fullTH = 512 - 4*(idx+1)
                    instPfxName += "18"
                elif impl == "LUT":
                    fullTH = max(32-4*(idx+1), 24)
                    instPfxName += "_LUT"

            instName = instPfxName + "_" + str(idx) + "_0"
            tclFile.write("create_bd_cell -type ip -vlnv user.org:user:" +instPfxName+ ":1.0 " +instName+ "\n")
            
            routBit = sysConfig["ParallelSetting"]["Rout_Bit_"+str(idx)]
            if typeList[idx] == 2:
                tclFile.write("set_property -dict [list CONFIG.ROUTING_BIT {" + str(routBit) + \
                              "} CONFIG.FIFO_FULL_TH {" +str(fullTH)+ "}] [get_bd_cells " +instName+ "]\n")
            elif typeList[idx] == 4:
                tclFile.write("set_property -dict [list CONFIG.ROUTING_HBIT {" + str(routBit) + \
                              "} CONFIG.FIFO_FULL_TH {" +str(fullTH)+ "}] [get_bd_cells " +instName+ "]\n")

            # copy instances
            for _ in range(nIO//typeList[idx] - 1):
                tclFile.write("copy_bd_objs /  [get_bd_cells {" + instName + "}]\n")

        # assemble instances and package
        tclFile.write("\nsource " + tclFn + " -notrace\n")
        tclFile.write("make_wrapper -files [get_files " + projPath + \
                      "/" + projName + ".srcs/sources_1/bd/" +bdName+ "/" +bdName+ ".bd] -top\n")
        tclFile.write("add_files -norecurse " +projPath+ "/" +projName+ ".gen/sources_1/bd/" + \
                      bdName+ "/hdl/" +bdName+ "_wrapper.v\n")

        tclFile.write("ipx::package_project -root_dir " + projPath + " -vendor user.org -library user -taxonomy /UserIP\n")

        # close project
        tclFile.write("close_project\n")


def autoButterflyNet(sysConfig, fn):
    nStages = sysConfig["ParallelSetting"]["N_Net_Stage"]
    nIO = sysConfig["ParallelSetting"]["N_Net_IO"]

    typeList = []
    pfxList = []
    for i in range(nStages):
        typ = sysConfig["ParallelSetting"]["Type_Sw_"+str(i)]
        typeList.append(typ)

        pfx = "Sw" +str(typ)+ "X" +str(typ)+ "_FIFO"
        impl = sysConfig["ParallelSetting"]["Impl_Sw_"+str(i)]
        
        if impl == "BRAM18":
            pfx += "18_"
        elif impl == "BRAM36":
            pfx += "36_"
        elif impl == "LUT":
            pfx += "_LUT_"

        if sysConfig["ParallelSetting"]["W_Net_Packet"] > 32:
            assert impl=="BRAM36" or impl=="LUT", "GraFlex Error: Illegal <implementation> for wide switch: "+impl
            pfx += "_W_"
        
        pfx += str(i)
        pfxList.append(pfx)

    # verify args' legality
    assert nStages == len(typeList), "GraFlex Error: network <#stages> does not match switch nodes type list"
    if pfxList is not None:
        assert nStages == len(pfxList), "GraFlex Error: network <#stages> does not match switch nodes prefix name list"

    for _ in typeList:
        assert _ == 2 or _ == 4, "GraFlex Error: Invalid value found in switch nodes type list, allowed values are 2 or 4"

    # check type_list & n_port
    product = math.prod(typeList)
    assert nIO == product, "GraFlex Error: <#I/O ports> derived from type_list does not match input n_port: "+str(product)
    assert nIO <= 256, "GraFlex Error: Network <n_port> should be no greater than 256: "+str(nIO)

    tclFn = "net_" +str(nIO)+ "x" +str(nIO)+ "_" +sysConfig["AppPrefix"]+ "_v" +str(sysConfig["AppVersion"])+ ".tcl"
    tclFn = os.path.join(sysConfig["RepoPath"]["AppRootDir"], "autoTcl", tclFn)

    bfNet = ButterflyNet(
        n_stage = nStages,
        n_port = nIO,
        type_list = typeList,
        pfx_list = pfxList,
        tcl_fn = tclFn
    )
    # generate butterfly bd automation tcl
    bfNet.gen_bufferfly_tcl() 
    packButterfly(sysConfig, typeList, tclFn, fn)

