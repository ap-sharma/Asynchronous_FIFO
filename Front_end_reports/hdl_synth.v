
// Generated by Cadence Genus(TM) Synthesis Solution 21.10-p002_1
// Generated on: Aug 17 2023 19:06:56 IST (Aug 17 2023 13:36:56 UTC)

// Verification Directory fv/async_fifo 

module async_fifo(winc, wrstn, rinc, rrstn, rclk, wclk, wdata, rdata,
     wfull, rempty);
  input winc, wrstn, rinc, rrstn, rclk, wclk;
  input [7:0] wdata;
  output [7:0] rdata;
  output wfull, rempty;
  wire winc, wrstn, rinc, rrstn, rclk, wclk;
  wire [7:0] wdata;
  wire [7:0] rdata;
  wire wfull, rempty;
  wire [3:0] wq2_rptr;
  wire [3:0] rq2_wptr;
  wire [3:0] sync_r2w_wq1_rptr;
  wire [3:0] sync_w2r_rq1_wptr;
  wire [3:0] rptr;
  wire [3:0] wptr;
  wire [7:0] \fifo_mem_fifo_mem[0] ;
  wire [7:0] \fifo_mem_fifo_mem[3] ;
  wire [7:0] \fifo_mem_fifo_mem[2] ;
  wire [7:0] \fifo_mem_fifo_mem[5] ;
  wire [7:0] \fifo_mem_fifo_mem[7] ;
  wire [7:0] \fifo_mem_fifo_mem[1] ;
  wire [7:0] \fifo_mem_fifo_mem[6] ;
  wire [7:0] \fifo_mem_fifo_mem[4] ;
  wire [2:0] waddr;
  wire [2:0] raddr;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_17, n_18, n_19, n_20, n_21, n_22, n_23, n_24;
  wire n_25, n_26, n_27, n_28, n_29, n_30, n_31, n_32;
  wire n_33, n_34, n_35, n_36, n_37, n_38, n_39, n_40;
  wire n_41, n_42, n_43, n_44, n_45, n_46, n_47, n_48;
  wire n_49, n_50, n_51, n_52, n_53, n_54, n_55, n_56;
  wire n_57, n_58, n_59, n_60, n_61, n_62, n_63, n_64;
  wire n_65, n_66, n_68, n_69, n_77, n_78, n_79, n_80;
  wire n_81, n_82, n_83, n_84, n_85, n_86, n_87, n_88;
  wire n_90, n_91, n_92, n_93, n_94, n_95, n_96, n_97;
  wire n_98, n_99, n_101, n_102, n_103, n_104, n_106, n_107;
  wire n_108, n_115, n_116;
  DFFRHQX1 wptr_full_wfull_reg(.RN (wrstn), .CK (wclk), .D (n_108), .Q
       (wfull));
  DFFSHQX1 rptr_empty_rempty_reg(.SN (rrstn), .CK (rclk), .D (n_107),
       .Q (rempty));
  NOR4X1 g2537__2398(.A (n_93), .B (n_101), .C (n_103), .D (n_106), .Y
       (n_108));
  NOR4X1 g2542__5107(.A (n_102), .B (n_97), .C (n_104), .D (n_115), .Y
       (n_107));
  XNOR2X1 g2538__6260(.A (wq2_rptr[2]), .B (n_98), .Y (n_106));
  XNOR2X1 g2550__8428(.A (rq2_wptr[1]), .B (n_90), .Y (n_104));
  XNOR2X1 g2541__5526(.A (wq2_rptr[1]), .B (n_94), .Y (n_103));
  DFFRHQX1 \sync_r2w_wq2_rptr_reg[2] (.RN (wrstn), .CK (wclk), .D
       (sync_r2w_wq1_rptr[2]), .Q (wq2_rptr[2]));
  XNOR2X1 g2559__6783(.A (rq2_wptr[0]), .B (n_68), .Y (n_102));
  DFFRHQX1 \sync_w2r_rq2_wptr_reg[2] (.RN (rrstn), .CK (rclk), .D
       (sync_w2r_rq1_wptr[2]), .Q (rq2_wptr[2]));
  DFFRHQX1 \sync_w2r_rq2_wptr_reg[1] (.RN (rrstn), .CK (rclk), .D
       (sync_w2r_rq1_wptr[1]), .Q (rq2_wptr[1]));
  XNOR2X1 g2551__3680(.A (wq2_rptr[0]), .B (n_86), .Y (n_101));
  DFFRHQX1 \sync_r2w_wq1_rptr_reg[2] (.RN (wrstn), .CK (wclk), .D
       (rptr[2]), .Q (sync_r2w_wq1_rptr[2]));
  DFFRHQX1 \sync_r2w_wq2_rptr_reg[1] (.RN (wrstn), .CK (wclk), .D
       (sync_r2w_wq1_rptr[1]), .Q (wq2_rptr[1]));
  DFFRHQX1 \sync_w2r_rq2_wptr_reg[0] (.RN (rrstn), .CK (rclk), .D
       (sync_w2r_rq1_wptr[0]), .Q (rq2_wptr[0]));
  DFFRHQX1 \sync_w2r_rq1_wptr_reg[1] (.RN (rrstn), .CK (rclk), .D
       (wptr[1]), .Q (sync_w2r_rq1_wptr[1]));
  DFFRHQX1 \sync_w2r_rq1_wptr_reg[2] (.RN (rrstn), .CK (rclk), .D
       (wptr[2]), .Q (sync_w2r_rq1_wptr[2]));
  DFFRHQX1 \sync_r2w_wq2_rptr_reg[0] (.RN (wrstn), .CK (wclk), .D
       (sync_r2w_wq1_rptr[0]), .Q (wq2_rptr[0]));
  DFFRHQX1 \rptr_empty_rptr_reg[2] (.RN (rrstn), .CK (rclk), .D (n_99),
       .Q (rptr[2]));
  DFFRHQX1 \sync_r2w_wq1_rptr_reg[1] (.RN (wrstn), .CK (wclk), .D
       (rptr[1]), .Q (sync_r2w_wq1_rptr[1]));
  DFFRHQX1 \sync_w2r_rq1_wptr_reg[0] (.RN (rrstn), .CK (rclk), .D
       (wptr[0]), .Q (sync_w2r_rq1_wptr[0]));
  DFFRHQX1 \wptr_full_wptr_reg[2] (.RN (wrstn), .CK (wclk), .D (n_98),
       .Q (wptr[2]));
  DFFRHQX1 \wptr_full_wptr_reg[1] (.RN (wrstn), .CK (wclk), .D (n_95),
       .Q (wptr[1]));
  DFFRHQX1 \rptr_empty_rptr_reg[1] (.RN (rrstn), .CK (rclk), .D (n_91),
       .Q (rptr[1]));
  XNOR2X1 g2548__1617(.A (rq2_wptr[3]), .B (n_96), .Y (n_97));
  DFFRHQX1 \sync_r2w_wq1_rptr_reg[0] (.RN (wrstn), .CK (wclk), .D
       (rptr[0]), .Q (sync_r2w_wq1_rptr[0]));
  XNOR2X1 g2552__2802(.A (n_83), .B (n_96), .Y (n_99));
  DFFRHQX1 \wptr_full_wptr_reg[0] (.RN (wrstn), .CK (wclk), .D (n_87),
       .Q (wptr[0]));
  INVX1 g2634(.A (n_94), .Y (n_95));
  XNOR2X1 g2635__1705(.A (wq2_rptr[3]), .B (n_92), .Y (n_93));
  XNOR2X1 g2636__5122(.A (n_88), .B (n_92), .Y (n_98));
  DFFRHQX1 \rptr_empty_rptr_reg[0] (.RN (rrstn), .CK (rclk), .D (n_69),
       .Q (rptr[0]));
  INVX1 g2558(.A (n_90), .Y (n_91));
  SDFFQX1 \fifo_mem_fifo_mem_reg[0][5] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[0] [5]), .SI (wdata[5]), .SE (n_116), .Q
       (\fifo_mem_fifo_mem[0] [5]));
  DFFRHQX1 \rptr_empty_rbin_reg[3] (.RN (rrstn), .CK (rclk), .D (n_85),
       .Q (rptr[3]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[0][0] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[0] [0]), .SI (wdata[0]), .SE (n_116), .Q
       (\fifo_mem_fifo_mem[0] [0]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[0][3] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[0] [3]), .SI (wdata[3]), .SE (n_116), .Q
       (\fifo_mem_fifo_mem[0] [3]));
  XNOR2X1 g2637__8246(.A (n_65), .B (n_88), .Y (n_94));
  SDFFQX1 \fifo_mem_fifo_mem_reg[0][6] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[0] [6]), .SI (wdata[6]), .SE (n_116), .Q
       (\fifo_mem_fifo_mem[0] [6]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[0][7] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[0] [7]), .SI (wdata[7]), .SE (n_116), .Q
       (\fifo_mem_fifo_mem[0] [7]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[0][1] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[0] [1]), .SI (wdata[1]), .SE (n_116), .Q
       (\fifo_mem_fifo_mem[0] [1]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[0][2] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[0] [2]), .SI (wdata[2]), .SE (n_116), .Q
       (\fifo_mem_fifo_mem[0] [2]));
  DFFRHQX1 \wptr_full_wbin_reg[3] (.RN (wrstn), .CK (wclk), .D (n_92),
       .Q (wptr[3]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[0][4] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[0] [4]), .SI (wdata[4]), .SE (n_116), .Q
       (\fifo_mem_fifo_mem[0] [4]));
  INVX1 g2647(.A (n_86), .Y (n_87));
  INVX1 g2555(.A (n_85), .Y (n_96));
  SDFFQX1 \fifo_mem_fifo_mem_reg[3][6] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[3] [6]), .SI (wdata[6]), .SE (n_82), .Q
       (\fifo_mem_fifo_mem[3] [6]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[2][6] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[2] [6]), .SI (wdata[6]), .SE (n_84), .Q
       (\fifo_mem_fifo_mem[2] [6]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[2][2] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[2] [2]), .SI (wdata[2]), .SE (n_84), .Q
       (\fifo_mem_fifo_mem[2] [2]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[5][0] (.CK (wclk), .D (wdata[0]), .SI
       (\fifo_mem_fifo_mem[5] [0]), .SE (n_80), .Q
       (\fifo_mem_fifo_mem[5] [0]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[7][2] (.CK (wclk), .D (wdata[2]), .SI
       (\fifo_mem_fifo_mem[7] [2]), .SE (n_79), .Q
       (\fifo_mem_fifo_mem[7] [2]));
  XNOR2X1 g2560__7098(.A (n_64), .B (n_83), .Y (n_90));
  SDFFQX1 \fifo_mem_fifo_mem_reg[1][6] (.CK (wclk), .D (wdata[6]), .SI
       (\fifo_mem_fifo_mem[1] [6]), .SE (n_78), .Q
       (\fifo_mem_fifo_mem[1] [6]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[3][1] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[3] [1]), .SI (wdata[1]), .SE (n_82), .Q
       (\fifo_mem_fifo_mem[3] [1]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[6][7] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[6] [7]), .SI (wdata[7]), .SE (n_81), .Q
       (\fifo_mem_fifo_mem[6] [7]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[6][4] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[6] [4]), .SI (wdata[4]), .SE (n_81), .Q
       (\fifo_mem_fifo_mem[6] [4]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[5][4] (.CK (wclk), .D (wdata[4]), .SI
       (\fifo_mem_fifo_mem[5] [4]), .SE (n_80), .Q
       (\fifo_mem_fifo_mem[5] [4]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[4][4] (.CK (wclk), .D (wdata[4]), .SI
       (\fifo_mem_fifo_mem[4] [4]), .SE (n_77), .Q
       (\fifo_mem_fifo_mem[4] [4]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[7][4] (.CK (wclk), .D (wdata[4]), .SI
       (\fifo_mem_fifo_mem[7] [4]), .SE (n_79), .Q
       (\fifo_mem_fifo_mem[7] [4]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[3][2] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[3] [2]), .SI (wdata[2]), .SE (n_82), .Q
       (\fifo_mem_fifo_mem[3] [2]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[3][3] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[3] [3]), .SI (wdata[3]), .SE (n_82), .Q
       (\fifo_mem_fifo_mem[3] [3]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[3][4] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[3] [4]), .SI (wdata[4]), .SE (n_82), .Q
       (\fifo_mem_fifo_mem[3] [4]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[3][5] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[3] [5]), .SI (wdata[5]), .SE (n_82), .Q
       (\fifo_mem_fifo_mem[3] [5]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[3][7] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[3] [7]), .SI (wdata[7]), .SE (n_82), .Q
       (\fifo_mem_fifo_mem[3] [7]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[3][0] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[3] [0]), .SI (wdata[0]), .SE (n_82), .Q
       (\fifo_mem_fifo_mem[3] [0]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[1][2] (.CK (wclk), .D (wdata[2]), .SI
       (\fifo_mem_fifo_mem[1] [2]), .SE (n_78), .Q
       (\fifo_mem_fifo_mem[1] [2]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[1][1] (.CK (wclk), .D (wdata[1]), .SI
       (\fifo_mem_fifo_mem[1] [1]), .SE (n_78), .Q
       (\fifo_mem_fifo_mem[1] [1]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[1][3] (.CK (wclk), .D (wdata[3]), .SI
       (\fifo_mem_fifo_mem[1] [3]), .SE (n_78), .Q
       (\fifo_mem_fifo_mem[1] [3]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[1][4] (.CK (wclk), .D (wdata[4]), .SI
       (\fifo_mem_fifo_mem[1] [4]), .SE (n_78), .Q
       (\fifo_mem_fifo_mem[1] [4]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[1][5] (.CK (wclk), .D (wdata[5]), .SI
       (\fifo_mem_fifo_mem[1] [5]), .SE (n_78), .Q
       (\fifo_mem_fifo_mem[1] [5]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[1][7] (.CK (wclk), .D (wdata[7]), .SI
       (\fifo_mem_fifo_mem[1] [7]), .SE (n_78), .Q
       (\fifo_mem_fifo_mem[1] [7]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[2][0] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[2] [0]), .SI (wdata[0]), .SE (n_84), .Q
       (\fifo_mem_fifo_mem[2] [0]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[2][1] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[2] [1]), .SI (wdata[1]), .SE (n_84), .Q
       (\fifo_mem_fifo_mem[2] [1]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[7][7] (.CK (wclk), .D (wdata[7]), .SI
       (\fifo_mem_fifo_mem[7] [7]), .SE (n_79), .Q
       (\fifo_mem_fifo_mem[7] [7]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[2][4] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[2] [4]), .SI (wdata[4]), .SE (n_84), .Q
       (\fifo_mem_fifo_mem[2] [4]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[2][5] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[2] [5]), .SI (wdata[5]), .SE (n_84), .Q
       (\fifo_mem_fifo_mem[2] [5]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[2][7] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[2] [7]), .SI (wdata[7]), .SE (n_84), .Q
       (\fifo_mem_fifo_mem[2] [7]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[1][0] (.CK (wclk), .D (wdata[0]), .SI
       (\fifo_mem_fifo_mem[1] [0]), .SE (n_78), .Q
       (\fifo_mem_fifo_mem[1] [0]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[4][0] (.CK (wclk), .D (wdata[0]), .SI
       (\fifo_mem_fifo_mem[4] [0]), .SE (n_77), .Q
       (\fifo_mem_fifo_mem[4] [0]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[4][1] (.CK (wclk), .D (wdata[1]), .SI
       (\fifo_mem_fifo_mem[4] [1]), .SE (n_77), .Q
       (\fifo_mem_fifo_mem[4] [1]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[4][2] (.CK (wclk), .D (wdata[2]), .SI
       (\fifo_mem_fifo_mem[4] [2]), .SE (n_77), .Q
       (\fifo_mem_fifo_mem[4] [2]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[4][3] (.CK (wclk), .D (wdata[3]), .SI
       (\fifo_mem_fifo_mem[4] [3]), .SE (n_77), .Q
       (\fifo_mem_fifo_mem[4] [3]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[4][5] (.CK (wclk), .D (wdata[5]), .SI
       (\fifo_mem_fifo_mem[4] [5]), .SE (n_77), .Q
       (\fifo_mem_fifo_mem[4] [5]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[4][6] (.CK (wclk), .D (wdata[6]), .SI
       (\fifo_mem_fifo_mem[4] [6]), .SE (n_77), .Q
       (\fifo_mem_fifo_mem[4] [6]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[4][7] (.CK (wclk), .D (wdata[7]), .SI
       (\fifo_mem_fifo_mem[4] [7]), .SE (n_77), .Q
       (\fifo_mem_fifo_mem[4] [7]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[5][1] (.CK (wclk), .D (wdata[1]), .SI
       (\fifo_mem_fifo_mem[5] [1]), .SE (n_80), .Q
       (\fifo_mem_fifo_mem[5] [1]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[5][2] (.CK (wclk), .D (wdata[2]), .SI
       (\fifo_mem_fifo_mem[5] [2]), .SE (n_80), .Q
       (\fifo_mem_fifo_mem[5] [2]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[5][3] (.CK (wclk), .D (wdata[3]), .SI
       (\fifo_mem_fifo_mem[5] [3]), .SE (n_80), .Q
       (\fifo_mem_fifo_mem[5] [3]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[5][6] (.CK (wclk), .D (wdata[6]), .SI
       (\fifo_mem_fifo_mem[5] [6]), .SE (n_80), .Q
       (\fifo_mem_fifo_mem[5] [6]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[5][7] (.CK (wclk), .D (wdata[7]), .SI
       (\fifo_mem_fifo_mem[5] [7]), .SE (n_80), .Q
       (\fifo_mem_fifo_mem[5] [7]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[6][0] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[6] [0]), .SI (wdata[0]), .SE (n_81), .Q
       (\fifo_mem_fifo_mem[6] [0]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[6][1] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[6] [1]), .SI (wdata[1]), .SE (n_81), .Q
       (\fifo_mem_fifo_mem[6] [1]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[6][2] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[6] [2]), .SI (wdata[2]), .SE (n_81), .Q
       (\fifo_mem_fifo_mem[6] [2]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[6][3] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[6] [3]), .SI (wdata[3]), .SE (n_81), .Q
       (\fifo_mem_fifo_mem[6] [3]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[6][5] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[6] [5]), .SI (wdata[5]), .SE (n_81), .Q
       (\fifo_mem_fifo_mem[6] [5]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[6][6] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[6] [6]), .SI (wdata[6]), .SE (n_81), .Q
       (\fifo_mem_fifo_mem[6] [6]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[5][5] (.CK (wclk), .D (wdata[5]), .SI
       (\fifo_mem_fifo_mem[5] [5]), .SE (n_80), .Q
       (\fifo_mem_fifo_mem[5] [5]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[7][6] (.CK (wclk), .D (wdata[6]), .SI
       (\fifo_mem_fifo_mem[7] [6]), .SE (n_79), .Q
       (\fifo_mem_fifo_mem[7] [6]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[7][5] (.CK (wclk), .D (wdata[5]), .SI
       (\fifo_mem_fifo_mem[7] [5]), .SE (n_79), .Q
       (\fifo_mem_fifo_mem[7] [5]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[7][0] (.CK (wclk), .D (wdata[0]), .SI
       (\fifo_mem_fifo_mem[7] [0]), .SE (n_79), .Q
       (\fifo_mem_fifo_mem[7] [0]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[7][1] (.CK (wclk), .D (wdata[1]), .SI
       (\fifo_mem_fifo_mem[7] [1]), .SE (n_79), .Q
       (\fifo_mem_fifo_mem[7] [1]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[7][3] (.CK (wclk), .D (wdata[3]), .SI
       (\fifo_mem_fifo_mem[7] [3]), .SE (n_79), .Q
       (\fifo_mem_fifo_mem[7] [3]));
  SDFFQX1 \fifo_mem_fifo_mem_reg[2][3] (.CK (wclk), .D
       (\fifo_mem_fifo_mem[2] [3]), .SI (wdata[3]), .SE (n_84), .Q
       (\fifo_mem_fifo_mem[2] [3]));
  NAND4XL g2650__6131(.A (n_31), .B (n_57), .C (n_58), .D (n_36), .Y
       (rdata[1]));
  NAND4XL g2652__1881(.A (n_25), .B (n_62), .C (n_53), .D (n_34), .Y
       (rdata[6]));
  NAND4XL g2654__5115(.A (n_18), .B (n_61), .C (n_42), .D (n_17), .Y
       (rdata[5]));
  NAND4XL g2651__7482(.A (n_24), .B (n_46), .C (n_51), .D (n_19), .Y
       (rdata[4]));
  NAND4XL g2655__4733(.A (n_35), .B (n_43), .C (n_44), .D (n_21), .Y
       (rdata[3]));
  NAND4XL g2649__6161(.A (n_26), .B (n_41), .C (n_40), .D (n_12), .Y
       (rdata[2]));
  NAND4XL g2653__9315(.A (n_28), .B (n_56), .C (n_47), .D (n_22), .Y
       (rdata[7]));
  INVX1 g2599(.A (n_68), .Y (n_69));
  NAND4XL g2648__9945(.A (n_20), .B (n_52), .C (n_45), .D (n_27), .Y
       (rdata[0]));
  INVX1 g2658(.A (n_88), .Y (n_66));
  XNOR2X1 g2657__2883(.A (n_13), .B (n_65), .Y (n_86));
  XNOR2X1 g2557__2346(.A (rptr[3]), .B (n_50), .Y (n_85));
  XNOR2X1 g2664__1666(.A (n_79), .B (wptr[3]), .Y (n_92));
  DFFRHQX1 \wptr_full_wbin_reg[1] (.RN (wrstn), .CK (wclk), .D (n_63),
       .Q (waddr[1]));
  XNOR2X1 g2629__7410(.A (n_23), .B (n_64), .Y (n_68));
  AOI21X1 g2675__6417(.A0 (n_48), .A1 (waddr[2]), .B0 (n_82), .Y
       (n_88));
  XNOR2X1 g2630__5477(.A (raddr[2]), .B (n_49), .Y (n_83));
  INVX1 g2668(.A (n_65), .Y (n_63));
  DFFRHQX1 \wptr_full_wbin_reg[0] (.RN (wrstn), .CK (wclk), .D (n_14),
       .Q (waddr[0]));
  AOI22XL g2686__5107(.A0 (\fifo_mem_fifo_mem[4] [6]), .A1 (n_60), .B0
       (\fifo_mem_fifo_mem[5] [6]), .B1 (n_59), .Y (n_62));
  AOI22XL g2687__6260(.A0 (\fifo_mem_fifo_mem[4] [5]), .A1 (n_60), .B0
       (\fifo_mem_fifo_mem[5] [5]), .B1 (n_59), .Y (n_61));
  AOI22XL g2688__4319(.A0 (\fifo_mem_fifo_mem[4] [1]), .A1 (n_60), .B0
       (\fifo_mem_fifo_mem[5] [1]), .B1 (n_59), .Y (n_58));
  AOI22XL g2696__8428(.A0 (\fifo_mem_fifo_mem[2] [1]), .A1 (n_55), .B0
       (\fifo_mem_fifo_mem[3] [1]), .B1 (n_54), .Y (n_57));
  AOI22XL g2678__5526(.A0 (\fifo_mem_fifo_mem[2] [7]), .A1 (n_55), .B0
       (\fifo_mem_fifo_mem[3] [7]), .B1 (n_54), .Y (n_56));
  AOI22XL g2684__6783(.A0 (\fifo_mem_fifo_mem[2] [6]), .A1 (n_55), .B0
       (\fifo_mem_fifo_mem[3] [6]), .B1 (n_54), .Y (n_53));
  AOI22XL g2694__3680(.A0 (\fifo_mem_fifo_mem[2] [0]), .A1 (n_55), .B0
       (\fifo_mem_fifo_mem[3] [0]), .B1 (n_54), .Y (n_52));
  AOI22XL g2695__1617(.A0 (\fifo_mem_fifo_mem[2] [4]), .A1 (n_55), .B0
       (\fifo_mem_fifo_mem[3] [4]), .B1 (n_54), .Y (n_51));
  NAND2BX1 g2632__2802(.AN (n_49), .B (raddr[2]), .Y (n_50));
  AOI21X1 g2691__1705(.A0 (n_11), .A1 (waddr[1]), .B0 (n_39), .Y
       (n_65));
  NOR2X1 g2692__5122(.A (n_48), .B (waddr[2]), .Y (n_82));
  OR2X1 g2693__8246(.A (n_48), .B (n_38), .Y (n_79));
  AOI22XL g2699__7098(.A0 (\fifo_mem_fifo_mem[4] [7]), .A1 (n_60), .B0
       (\fifo_mem_fifo_mem[5] [7]), .B1 (n_59), .Y (n_47));
  AOI22XL g2700__6131(.A0 (\fifo_mem_fifo_mem[4] [4]), .A1 (n_60), .B0
       (\fifo_mem_fifo_mem[5] [4]), .B1 (n_59), .Y (n_46));
  AOI22XL g2702__1881(.A0 (\fifo_mem_fifo_mem[4] [0]), .A1 (n_60), .B0
       (\fifo_mem_fifo_mem[5] [0]), .B1 (n_59), .Y (n_45));
  AOI22XL g2705__5115(.A0 (\fifo_mem_fifo_mem[4] [3]), .A1 (n_60), .B0
       (\fifo_mem_fifo_mem[5] [3]), .B1 (n_59), .Y (n_44));
  AOI22XL g2710__7482(.A0 (\fifo_mem_fifo_mem[2] [3]), .A1 (n_55), .B0
       (\fifo_mem_fifo_mem[3] [3]), .B1 (n_54), .Y (n_43));
  AOI22XL g2711__4733(.A0 (\fifo_mem_fifo_mem[2] [5]), .A1 (n_55), .B0
       (\fifo_mem_fifo_mem[3] [5]), .B1 (n_54), .Y (n_42));
  AOI22XL g2681__6161(.A0 (\fifo_mem_fifo_mem[4] [2]), .A1 (n_60), .B0
       (\fifo_mem_fifo_mem[5] [2]), .B1 (n_59), .Y (n_41));
  AOI22XL g2677__9315(.A0 (\fifo_mem_fifo_mem[2] [2]), .A1 (n_55), .B0
       (\fifo_mem_fifo_mem[3] [2]), .B1 (n_54), .Y (n_40));
  NAND2X1 g2662__9945(.A (n_39), .B (waddr[2]), .Y (n_80));
  NAND2X1 g2667__2883(.A (n_15), .B (waddr[2]), .Y (n_77));
  NOR2X1 g2665__2346(.A (n_37), .B (n_38), .Y (n_81));
  NOR2X1 g2661__1666(.A (n_37), .B (waddr[2]), .Y (n_84));
  NAND2X1 g2660__7410(.A (n_39), .B (n_38), .Y (n_78));
  AOI22XL g2685__6417(.A0 (\fifo_mem_fifo_mem[0] [1]), .A1 (n_33), .B0
       (\fifo_mem_fifo_mem[1] [1]), .B1 (n_32), .Y (n_36));
  AOI22XL g2704__5477(.A0 (\fifo_mem_fifo_mem[6] [3]), .A1 (n_30), .B0
       (\fifo_mem_fifo_mem[7] [3]), .B1 (n_29), .Y (n_35));
  AOI22XL g2689__2398(.A0 (\fifo_mem_fifo_mem[0] [6]), .A1 (n_33), .B0
       (\fifo_mem_fifo_mem[1] [6]), .B1 (n_32), .Y (n_34));
  AOI22XL g2690__5107(.A0 (\fifo_mem_fifo_mem[6] [1]), .A1 (n_30), .B0
       (\fifo_mem_fifo_mem[7] [1]), .B1 (n_29), .Y (n_31));
  AOI22XL g2697__6260(.A0 (\fifo_mem_fifo_mem[6] [7]), .A1 (n_30), .B0
       (\fifo_mem_fifo_mem[7] [7]), .B1 (n_29), .Y (n_28));
  AOI22XL g2698__4319(.A0 (\fifo_mem_fifo_mem[0] [0]), .A1 (n_33), .B0
       (\fifo_mem_fifo_mem[1] [0]), .B1 (n_32), .Y (n_27));
  AOI22XL g2680__8428(.A0 (\fifo_mem_fifo_mem[6] [2]), .A1 (n_30), .B0
       (\fifo_mem_fifo_mem[7] [2]), .B1 (n_29), .Y (n_26));
  AOI22XL g2701__5526(.A0 (\fifo_mem_fifo_mem[6] [6]), .A1 (n_30), .B0
       (\fifo_mem_fifo_mem[7] [6]), .B1 (n_29), .Y (n_25));
  AOI22XL g2703__6783(.A0 (\fifo_mem_fifo_mem[6] [4]), .A1 (n_30), .B0
       (\fifo_mem_fifo_mem[7] [4]), .B1 (n_29), .Y (n_24));
  AOI22XL g2706__3680(.A0 (\fifo_mem_fifo_mem[0] [7]), .A1 (n_33), .B0
       (\fifo_mem_fifo_mem[1] [7]), .B1 (n_32), .Y (n_22));
  AOI22XL g2707__1617(.A0 (\fifo_mem_fifo_mem[0] [3]), .A1 (n_33), .B0
       (\fifo_mem_fifo_mem[1] [3]), .B1 (n_32), .Y (n_21));
  AOI22XL g2708__2802(.A0 (\fifo_mem_fifo_mem[6] [0]), .A1 (n_30), .B0
       (\fifo_mem_fifo_mem[7] [0]), .B1 (n_29), .Y (n_20));
  AOI22XL g2709__1705(.A0 (\fifo_mem_fifo_mem[0] [4]), .A1 (n_33), .B0
       (\fifo_mem_fifo_mem[1] [4]), .B1 (n_32), .Y (n_19));
  AOI22XL g2683__5122(.A0 (\fifo_mem_fifo_mem[6] [5]), .A1 (n_30), .B0
       (\fifo_mem_fifo_mem[7] [5]), .B1 (n_29), .Y (n_18));
  AOI22XL g2682__8246(.A0 (\fifo_mem_fifo_mem[0] [5]), .A1 (n_33), .B0
       (\fifo_mem_fifo_mem[1] [5]), .B1 (n_32), .Y (n_17));
  INVX1 g2676(.A (n_13), .Y (n_14));
  AOI22XL g2679__7098(.A0 (\fifo_mem_fifo_mem[0] [2]), .A1 (n_33), .B0
       (\fifo_mem_fifo_mem[1] [2]), .B1 (n_32), .Y (n_12));
  XNOR2X1 g2663__6131(.A (raddr[1]), .B (n_9), .Y (n_64));
  AOI21X1 g2714__1881(.A0 (n_5), .A1 (waddr[0]), .B0 (n_10), .Y (n_13));
  NOR2X1 g2713__5115(.A (n_11), .B (waddr[1]), .Y (n_39));
  NAND2BX1 g2712__7482(.AN (n_11), .B (waddr[1]), .Y (n_48));
  NAND2X1 g2669__4733(.A (n_10), .B (waddr[1]), .Y (n_37));
  NOR2BX1 g2673__6161(.AN (n_10), .B (waddr[1]), .Y (n_15));
  NAND2BX1 g2674__9315(.AN (n_9), .B (raddr[1]), .Y (n_49));
  XNOR2X1 g2715__9945(.A (raddr[0]), .B (n_4), .Y (n_23));
  NOR2XL g2724__2883(.A (raddr[0]), .B (n_7), .Y (n_55));
  NOR2XL g2725__2346(.A (n_8), .B (n_6), .Y (n_59));
  NOR2XL g2726__1666(.A (n_8), .B (n_7), .Y (n_54));
  NOR2XL g2727__7410(.A (raddr[0]), .B (n_6), .Y (n_60));
  DFFRHQX1 \sync_w2r_rq2_wptr_reg[3] (.RN (rrstn), .CK (rclk), .D
       (sync_w2r_rq1_wptr[3]), .Q (rq2_wptr[3]));
  DFFRHQX1 \sync_r2w_wq2_rptr_reg[3] (.RN (wrstn), .CK (wclk), .D
       (sync_r2w_wq1_rptr[3]), .Q (wq2_rptr[3]));
  NOR2X1 g2718__6417(.A (n_5), .B (waddr[0]), .Y (n_10));
  NOR2XL g2719__5477(.A (n_8), .B (n_3), .Y (n_29));
  OR2XL g2722__2398(.A (n_8), .B (n_4), .Y (n_9));
  NAND2BX1 g2723__5107(.AN (n_5), .B (waddr[0]), .Y (n_11));
  NOR2XL g2728__6260(.A (raddr[0]), .B (n_3), .Y (n_30));
  AND2X1 g2720__4319(.A (n_2), .B (raddr[0]), .Y (n_32));
  NOR2BX1 g2721__8428(.AN (n_2), .B (raddr[0]), .Y (n_33));
  NAND2XL g2733__5526(.A (raddr[1]), .B (n_1), .Y (n_7));
  NAND2XL g2735__6783(.A (raddr[2]), .B (n_0), .Y (n_6));
  DFFRHQX1 \sync_w2r_rq1_wptr_reg[3] (.RN (rrstn), .CK (rclk), .D
       (wptr[3]), .Q (sync_w2r_rq1_wptr[3]));
  DFFRHQX1 \sync_r2w_wq1_rptr_reg[3] (.RN (wrstn), .CK (wclk), .D
       (rptr[3]), .Q (sync_r2w_wq1_rptr[3]));
  NOR2XL g2731__3680(.A (raddr[1]), .B (raddr[2]), .Y (n_2));
  NAND2XL g2734__1617(.A (raddr[2]), .B (raddr[1]), .Y (n_3));
  NAND2BX1 g2732__2802(.AN (rempty), .B (rinc), .Y (n_4));
  NAND2BX1 g2736__1705(.AN (wfull), .B (winc), .Y (n_5));
  DFFRX1 \rptr_empty_rbin_reg[2] (.RN (rrstn), .CK (rclk), .D (n_83),
       .Q (raddr[2]), .QN (n_1));
  DFFRX1 \rptr_empty_rbin_reg[1] (.RN (rrstn), .CK (rclk), .D (n_64),
       .Q (raddr[1]), .QN (n_0));
  DFFRX1 \wptr_full_wbin_reg[2] (.RN (wrstn), .CK (wclk), .D (n_66), .Q
       (waddr[2]), .QN (n_38));
  DFFRX1 \rptr_empty_rbin_reg[0] (.RN (rrstn), .CK (rclk), .D (n_23),
       .Q (raddr[0]), .QN (n_8));
  XOR2XL g2(.A (rq2_wptr[2]), .B (n_99), .Y (n_115));
  NOR2BX1 g2845(.AN (n_15), .B (waddr[2]), .Y (n_116));
endmodule
