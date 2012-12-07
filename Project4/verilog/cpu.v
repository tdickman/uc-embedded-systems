//Legal Notice: (C)2007 Altera Corporation. All rights reserved.  Your
//use of Altera Corporation's design tools, logic functions and other
//software and tools, and its AMPP partner logic functions, and any
//output files any of the foregoing (including device programming or
//simulation files), and any associated documentation or information are
//expressly subject to the terms and conditions of the Altera Program
//License Subscription Agreement or other applicable license agreement,
//including, without limitation, that your use is for the sole purpose
//of programming logic devices manufactured by Altera and sold by Altera
//or its authorized distributors.  Please refer to the applicable
//agreement for further details.

// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_ic_data_module (
                            // inputs:
                             data,
                             rdaddress,
                             rdclken,
                             rdclock,
                             wraddress,
                             wrclock,
                             wren,

                            // outputs:
                             q
                          )
;

  parameter lpm_file = "UNUSED";


  output  [ 31: 0] q;
  input   [ 31: 0] data;
  input   [  9: 0] rdaddress;
  input            rdclken;
  input            rdclock;
  input   [  9: 0] wraddress;
  input            wrclock;
  input            wren;

  wire    [ 31: 0] q;
  wire    [ 31: 0] ram_q;
  wire             wrclken;
  assign wrclken = 1'b1;
  assign q = ram_q;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  altsyncram the_altsyncram
    (
      .address_a (wraddress),
      .address_b (rdaddress),
      .clock0 (wrclock),
      .clock1 (rdclock),
      .clocken0 (wrclken),
      .clocken1 (rdclken),
      .data_a (data),
      .q_b (ram_q),
      .wren_a (wren)
    );

  defparam the_altsyncram.address_reg_b = "CLOCK1",
           the_altsyncram.maximum_depth = 0,
           the_altsyncram.numwords_a = 1024,
           the_altsyncram.numwords_b = 1024,
           the_altsyncram.operation_mode = "DUAL_PORT",
           the_altsyncram.outdata_reg_b = "UNREGISTERED",
           the_altsyncram.ram_block_type = "AUTO",
           the_altsyncram.read_during_write_mode_mixed_ports = "DONT_CARE",
           the_altsyncram.width_a = 32,
           the_altsyncram.width_b = 32,
           the_altsyncram.widthad_a = 10,
           the_altsyncram.widthad_b = 10;


//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on
//synthesis read_comments_as_HDL on
//  altsyncram the_altsyncram
//    (
//      .address_a (wraddress),
//      .address_b (rdaddress),
//      .clock0 (wrclock),
//      .clock1 (rdclock),
//      .clocken0 (wrclken),
//      .clocken1 (rdclken),
//      .data_a (data),
//      .q_b (ram_q),
//      .wren_a (wren)
//    );
//
//  defparam the_altsyncram.address_reg_b = "CLOCK1",
//           the_altsyncram.maximum_depth = 0,
//           the_altsyncram.numwords_a = 1024,
//           the_altsyncram.numwords_b = 1024,
//           the_altsyncram.operation_mode = "DUAL_PORT",
//           the_altsyncram.outdata_reg_b = "UNREGISTERED",
//           the_altsyncram.ram_block_type = "AUTO",
//           the_altsyncram.read_during_write_mode_mixed_ports = "DONT_CARE",
//           the_altsyncram.width_a = 32,
//           the_altsyncram.width_b = 32,
//           the_altsyncram.widthad_a = 10,
//           the_altsyncram.widthad_b = 10;
//
//synthesis read_comments_as_HDL off

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_ic_tag_module (
                           // inputs:
                            data,
                            rdaddress,
                            rdclken,
                            rdclock,
                            wraddress,
                            wrclock,
                            wren,

                           // outputs:
                            q
                         )
;

  parameter lpm_file = "UNUSED";


  output  [ 23: 0] q;
  input   [ 23: 0] data;
  input   [  6: 0] rdaddress;
  input            rdclken;
  input            rdclock;
  input   [  6: 0] wraddress;
  input            wrclock;
  input            wren;

  wire    [ 23: 0] q;
  wire    [ 23: 0] ram_q;
  wire             wrclken;
  assign wrclken = 1'b1;
  assign q = ram_q;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  altsyncram the_altsyncram
    (
      .address_a (wraddress),
      .address_b (rdaddress),
      .clock0 (wrclock),
      .clock1 (rdclock),
      .clocken0 (wrclken),
      .clocken1 (rdclken),
      .data_a (data),
      .q_b (ram_q),
      .wren_a (wren)
    );

  defparam the_altsyncram.address_reg_b = "CLOCK1",
           the_altsyncram.init_file = lpm_file,
           the_altsyncram.maximum_depth = 0,
           the_altsyncram.numwords_a = 128,
           the_altsyncram.numwords_b = 128,
           the_altsyncram.operation_mode = "DUAL_PORT",
           the_altsyncram.outdata_reg_b = "UNREGISTERED",
           the_altsyncram.ram_block_type = "AUTO",
           the_altsyncram.read_during_write_mode_mixed_ports = "OLD_DATA",
           the_altsyncram.width_a = 24,
           the_altsyncram.width_b = 24,
           the_altsyncram.widthad_a = 7,
           the_altsyncram.widthad_b = 7;


//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on
//synthesis read_comments_as_HDL on
//  altsyncram the_altsyncram
//    (
//      .address_a (wraddress),
//      .address_b (rdaddress),
//      .clock0 (wrclock),
//      .clock1 (rdclock),
//      .clocken0 (wrclken),
//      .clocken1 (rdclken),
//      .data_a (data),
//      .q_b (ram_q),
//      .wren_a (wren)
//    );
//
//  defparam the_altsyncram.address_reg_b = "CLOCK1",
//           the_altsyncram.init_file = lpm_file,
//           the_altsyncram.maximum_depth = 0,
//           the_altsyncram.numwords_a = 128,
//           the_altsyncram.numwords_b = 128,
//           the_altsyncram.operation_mode = "DUAL_PORT",
//           the_altsyncram.outdata_reg_b = "UNREGISTERED",
//           the_altsyncram.ram_block_type = "AUTO",
//           the_altsyncram.read_during_write_mode_mixed_ports = "OLD_DATA",
//           the_altsyncram.width_a = 24,
//           the_altsyncram.width_b = 24,
//           the_altsyncram.widthad_a = 7,
//           the_altsyncram.widthad_b = 7;
//
//synthesis read_comments_as_HDL off

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_register_bank_a_module (
                                    // inputs:
                                     data,
                                     rdaddress,
                                     rdclken,
                                     rdclock,
                                     wraddress,
                                     wrclock,
                                     wren,

                                    // outputs:
                                     q
                                  )
;

  parameter lpm_file = "UNUSED";


  output  [ 31: 0] q;
  input   [ 31: 0] data;
  input   [  4: 0] rdaddress;
  input            rdclken;
  input            rdclock;
  input   [  4: 0] wraddress;
  input            wrclock;
  input            wren;

  wire    [ 31: 0] q;
  wire    [ 31: 0] ram_q;
  wire             wrclken;
  assign wrclken = 1'b1;
  assign q = ram_q;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  altsyncram the_altsyncram
    (
      .address_a (wraddress),
      .address_b (rdaddress),
      .clock0 (wrclock),
      .clock1 (rdclock),
      .clocken0 (wrclken),
      .clocken1 (rdclken),
      .data_a (data),
      .q_b (ram_q),
      .wren_a (wren)
    );

  defparam the_altsyncram.address_reg_b = "CLOCK1",
           the_altsyncram.init_file = lpm_file,
           the_altsyncram.maximum_depth = 0,
           the_altsyncram.numwords_a = 32,
           the_altsyncram.numwords_b = 32,
           the_altsyncram.operation_mode = "DUAL_PORT",
           the_altsyncram.outdata_reg_b = "UNREGISTERED",
           the_altsyncram.ram_block_type = "AUTO",
           the_altsyncram.read_during_write_mode_mixed_ports = "OLD_DATA",
           the_altsyncram.width_a = 32,
           the_altsyncram.width_b = 32,
           the_altsyncram.widthad_a = 5,
           the_altsyncram.widthad_b = 5;


//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on
//synthesis read_comments_as_HDL on
//  altsyncram the_altsyncram
//    (
//      .address_a (wraddress),
//      .address_b (rdaddress),
//      .clock0 (wrclock),
//      .clock1 (rdclock),
//      .clocken0 (wrclken),
//      .clocken1 (rdclken),
//      .data_a (data),
//      .q_b (ram_q),
//      .wren_a (wren)
//    );
//
//  defparam the_altsyncram.address_reg_b = "CLOCK1",
//           the_altsyncram.init_file = lpm_file,
//           the_altsyncram.maximum_depth = 0,
//           the_altsyncram.numwords_a = 32,
//           the_altsyncram.numwords_b = 32,
//           the_altsyncram.operation_mode = "DUAL_PORT",
//           the_altsyncram.outdata_reg_b = "UNREGISTERED",
//           the_altsyncram.ram_block_type = "AUTO",
//           the_altsyncram.read_during_write_mode_mixed_ports = "OLD_DATA",
//           the_altsyncram.width_a = 32,
//           the_altsyncram.width_b = 32,
//           the_altsyncram.widthad_a = 5,
//           the_altsyncram.widthad_b = 5;
//
//synthesis read_comments_as_HDL off

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_register_bank_b_module (
                                    // inputs:
                                     data,
                                     rdaddress,
                                     rdclken,
                                     rdclock,
                                     wraddress,
                                     wrclock,
                                     wren,

                                    // outputs:
                                     q
                                  )
;

  parameter lpm_file = "UNUSED";


  output  [ 31: 0] q;
  input   [ 31: 0] data;
  input   [  4: 0] rdaddress;
  input            rdclken;
  input            rdclock;
  input   [  4: 0] wraddress;
  input            wrclock;
  input            wren;

  wire    [ 31: 0] q;
  wire    [ 31: 0] ram_q;
  wire             wrclken;
  assign wrclken = 1'b1;
  assign q = ram_q;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  altsyncram the_altsyncram
    (
      .address_a (wraddress),
      .address_b (rdaddress),
      .clock0 (wrclock),
      .clock1 (rdclock),
      .clocken0 (wrclken),
      .clocken1 (rdclken),
      .data_a (data),
      .q_b (ram_q),
      .wren_a (wren)
    );

  defparam the_altsyncram.address_reg_b = "CLOCK1",
           the_altsyncram.init_file = lpm_file,
           the_altsyncram.maximum_depth = 0,
           the_altsyncram.numwords_a = 32,
           the_altsyncram.numwords_b = 32,
           the_altsyncram.operation_mode = "DUAL_PORT",
           the_altsyncram.outdata_reg_b = "UNREGISTERED",
           the_altsyncram.ram_block_type = "AUTO",
           the_altsyncram.read_during_write_mode_mixed_ports = "OLD_DATA",
           the_altsyncram.width_a = 32,
           the_altsyncram.width_b = 32,
           the_altsyncram.widthad_a = 5,
           the_altsyncram.widthad_b = 5;


//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on
//synthesis read_comments_as_HDL on
//  altsyncram the_altsyncram
//    (
//      .address_a (wraddress),
//      .address_b (rdaddress),
//      .clock0 (wrclock),
//      .clock1 (rdclock),
//      .clocken0 (wrclken),
//      .clocken1 (rdclken),
//      .data_a (data),
//      .q_b (ram_q),
//      .wren_a (wren)
//    );
//
//  defparam the_altsyncram.address_reg_b = "CLOCK1",
//           the_altsyncram.init_file = lpm_file,
//           the_altsyncram.maximum_depth = 0,
//           the_altsyncram.numwords_a = 32,
//           the_altsyncram.numwords_b = 32,
//           the_altsyncram.operation_mode = "DUAL_PORT",
//           the_altsyncram.outdata_reg_b = "UNREGISTERED",
//           the_altsyncram.ram_block_type = "AUTO",
//           the_altsyncram.read_during_write_mode_mixed_ports = "OLD_DATA",
//           the_altsyncram.width_a = 32,
//           the_altsyncram.width_b = 32,
//           the_altsyncram.widthad_a = 5,
//           the_altsyncram.widthad_b = 5;
//
//synthesis read_comments_as_HDL off

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_debug (
                             // inputs:
                              clk,
                              dbrk_break,
                              debugreq,
                              hbreak_enabled,
                              jdo,
                              jrst_n,
                              ocireg_ers,
                              ocireg_mrs,
                              reset,
                              st_ready_test_idle,
                              take_action_ocimem_a,
                              take_action_ocireg,
                              xbrk_break,

                             // outputs:
                              debugack,
                              monitor_error,
                              monitor_go,
                              monitor_ready,
                              oci_hbreak_req,
                              resetlatch,
                              resetrequest
                           )
;

  output           debugack;
  output           monitor_error;
  output           monitor_go;
  output           monitor_ready;
  output           oci_hbreak_req;
  output           resetlatch;
  output           resetrequest;
  input            clk;
  input            dbrk_break;
  input            debugreq;
  input            hbreak_enabled;
  input   [ 37: 0] jdo;
  input            jrst_n;
  input            ocireg_ers;
  input            ocireg_mrs;
  input            reset;
  input            st_ready_test_idle;
  input            take_action_ocimem_a;
  input            take_action_ocireg;
  input            xbrk_break;

  wire             debugack;
  reg              jtag_break /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg              monitor_error /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=D101"  */;
  reg              monitor_go /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=D101"  */;
  reg              monitor_ready /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=D101"  */;
  wire             oci_hbreak_req;
  reg              probepresent /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg              resetlatch /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg              resetrequest /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  always @(posedge clk or negedge jrst_n)
    begin
      if (jrst_n == 0)
        begin
          probepresent <= 1'b0;
          resetrequest <= 1'b0;
          jtag_break <= 1'b0;
        end
      else if (take_action_ocimem_a)
        begin
          resetrequest <= jdo[22];
          jtag_break <= jdo[21]     ? 1 
                    : jdo[20]  ? 0 
                    : jtag_break;

          probepresent <= jdo[19]     ? 1
                    : jdo[18]  ? 0
                    :  probepresent;

          resetlatch <= jdo[24] ? 0 : resetlatch;
        end
      else if (reset)
        begin
          jtag_break <= probepresent;
          resetlatch <= 1;
        end
      else if (~debugack & debugreq & probepresent)
          jtag_break <= 1'b1;
    end


  always @(posedge clk)
    begin
      if (take_action_ocimem_a)
        begin
          monitor_ready <= jdo[25] ? 1'b0 : monitor_ready;
          monitor_error <= jdo[25] ? 1'b0 : monitor_error;
          monitor_go <= jdo[23] ? 1'b1 : monitor_go;
        end
      else if (take_action_ocireg)
        begin
          monitor_ready <= ocireg_mrs ? 1'b1 : monitor_ready;
          monitor_error <= ocireg_ers ? 1'b1 : monitor_error;
        end
      else if (st_ready_test_idle)
          monitor_go <= 1'b0;
    end


  assign oci_hbreak_req = jtag_break | dbrk_break | xbrk_break | debugreq;
  assign debugack = ~hbreak_enabled;

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_ociram_lpm_dram_bdp_component_module (
                                                  // inputs:
                                                   address_a,
                                                   address_b,
                                                   byteena_a,
                                                   clock0,
                                                   clock1,
                                                   clocken0,
                                                   clocken1,
                                                   data_a,
                                                   data_b,
                                                   wren_a,
                                                   wren_b,

                                                  // outputs:
                                                   q_a,
                                                   q_b
                                                )
;

  parameter lpm_file = "UNUSED";


  output  [ 31: 0] q_a;
  output  [ 31: 0] q_b;
  input   [  7: 0] address_a;
  input   [  7: 0] address_b;
  input   [  3: 0] byteena_a;
  input            clock0;
  input            clock1;
  input            clocken0;
  input            clocken1;
  input   [ 31: 0] data_a;
  input   [ 31: 0] data_b;
  input            wren_a;
  input            wren_b;

  wire    [ 31: 0] q_a;
  wire    [ 31: 0] q_b;
  altsyncram the_altsyncram
    (
      .address_a (address_a),
      .address_b (address_b),
      .byteena_a (byteena_a),
      .clock0 (clock0),
      .clock1 (clock1),
      .clocken0 (clocken0),
      .clocken1 (clocken1),
      .data_a (data_a),
      .data_b (data_b),
      .q_a (q_a),
      .q_b (q_b),
      .wren_a (wren_a),
      .wren_b (wren_b)
    );

  defparam the_altsyncram.address_aclr_a = "NONE",
           the_altsyncram.address_aclr_b = "NONE",
           the_altsyncram.address_reg_b = "CLOCK1",
           the_altsyncram.indata_aclr_a = "NONE",
           the_altsyncram.indata_aclr_b = "NONE",
           the_altsyncram.init_file = lpm_file,
           the_altsyncram.intended_device_family = "Stratix",
           the_altsyncram.lpm_type = "altsyncram",
           the_altsyncram.numwords_a = 256,
           the_altsyncram.numwords_b = 256,
           the_altsyncram.operation_mode = "BIDIR_DUAL_PORT",
           the_altsyncram.outdata_aclr_a = "NONE",
           the_altsyncram.outdata_aclr_b = "NONE",
           the_altsyncram.outdata_reg_a = "UNREGISTERED",
           the_altsyncram.outdata_reg_b = "UNREGISTERED",
           the_altsyncram.ram_block_type = "AUTO",
           the_altsyncram.read_during_write_mode_mixed_ports = "OLD_DATA",
           the_altsyncram.width_a = 32,
           the_altsyncram.width_b = 32,
           the_altsyncram.width_byteena_a = 4,
           the_altsyncram.widthad_a = 8,
           the_altsyncram.widthad_b = 8,
           the_altsyncram.wrcontrol_aclr_a = "NONE",
           the_altsyncram.wrcontrol_aclr_b = "NONE";


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_ocimem (
                          // inputs:
                           address,
                           begintransfer,
                           byteenable,
                           chipselect,
                           clk,
                           debugaccess,
                           jdo,
                           jrst_n,
                           resetrequest,
                           take_action_ocimem_a,
                           take_action_ocimem_b,
                           take_no_action_ocimem_a,
                           write,
                           writedata,

                          // outputs:
                           MonDReg,
                           oci_ram_readdata
                        )
;

  output  [ 31: 0] MonDReg;
  output  [ 31: 0] oci_ram_readdata;
  input   [  8: 0] address;
  input            begintransfer;
  input   [  3: 0] byteenable;
  input            chipselect;
  input            clk;
  input            debugaccess;
  input   [ 37: 0] jdo;
  input            jrst_n;
  input            resetrequest;
  input            take_action_ocimem_a;
  input            take_action_ocimem_b;
  input            take_no_action_ocimem_a;
  input            write;
  input   [ 31: 0] writedata;

  reg     [ 10: 0] MonAReg /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,D103,R101\""  */;
  reg     [ 31: 0] MonDReg /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,D103,R101\""  */;
  reg              MonRd /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,D103,R101\""  */;
  reg              MonRd1 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,D103,R101\""  */;
  reg              MonWr /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,D103,R101\""  */;
  wire             avalon;
  wire    [ 31: 0] cfgdout;
  wire    [ 31: 0] oci_ram_readdata;
  wire    [ 31: 0] sramdout;
  assign avalon = begintransfer & ~resetrequest;
  always @(posedge clk or negedge jrst_n)
    begin
      if (jrst_n == 0)
        begin
          MonWr <= 1'b0;
          MonRd <= 1'b0;
          MonRd1 <= 1'b0;
          MonAReg <= 0;
          MonDReg <= 0;
        end
      else 
        begin
          if (take_no_action_ocimem_a)
            begin
              MonAReg[10 : 2] <= MonAReg[10 : 2]+1;
              MonRd <= 1'b1;
            end
          else if (take_action_ocimem_a)
            begin
              MonAReg[10 : 2] <= { jdo[17],
                            jdo[33 : 26] };

              MonRd <= 1'b1;
            end
          else if (take_action_ocimem_b)
            begin
              MonAReg[10 : 2] <= MonAReg[10 : 2]+1;
              MonDReg <= jdo[34 : 3];
              MonWr <= 1'b1;
            end
          else 
            begin
              if (~avalon)
                begin
                  MonWr <= 0;
                  MonRd <= 0;
                end
              if (MonRd1)
                  MonDReg <= MonAReg[10] ? cfgdout : sramdout;
            end
          MonRd1 <= MonRd;
        end
    end


//cpu_ociram_lpm_dram_bdp_component, which is an e_bdpram
cpu_ociram_lpm_dram_bdp_component_module cpu_ociram_lpm_dram_bdp_component
  (
    .address_a (address[7 : 0]),
    .address_b (MonAReg[9 : 2]),
    .byteena_a (byteenable),
    .clock0    (clk),
    .clock1    (clk),
    .clocken0  (1'b1),
    .clocken1  (1'b1),
    .data_a    (writedata),
    .data_b    (MonDReg[31 : 0]),
    .q_a       (oci_ram_readdata),
    .q_b       (sramdout),
    .wren_a    (chipselect & write & debugaccess & 
                       ~address[8] 
                       ),
    .wren_b    (MonWr)
  );

//synthesis translate_off
`ifdef NO_PLI
defparam cpu_ociram_lpm_dram_bdp_component.lpm_file = "cpu_ociram_default_contents.dat";
`else
defparam cpu_ociram_lpm_dram_bdp_component.lpm_file = "cpu_ociram_default_contents.hex";
`endif
//synthesis translate_on
//synthesis read_comments_as_HDL on
//defparam cpu_ociram_lpm_dram_bdp_component.lpm_file = "cpu_ociram_default_contents.mif";
//synthesis read_comments_as_HDL off
  assign cfgdout = (MonAReg[4 : 2] == 3'd0)? 32'h09000020 :
    (MonAReg[4 : 2] == 3'd1)? 32'h00001d1c :
    (MonAReg[4 : 2] == 3'd2)? 32'h00040000 :
    (MonAReg[4 : 2] == 3'd3)? 32'h00000000 :
    (MonAReg[4 : 2] == 3'd4)? 32'h2000000c :
    (MonAReg[4 : 2] == 3'd5)? 32'h09000000 :
    (MonAReg[4 : 2] == 3'd6)? 32'h00000000 :
    32'h00000000;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_avalon_reg (
                              // inputs:
                               address,
                               chipselect,
                               clk,
                               debugaccess,
                               monitor_error,
                               monitor_go,
                               monitor_ready,
                               reset_n,
                               write,
                               writedata,

                              // outputs:
                               oci_ienable,
                               oci_reg_readdata,
                               oci_single_step_mode,
                               ocireg_ers,
                               ocireg_mrs,
                               take_action_ocireg
                            )
;

  output  [ 31: 0] oci_ienable;
  output  [ 31: 0] oci_reg_readdata;
  output           oci_single_step_mode;
  output           ocireg_ers;
  output           ocireg_mrs;
  output           take_action_ocireg;
  input   [  8: 0] address;
  input            chipselect;
  input            clk;
  input            debugaccess;
  input            monitor_error;
  input            monitor_go;
  input            monitor_ready;
  input            reset_n;
  input            write;
  input   [ 31: 0] writedata;

  reg     [ 31: 0] oci_ienable;
  wire             oci_reg_00_addressed;
  wire             oci_reg_01_addressed;
  wire    [ 31: 0] oci_reg_readdata;
  reg              oci_single_step_mode;
  wire             ocireg_ers;
  wire             ocireg_mrs;
  wire             ocireg_sstep;
  wire             take_action_oci_intr_mask_reg;
  wire             take_action_ocireg;
  wire             write_strobe;
  assign oci_reg_00_addressed = address == 9'h100;
  assign oci_reg_01_addressed = address == 9'h101;
  assign write_strobe = chipselect & write & debugaccess;
  assign take_action_ocireg = write_strobe & oci_reg_00_addressed;
  assign take_action_oci_intr_mask_reg = write_strobe & oci_reg_01_addressed;
  assign ocireg_ers = writedata[1];
  assign ocireg_mrs = writedata[0];
  assign ocireg_sstep = writedata[3];
  assign oci_reg_readdata = oci_reg_00_addressed ? {28'b0, oci_single_step_mode, monitor_go,
    monitor_ready, monitor_error} : 
    oci_reg_01_addressed ?  oci_ienable :   
    32'b0;

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          oci_single_step_mode <= 1'b0;
      else if (take_action_ocireg)
          oci_single_step_mode <= ocireg_sstep;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          oci_ienable <= {32{1'b1}};
      else if (take_action_oci_intr_mask_reg)
          oci_ienable <= writedata | ~(32'b00000000000000000001110100000011);
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_break (
                             // inputs:
                              clk,
                              dbrk_break,
                              dbrk_goto0,
                              dbrk_goto1,
                              dbrk_hit0,
                              dbrk_hit1,
                              dbrk_hit2,
                              dbrk_hit3,
                              jdo,
                              jrst_n,
                              reset_n,
                              take_action_break_a,
                              take_action_break_b,
                              take_action_break_c,
                              take_no_action_break_a,
                              take_no_action_break_b,
                              take_no_action_break_c,
                              xbrk_goto0,
                              xbrk_goto1,

                             // outputs:
                              break_readreg,
                              dbrk0,
                              dbrk1,
                              dbrk2,
                              dbrk3,
                              dbrk_hit0_latch,
                              dbrk_hit1_latch,
                              dbrk_hit2_latch,
                              dbrk_hit3_latch,
                              trigbrktype,
                              trigger_state_0,
                              trigger_state_1,
                              xbrk0,
                              xbrk1,
                              xbrk2,
                              xbrk3,
                              xbrk_ctrl0,
                              xbrk_ctrl1,
                              xbrk_ctrl2,
                              xbrk_ctrl3
                           )
;

  output  [ 31: 0] break_readreg;
  output  [ 77: 0] dbrk0;
  output  [ 77: 0] dbrk1;
  output  [ 77: 0] dbrk2;
  output  [ 77: 0] dbrk3;
  output           dbrk_hit0_latch;
  output           dbrk_hit1_latch;
  output           dbrk_hit2_latch;
  output           dbrk_hit3_latch;
  output           trigbrktype;
  output           trigger_state_0;
  output           trigger_state_1;
  output  [ 27: 0] xbrk0;
  output  [ 27: 0] xbrk1;
  output  [ 27: 0] xbrk2;
  output  [ 27: 0] xbrk3;
  output  [  7: 0] xbrk_ctrl0;
  output  [  7: 0] xbrk_ctrl1;
  output  [  7: 0] xbrk_ctrl2;
  output  [  7: 0] xbrk_ctrl3;
  input            clk;
  input            dbrk_break;
  input            dbrk_goto0;
  input            dbrk_goto1;
  input            dbrk_hit0;
  input            dbrk_hit1;
  input            dbrk_hit2;
  input            dbrk_hit3;
  input   [ 37: 0] jdo;
  input            jrst_n;
  input            reset_n;
  input            take_action_break_a;
  input            take_action_break_b;
  input            take_action_break_c;
  input            take_no_action_break_a;
  input            take_no_action_break_b;
  input            take_no_action_break_c;
  input            xbrk_goto0;
  input            xbrk_goto1;

  wire    [  3: 0] break_a_wpr;
  wire    [  1: 0] break_a_wpr_high_bits;
  wire    [  1: 0] break_a_wpr_low_bits;
  wire    [  1: 0] break_b_rr;
  wire    [  1: 0] break_c_rr;
  reg     [ 31: 0] break_readreg /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg     [ 77: 0] dbrk0 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg     [ 77: 0] dbrk1 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg     [ 77: 0] dbrk2 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg     [ 77: 0] dbrk3 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg              dbrk_hit0_latch /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=D101"  */;
  reg              dbrk_hit1_latch /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=D101"  */;
  reg              dbrk_hit2_latch /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=D101"  */;
  reg              dbrk_hit3_latch /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=D101"  */;
  wire             take_action_any_break;
  reg              trigbrktype /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg              trigger_state;
  wire             trigger_state_0;
  wire             trigger_state_1;
  reg     [ 27: 0] xbrk0 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg     [ 27: 0] xbrk1 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg     [ 27: 0] xbrk2 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg     [ 27: 0] xbrk3 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg     [  7: 0] xbrk_ctrl0 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg     [  7: 0] xbrk_ctrl1 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg     [  7: 0] xbrk_ctrl2 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  reg     [  7: 0] xbrk_ctrl3 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,R101\""  */;
  assign break_a_wpr = jdo[35 : 32];
  assign break_a_wpr_high_bits = break_a_wpr[3 : 2];
  assign break_a_wpr_low_bits = break_a_wpr[1 : 0];
  assign break_b_rr = jdo[33 : 32];
  assign break_c_rr = jdo[33 : 32];
  assign take_action_any_break = take_action_break_a | take_action_break_b | take_action_break_c;
  always @(posedge clk or negedge jrst_n)
    begin
      if (jrst_n == 0)
        begin
          xbrk_ctrl0 <= 0;
          xbrk_ctrl1 <= 0;
          xbrk_ctrl2 <= 0;
          xbrk_ctrl3 <= 0;
          trigbrktype <= 0;
          if (0 >= 1)
              xbrk0 <= 0;
          if (0 >= 2)
              xbrk1 <= 0;
          if (0 >= 3)
              xbrk2 <= 0;
          if (0 >= 4)
              xbrk3 <= 0;
          if (0 >= 1)
              dbrk0 <= 0;
          if (0 >= 2)
              dbrk1 <= 0;
          if (0 >= 3)
              dbrk2 <= 0;
          if (0 >= 4)
              dbrk3 <= 0;
        end
      else 
        begin
          if (take_action_any_break)
              trigbrktype <= 0;
          else if (dbrk_break)
              trigbrktype <= 1;
          if (take_action_break_a)
              case (break_a_wpr_high_bits)
              
                  2'd0: begin
                      if ((0 >= 1) && (break_a_wpr_low_bits == 2'b00))
                          xbrk0[27 : 0] <= jdo[31 : 0];
                      if ((0 >= 2) && (break_a_wpr_low_bits == 2'b01))
                          xbrk1[27 : 0] <= jdo[31 : 0];
                      if ((0 >= 3) && (break_a_wpr_low_bits == 2'b10))
                          xbrk2[27 : 0] <= jdo[31 : 0];
                      if ((0 >= 4) && (break_a_wpr_low_bits == 2'b11))
                          xbrk3[27 : 0] <= jdo[31 : 0];
                  end // 2'd0 
              
                  2'd2: begin
                      if ((0 >= 1) && (break_a_wpr_low_bits == 2'b00))
                          dbrk0[28 : 0] <= jdo[31 : 0];
                      if ((0 >= 2) && (break_a_wpr_low_bits == 2'b01))
                          dbrk1[28 : 0] <= jdo[31 : 0];
                      if ((0 >= 3) && (break_a_wpr_low_bits == 2'b10))
                          dbrk2[28 : 0] <= jdo[31 : 0];
                      if ((0 >= 4) && (break_a_wpr_low_bits == 2'b11))
                          dbrk3[28 : 0] <= jdo[31 : 0];
                  end // 2'd2 
              
                  2'd3: begin
                      if ((0 >= 1) && (break_a_wpr_low_bits == 2'b00))
                          dbrk0[63 : 32] <= jdo[31 : 0];
                      if ((0 >= 2) && (break_a_wpr_low_bits == 2'b01))
                          dbrk1[63 : 32] <= jdo[31 : 0];
                      if ((0 >= 3) && (break_a_wpr_low_bits == 2'b10))
                          dbrk2[63 : 32] <= jdo[31 : 0];
                      if ((0 >= 4) && (break_a_wpr_low_bits == 2'b11))
                          dbrk3[63 : 32] <= jdo[31 : 0];
                  end // 2'd3 
              
              endcase // break_a_wpr_high_bits
          else if (take_action_break_b)
            begin
              if ((break_b_rr == 2'b00) && (0 >= 1))
                begin
                  xbrk_ctrl0[0] <= jdo[27];
                  xbrk_ctrl0[1] <= jdo[28];
                  xbrk_ctrl0[2] <= jdo[29];
                  xbrk_ctrl0[3] <= jdo[30];
                  xbrk_ctrl0[4] <= jdo[21];
                  xbrk_ctrl0[5] <= jdo[20];
                  xbrk_ctrl0[6] <= jdo[19];
                  xbrk_ctrl0[7] <= jdo[18];
                end
              if ((break_b_rr == 2'b01) && (0 >= 2))
                begin
                  xbrk_ctrl1[0] <= jdo[27];
                  xbrk_ctrl1[1] <= jdo[28];
                  xbrk_ctrl1[2] <= jdo[29];
                  xbrk_ctrl1[3] <= jdo[30];
                  xbrk_ctrl1[4] <= jdo[21];
                  xbrk_ctrl1[5] <= jdo[20];
                  xbrk_ctrl1[6] <= jdo[19];
                  xbrk_ctrl1[7] <= jdo[18];
                end
              if ((break_b_rr == 2'b10) && (0 >= 3))
                begin
                  xbrk_ctrl2[0] <= jdo[27];
                  xbrk_ctrl2[1] <= jdo[28];
                  xbrk_ctrl2[2] <= jdo[29];
                  xbrk_ctrl2[3] <= jdo[30];
                  xbrk_ctrl2[4] <= jdo[21];
                  xbrk_ctrl2[5] <= jdo[20];
                  xbrk_ctrl2[6] <= jdo[19];
                  xbrk_ctrl2[7] <= jdo[18];
                end
              if ((break_b_rr == 2'b11) && (0 >= 4))
                begin
                  xbrk_ctrl3[0] <= jdo[27];
                  xbrk_ctrl3[1] <= jdo[28];
                  xbrk_ctrl3[2] <= jdo[29];
                  xbrk_ctrl3[3] <= jdo[30];
                  xbrk_ctrl3[4] <= jdo[21];
                  xbrk_ctrl3[5] <= jdo[20];
                  xbrk_ctrl3[6] <= jdo[19];
                  xbrk_ctrl3[7] <= jdo[18];
                end
            end
          else if (take_action_break_c)
            begin
              if ((0 >= 1) && (break_c_rr == 2'b00))
                begin
                  dbrk0[65] <= jdo[23];
                  dbrk0[66] <= jdo[24];
                  dbrk0[67] <= jdo[25];
                  dbrk0[68] <= jdo[26];
                  dbrk0[69] <= jdo[27];
                  dbrk0[70] <= jdo[28];
                  if (1)
                      dbrk0[64] <= jdo[22];
                  if (1)
                    begin
                      dbrk0[71] <= jdo[29];
                      dbrk0[72] <= jdo[30];
                      dbrk0[73] <= jdo[31];
                    end
                  dbrk0[74] <= jdo[21];
                  dbrk0[75] <= jdo[20];
                  dbrk0[76] <= jdo[19];
                  dbrk0[77] <= jdo[18];
                end
              if ((0 >= 2) && (break_c_rr == 2'b01))
                begin
                  dbrk1[65] <= jdo[23];
                  dbrk1[66] <= jdo[24];
                  dbrk1[67] <= jdo[25];
                  dbrk1[68] <= jdo[26];
                  dbrk1[69] <= jdo[27];
                  dbrk1[70] <= jdo[28];
                  if (1)
                      dbrk1[64] <= jdo[22];
                  if (1)
                    begin
                      dbrk1[71] <= jdo[29];
                      dbrk1[72] <= jdo[30];
                      dbrk1[73] <= jdo[31];
                    end
                  dbrk1[74] <= jdo[21];
                  dbrk1[75] <= jdo[20];
                  dbrk1[76] <= jdo[19];
                  dbrk1[77] <= jdo[18];
                end
              if ((0 >= 3) && (break_c_rr == 2'b10))
                begin
                  dbrk2[65] <= jdo[23];
                  dbrk2[66] <= jdo[24];
                  dbrk2[67] <= jdo[25];
                  dbrk2[68] <= jdo[26];
                  dbrk2[69] <= jdo[27];
                  dbrk2[70] <= jdo[28];
                  if (1)
                      dbrk2[64] <= jdo[22];
                  if (1)
                    begin
                      dbrk2[71] <= jdo[29];
                      dbrk2[72] <= jdo[30];
                      dbrk2[73] <= jdo[31];
                    end
                  dbrk2[74] <= jdo[21];
                  dbrk2[75] <= jdo[20];
                  dbrk2[76] <= jdo[19];
                  dbrk2[77] <= jdo[18];
                end
              if ((0 >= 4) && (break_c_rr == 2'b11))
                begin
                  dbrk3[65] <= jdo[23];
                  dbrk3[66] <= jdo[24];
                  dbrk3[67] <= jdo[25];
                  dbrk3[68] <= jdo[26];
                  dbrk3[69] <= jdo[27];
                  dbrk3[70] <= jdo[28];
                  if (1)
                      dbrk3[64] <= jdo[22];
                  if (1)
                    begin
                      dbrk3[71] <= jdo[29];
                      dbrk3[72] <= jdo[30];
                      dbrk3[73] <= jdo[31];
                    end
                  dbrk3[74] <= jdo[21];
                  dbrk3[75] <= jdo[20];
                  dbrk3[76] <= jdo[19];
                  dbrk3[77] <= jdo[18];
                end
            end
        end
    end


  always @(posedge clk)
    begin
      if (take_action_any_break)
        begin
          dbrk_hit0_latch <= 1'b0;
          dbrk_hit1_latch <= 1'b0;
          dbrk_hit2_latch <= 1'b0;
          dbrk_hit3_latch <= 1'b0;
        end
      else 
        begin
          if (dbrk_hit0 & dbrk0[69])
              dbrk_hit0_latch <= 1'b1;
          if (dbrk_hit1 & dbrk1[69])
              dbrk_hit1_latch <= 1'b1;
          if (dbrk_hit2 & dbrk2[69])
              dbrk_hit2_latch <= 1'b1;
          if (dbrk_hit3 & dbrk3[69])
              dbrk_hit3_latch <= 1'b1;
        end
    end


  always @(posedge clk or negedge jrst_n)
    begin
      if (jrst_n == 0)
          break_readreg <= 32'b0;
      else if (take_action_any_break)
          break_readreg <= jdo[31 : 0];
      else if (take_no_action_break_a)
          case (break_a_wpr_high_bits)
          
              2'd0: begin
                  case (break_a_wpr_low_bits) // synthesis full_case
                  
                      2'd0: begin
                          break_readreg <= (0 >= 1) ? xbrk0 : 32'b0;
                      end // 2'd0 
                  
                      2'd1: begin
                          break_readreg <= (0 >= 2) ? xbrk1 : 32'b0;
                      end // 2'd1 
                  
                      2'd2: begin
                          break_readreg <= (0 >= 3) ? xbrk2 : 32'b0;
                      end // 2'd2 
                  
                      2'd3: begin
                          break_readreg <= (0 >= 4) ? xbrk3 : 32'b0;
                      end // 2'd3 
                  
                  endcase // break_a_wpr_low_bits
              end // 2'd0 
          
              2'd1: begin
                  break_readreg <= 32'b0;
              end // 2'd1 
          
              2'd2: begin
                  case (break_a_wpr_low_bits) // synthesis full_case
                  
                      2'd0: begin
                          break_readreg <= (0 >= 1)  ? 
                                  dbrk0[28 : 0] : 32'b0;
                  
                      end // 2'd0 
                  
                      2'd1: begin
                          break_readreg <= (0 >= 2)  ? 
                                  dbrk1[28 : 0] : 32'b0;
                  
                      end // 2'd1 
                  
                      2'd2: begin
                          break_readreg <= (0 >= 3)  ? 
                                  dbrk2[28 : 0] : 32'b0;
                  
                      end // 2'd2 
                  
                      2'd3: begin
                          break_readreg <= (0 >= 4)  ? 
                                  dbrk3[28 : 0] : 32'b0;
                  
                      end // 2'd3 
                  
                  endcase // break_a_wpr_low_bits
              end // 2'd2 
          
              2'd3: begin
                  case (break_a_wpr_low_bits) // synthesis full_case
                  
                      2'd0: begin
                          break_readreg <= (0 >= 1)  ? 
                                  dbrk0[63 : 32] : 32'b0;
                  
                      end // 2'd0 
                  
                      2'd1: begin
                          break_readreg <= (0 >= 2)  ? 
                                  dbrk1[63 : 32] : 32'b0;
                  
                      end // 2'd1 
                  
                      2'd2: begin
                          break_readreg <= (0 >= 3)  ? 
                                  dbrk2[63 : 32] : 32'b0;
                  
                      end // 2'd2 
                  
                      2'd3: begin
                          break_readreg <= (0 >= 4)  ? 
                                  dbrk3[63 : 32] : 32'b0;
                  
                      end // 2'd3 
                  
                  endcase // break_a_wpr_low_bits
              end // 2'd3 
          
          endcase // break_a_wpr_high_bits
      else if (take_no_action_break_b)
          break_readreg <= jdo[31 : 0];
      else if (take_no_action_break_c)
          break_readreg <= jdo[31 : 0];
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          trigger_state <= 0;
      else if (1)
          if (trigger_state_1 & (xbrk_goto0 | dbrk_goto0))
              trigger_state <= 0;
          else if (trigger_state_0 & (xbrk_goto1 | dbrk_goto1))
              trigger_state <= -1;
    end


  assign trigger_state_0 = ~trigger_state;
  assign trigger_state_1 = trigger_state;

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_xbrk (
                            // inputs:
                             D_en,
                             E_en,
                             E_valid,
                             F_pc,
                             clk,
                             reset_n,
                             trigger_state_0,
                             trigger_state_1,
                             xbrk0,
                             xbrk1,
                             xbrk2,
                             xbrk3,
                             xbrk_ctrl0,
                             xbrk_ctrl1,
                             xbrk_ctrl2,
                             xbrk_ctrl3,

                            // outputs:
                             xbrk_break,
                             xbrk_goto0,
                             xbrk_goto1,
                             xbrk_traceoff,
                             xbrk_traceon,
                             xbrk_trigout
                          )
;

  output           xbrk_break;
  output           xbrk_goto0;
  output           xbrk_goto1;
  output           xbrk_traceoff;
  output           xbrk_traceon;
  output           xbrk_trigout;
  input            D_en;
  input            E_en;
  input            E_valid;
  input   [ 25: 0] F_pc;
  input            clk;
  input            reset_n;
  input            trigger_state_0;
  input            trigger_state_1;
  input   [ 27: 0] xbrk0;
  input   [ 27: 0] xbrk1;
  input   [ 27: 0] xbrk2;
  input   [ 27: 0] xbrk3;
  input   [  7: 0] xbrk_ctrl0;
  input   [  7: 0] xbrk_ctrl1;
  input   [  7: 0] xbrk_ctrl2;
  input   [  7: 0] xbrk_ctrl3;

  wire             D_cpu_addr_en;
  wire             E_cpu_addr_en;
  reg              E_xbrk_goto0;
  reg              E_xbrk_goto1;
  reg              E_xbrk_traceoff;
  reg              E_xbrk_traceon;
  reg              E_xbrk_trigout;
  wire    [ 27: 0] cpu_i_address;
  wire             xbrk0_armed;
  wire             xbrk1_armed;
  wire             xbrk2_armed;
  wire             xbrk3_armed;
  reg              xbrk_break;
  wire             xbrk_break_hit;
  wire             xbrk_goto0;
  wire             xbrk_goto0_hit;
  wire             xbrk_goto1;
  wire             xbrk_goto1_hit;
  reg              xbrk_hit0;
  reg              xbrk_hit1;
  reg              xbrk_hit2;
  reg              xbrk_hit3;
  wire             xbrk_toff_hit;
  wire             xbrk_ton_hit;
  wire             xbrk_tout_hit;
  wire             xbrk_traceoff;
  wire             xbrk_traceon;
  wire             xbrk_trigout;
  assign cpu_i_address = {F_pc, 2'b00};
  assign D_cpu_addr_en = D_en;
  assign E_cpu_addr_en = E_en;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          xbrk_hit0 <= 0;
      else if (D_cpu_addr_en)
          xbrk_hit0 <= (0 >= 1) & 
                    (cpu_i_address == xbrk0[27 : 0]);

    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          xbrk_hit1 <= 0;
      else if (D_cpu_addr_en)
          xbrk_hit1 <= (0 >= 2) & 
                    (cpu_i_address == xbrk1[27 : 0]);

    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          xbrk_hit2 <= 0;
      else if (D_cpu_addr_en)
          xbrk_hit2 <= (0 >= 3) & 
                    (cpu_i_address == xbrk2[27 : 0]);

    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          xbrk_hit3 <= 0;
      else if (D_cpu_addr_en)
          xbrk_hit3 <= (0 >= 4) &
                    (cpu_i_address == xbrk3[27 : 0]);

    end


  assign xbrk_break_hit = (xbrk_hit0 & xbrk0_armed & xbrk_ctrl0[0]) | 
    (xbrk_hit1 & xbrk1_armed & xbrk_ctrl1[0]) | 
    (xbrk_hit2 & xbrk2_armed & xbrk_ctrl2[0]) | 
    (xbrk_hit3 & xbrk3_armed & xbrk_ctrl3[0]);

  assign xbrk_ton_hit = (xbrk_hit0 & xbrk0_armed & xbrk_ctrl0[3]) | 
    (xbrk_hit1 & xbrk1_armed & xbrk_ctrl1[3]) | 
    (xbrk_hit2 & xbrk2_armed & xbrk_ctrl2[3]) | 
    (xbrk_hit3 & xbrk3_armed & xbrk_ctrl3[3]);

  assign xbrk_toff_hit = (xbrk_hit0 & xbrk0_armed & xbrk_ctrl0[2]) | 
    (xbrk_hit1 & xbrk1_armed & xbrk_ctrl1[2]) | 
    (xbrk_hit2 & xbrk2_armed & xbrk_ctrl2[2]) | 
    (xbrk_hit3 & xbrk3_armed & xbrk_ctrl3[2]);

  assign xbrk_tout_hit = (xbrk_hit0 & xbrk0_armed & xbrk_ctrl0[1]) | 
    (xbrk_hit1 & xbrk1_armed & xbrk_ctrl1[1]) | 
    (xbrk_hit2 & xbrk2_armed & xbrk_ctrl2[1]) | 
    (xbrk_hit3 & xbrk3_armed & xbrk_ctrl3[1]);

  assign xbrk_goto0_hit = (xbrk_hit0 & xbrk0_armed & xbrk_ctrl0[6]) | 
    (xbrk_hit1 & xbrk1_armed & xbrk_ctrl1[6]) | 
    (xbrk_hit2 & xbrk2_armed & xbrk_ctrl2[6]) | 
    (xbrk_hit3 & xbrk3_armed & xbrk_ctrl3[6]);

  assign xbrk_goto1_hit = (xbrk_hit0 & xbrk0_armed & xbrk_ctrl0[7]) | 
    (xbrk_hit1 & xbrk1_armed & xbrk_ctrl1[7]) | 
    (xbrk_hit2 & xbrk2_armed & xbrk_ctrl2[7]) | 
    (xbrk_hit3 & xbrk3_armed & xbrk_ctrl3[7]);

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          xbrk_break <= 0;
      else if (E_cpu_addr_en)
          xbrk_break <= xbrk_break_hit;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_xbrk_traceon <= 0;
      else if (E_cpu_addr_en)
          E_xbrk_traceon <= xbrk_ton_hit;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_xbrk_traceoff <= 0;
      else if (E_cpu_addr_en)
          E_xbrk_traceoff <= xbrk_toff_hit;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_xbrk_trigout <= 0;
      else if (E_cpu_addr_en)
          E_xbrk_trigout <= xbrk_tout_hit;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_xbrk_goto0 <= 0;
      else if (E_cpu_addr_en)
          E_xbrk_goto0 <= xbrk_goto0_hit;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_xbrk_goto1 <= 0;
      else if (E_cpu_addr_en)
          E_xbrk_goto1 <= xbrk_goto1_hit;
    end


  assign xbrk_traceon = E_xbrk_traceon & E_valid;
  assign xbrk_traceoff = E_xbrk_traceoff & E_valid;
  assign xbrk_trigout = E_xbrk_trigout & E_valid;
  assign xbrk_goto0 = E_xbrk_goto0 & E_valid;
  assign xbrk_goto1 = E_xbrk_goto1 & E_valid;
  assign xbrk0_armed = (xbrk_ctrl0[4] & trigger_state_0) ||
    (xbrk_ctrl0[5] & trigger_state_1);

  assign xbrk1_armed = (xbrk_ctrl1[4] & trigger_state_0) ||
    (xbrk_ctrl1[5] & trigger_state_1);

  assign xbrk2_armed = (xbrk_ctrl2[4] & trigger_state_0) ||
    (xbrk_ctrl2[5] & trigger_state_1);

  assign xbrk3_armed = (xbrk_ctrl3[4] & trigger_state_0) ||
    (xbrk_ctrl3[5] & trigger_state_1);


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_match_paired (
                                    // inputs:
                                     addr,
                                     data,
                                     dbrka,
                                     dbrkb,
                                     read,
                                     write,

                                    // outputs:
                                     match_paired
                                  )
;

  output           match_paired;
  input   [ 28: 0] addr;
  input   [ 31: 0] data;
  input   [ 70: 0] dbrka;
  input   [ 70: 0] dbrkb;
  input            read;
  input            write;

  wire             match_paired;
  wire             match_paired_combinatorial;
  assign match_paired_combinatorial = (~dbrka[67]       || ((addr >= dbrka[28 : 0])            && (addr <= dbrkb[28 : 0]))) && (~dbrka[68]       || (((data ^ dbrka[63 : 32])             & dbrkb[63 : 32]) == 0)) && ((dbrka[66] & read)       || (dbrka[65] & write));
  assign match_paired = match_paired_combinatorial;

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_match_single (
                                    // inputs:
                                     addr,
                                     data,
                                     dbrk,
                                     read,
                                     write,

                                    // outputs:
                                     match_single
                                  )
;

  output           match_single;
  input   [ 28: 0] addr;
  input   [ 31: 0] data;
  input   [ 70: 0] dbrk;
  input            read;
  input            write;

  wire             match_single;
  wire             match_single_combinatorial;
  assign match_single_combinatorial = (~dbrk[67] || (addr == dbrk[28 : 0]))  && (~dbrk[68] || (data == dbrk[63 : 32]))  && (    (dbrk[66] & read)       || (dbrk[65] & write));
  assign match_single = match_single_combinatorial;

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_dbrk (
                            // inputs:
                             M_ctrl_ld,
                             M_ctrl_st,
                             M_en,
                             M_mem_baddr,
                             M_st_data,
                             M_valid,
                             M_wr_data_filtered,
                             clk,
                             dbrk0,
                             dbrk1,
                             dbrk2,
                             dbrk3,
                             debugack,
                             reset_n,
                             trigger_state_0,
                             trigger_state_1,

                            // outputs:
                             cpu_d_address,
                             cpu_d_read,
                             cpu_d_readdata,
                             cpu_d_wait,
                             cpu_d_write,
                             cpu_d_writedata,
                             dbrk_break,
                             dbrk_goto0,
                             dbrk_goto1,
                             dbrk_hit0,
                             dbrk_hit1,
                             dbrk_hit2,
                             dbrk_hit3,
                             dbrk_traceme,
                             dbrk_traceoff,
                             dbrk_traceon,
                             dbrk_trigout
                          )
;

  output  [ 28: 0] cpu_d_address;
  output           cpu_d_read;
  output  [ 31: 0] cpu_d_readdata;
  output           cpu_d_wait;
  output           cpu_d_write;
  output  [ 31: 0] cpu_d_writedata;
  output           dbrk_break;
  output           dbrk_goto0;
  output           dbrk_goto1;
  output           dbrk_hit0;
  output           dbrk_hit1;
  output           dbrk_hit2;
  output           dbrk_hit3;
  output           dbrk_traceme;
  output           dbrk_traceoff;
  output           dbrk_traceon;
  output           dbrk_trigout;
  input            M_ctrl_ld;
  input            M_ctrl_st;
  input            M_en;
  input   [ 28: 0] M_mem_baddr;
  input   [ 31: 0] M_st_data;
  input            M_valid;
  input   [ 31: 0] M_wr_data_filtered;
  input            clk;
  input   [ 77: 0] dbrk0;
  input   [ 77: 0] dbrk1;
  input   [ 77: 0] dbrk2;
  input   [ 77: 0] dbrk3;
  input            debugack;
  input            reset_n;
  input            trigger_state_0;
  input            trigger_state_1;

  wire    [ 28: 0] cpu_d_address;
  wire             cpu_d_read;
  wire             cpu_d_read_valid;
  wire    [ 31: 0] cpu_d_readdata;
  wire             cpu_d_wait;
  wire             cpu_d_write;
  wire    [ 31: 0] cpu_d_writedata;
  wire             dbrk0_armed;
  wire             dbrk1_armed;
  wire             dbrk2_armed;
  wire             dbrk3_armed;
  reg              dbrk_break;
  reg              dbrk_break_pulse;
  wire    [ 31: 0] dbrk_data;
  reg              dbrk_goto0;
  reg              dbrk_goto1;
  wire             dbrk_hit0;
  wire             dbrk_hit0_match_paired;
  wire             dbrk_hit0_match_single;
  wire             dbrk_hit1;
  wire             dbrk_hit1_match_single;
  wire             dbrk_hit2;
  wire             dbrk_hit2_match_paired;
  wire             dbrk_hit2_match_single;
  wire             dbrk_hit3;
  wire             dbrk_hit3_match_single;
  reg              dbrk_traceme;
  reg              dbrk_traceoff;
  reg              dbrk_traceon;
  reg              dbrk_trigout;
  assign cpu_d_address = M_mem_baddr;
  assign cpu_d_readdata = M_wr_data_filtered;
  assign cpu_d_read = M_ctrl_ld & M_valid;
  assign cpu_d_writedata = M_st_data;
  assign cpu_d_write = M_ctrl_st & M_valid;
  assign cpu_d_wait = ~M_en;
  assign dbrk_data = cpu_d_write ? cpu_d_writedata : cpu_d_readdata;
  assign cpu_d_read_valid = cpu_d_read & ~cpu_d_wait;
  //cpu_nios2_oci_dbrk_hit0_match_paired, which is an e_instance
  cpu_nios2_oci_match_paired cpu_nios2_oci_dbrk_hit0_match_paired
    (
      .addr         (cpu_d_address),
      .data         (dbrk_data),
      .dbrka        (dbrk0),
      .dbrkb        (dbrk1),
      .match_paired (dbrk_hit0_match_paired),
      .read         (cpu_d_read_valid),
      .write        (cpu_d_write)
    );

  //cpu_nios2_oci_dbrk_hit0_match_single, which is an e_instance
  cpu_nios2_oci_match_single cpu_nios2_oci_dbrk_hit0_match_single
    (
      .addr         (cpu_d_address),
      .data         (dbrk_data),
      .dbrk         (dbrk0),
      .match_single (dbrk_hit0_match_single),
      .read         (cpu_d_read_valid),
      .write        (cpu_d_write)
    );

  assign dbrk_hit0 = (1) & (0 && dbrk0[64]) ?   ((0 >= 2) && dbrk_hit0_match_paired) :   ((0 >= 1) && dbrk_hit0_match_single);
  //cpu_nios2_oci_dbrk_hit1_match_single, which is an e_instance
  cpu_nios2_oci_match_single cpu_nios2_oci_dbrk_hit1_match_single
    (
      .addr         (cpu_d_address),
      .data         (dbrk_data),
      .dbrk         (dbrk1),
      .match_single (dbrk_hit1_match_single),
      .read         (cpu_d_read_valid),
      .write        (cpu_d_write)
    );

  assign dbrk_hit1 = (0 && dbrk0[64]) ?   0 :   ((0 >= 2) && dbrk_hit1_match_single);
  //cpu_nios2_oci_dbrk_hit2_match_paired, which is an e_instance
  cpu_nios2_oci_match_paired cpu_nios2_oci_dbrk_hit2_match_paired
    (
      .addr         (cpu_d_address),
      .data         (dbrk_data),
      .dbrka        (dbrk2),
      .dbrkb        (dbrk3),
      .match_paired (dbrk_hit2_match_paired),
      .read         (cpu_d_read_valid),
      .write        (cpu_d_write)
    );

  //cpu_nios2_oci_dbrk_hit2_match_single, which is an e_instance
  cpu_nios2_oci_match_single cpu_nios2_oci_dbrk_hit2_match_single
    (
      .addr         (cpu_d_address),
      .data         (dbrk_data),
      .dbrk         (dbrk2),
      .match_single (dbrk_hit2_match_single),
      .read         (cpu_d_read_valid),
      .write        (cpu_d_write)
    );

  assign dbrk_hit2 = (0 && dbrk2[64]) ?   ((0 >= 4) && dbrk_hit2_match_paired) :  ((0 >= 3) && dbrk_hit2_match_single);
  //cpu_nios2_oci_dbrk_hit3_match_single, which is an e_instance
  cpu_nios2_oci_match_single cpu_nios2_oci_dbrk_hit3_match_single
    (
      .addr         (cpu_d_address),
      .data         (dbrk_data),
      .dbrk         (dbrk3),
      .match_single (dbrk_hit3_match_single),
      .read         (cpu_d_read_valid),
      .write        (cpu_d_write)
    );

  assign dbrk_hit3 = (0 && dbrk2[64]) ?  0 :   ((0 >= 4) && dbrk_hit3_match_single);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbrk_break <= 0;
      else 
        dbrk_break <= dbrk_break   ? ~debugack   
                : dbrk_break_pulse;

    end


  always @(posedge clk)
    begin
      dbrk_trigout <= (dbrk_hit0 & dbrk0_armed & dbrk0[70])  | (dbrk_hit1 & dbrk1_armed & dbrk1[70])  | (dbrk_hit2 & dbrk2_armed & dbrk2[70])  | (dbrk_hit3 & dbrk3_armed & dbrk3[70]);
      dbrk_break_pulse <= (dbrk_hit0 & dbrk0_armed & dbrk0[69])  | (dbrk_hit1 & dbrk1_armed & dbrk1[69])  | (dbrk_hit2 & dbrk2_armed & dbrk2[69])  | (dbrk_hit3 & dbrk3_armed & dbrk3[69]);
      dbrk_traceoff <= 0 & (    (dbrk_hit0 & dbrk0_armed & dbrk0[71])  | (dbrk_hit1 & dbrk1_armed & dbrk1[71])  | (dbrk_hit2 & dbrk2_armed & dbrk2[71])  | (dbrk_hit3 & dbrk3_armed & dbrk3[71]));
      dbrk_traceon <= 0 & (    (dbrk_hit0 & dbrk0_armed & dbrk0[72])  | (dbrk_hit1 & dbrk1_armed & dbrk1[72])  | (dbrk_hit2 & dbrk2_armed & dbrk2[72])  | (dbrk_hit3 & dbrk3_armed & dbrk3[72]));
      dbrk_traceme <= 0 & (    (dbrk_hit0 & dbrk0_armed & dbrk0[73])  | (dbrk_hit1 & dbrk1_armed & dbrk1[73])  | (dbrk_hit2 & dbrk2_armed & dbrk2[73])  | (dbrk_hit3 & dbrk3_armed & dbrk3[73]));
      dbrk_goto0 <= 0 & (    (dbrk_hit0 & dbrk0_armed & dbrk0[76])  | (dbrk_hit1 & dbrk1_armed & dbrk1[76])  | (dbrk_hit2 & dbrk2_armed & dbrk2[76])  | (dbrk_hit3 & dbrk3_armed & dbrk3[76]));
      dbrk_goto1 <= 0 & (    (dbrk_hit0 & dbrk0_armed & dbrk0[77])  | (dbrk_hit1 & dbrk1_armed & dbrk1[77])  | (dbrk_hit2 & dbrk2_armed & dbrk2[77])  | (dbrk_hit3 & dbrk3_armed & dbrk3[77]));
    end


  assign dbrk0_armed = (dbrk0[74] & trigger_state_0) ||
    (dbrk0[75] & trigger_state_1);

  assign dbrk1_armed = (dbrk1[74] & trigger_state_0) ||
    (dbrk1[75] & trigger_state_1);

  assign dbrk2_armed = (dbrk2[74] & trigger_state_0) ||
    (dbrk2[75] & trigger_state_1);

  assign dbrk3_armed = (dbrk3[74] & trigger_state_0) ||
    (dbrk3[75] & trigger_state_1);


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_itrace (
                              // inputs:
                               M_cmp_result,
                               M_ctrl_exception,
                               M_en,
                               M_op_beq,
                               M_op_bge,
                               M_op_bgeu,
                               M_op_blt,
                               M_op_bltu,
                               M_op_bne,
                               M_op_br,
                               M_op_bret,
                               M_op_call,
                               M_op_callr,
                               M_op_eret,
                               M_op_jmp,
                               M_op_ret,
                               M_pcb,
                               M_valid,
                               M_wr_data_filtered,
                               clk,
                               dbrk_traceoff,
                               dbrk_traceon,
                               debugack,
                               jdo,
                               jrst_n,
                               reset_n,
                               take_action_tracectrl,
                               trc_enb,
                               xbrk_traceoff,
                               xbrk_traceon,
                               xbrk_wrap_traceoff,

                              // outputs:
                               itm,
                               trc_ctrl,
                               trc_on
                            )
;

  output  [ 35: 0] itm;
  output  [ 15: 0] trc_ctrl;
  output           trc_on;
  input            M_cmp_result;
  input            M_ctrl_exception;
  input            M_en;
  input            M_op_beq;
  input            M_op_bge;
  input            M_op_bgeu;
  input            M_op_blt;
  input            M_op_bltu;
  input            M_op_bne;
  input            M_op_br;
  input            M_op_bret;
  input            M_op_call;
  input            M_op_callr;
  input            M_op_eret;
  input            M_op_jmp;
  input            M_op_ret;
  input   [ 27: 0] M_pcb;
  input            M_valid;
  input   [ 31: 0] M_wr_data_filtered;
  input            clk;
  input            dbrk_traceoff;
  input            dbrk_traceon;
  input            debugack;
  input   [ 15: 0] jdo;
  input            jrst_n;
  input            reset_n;
  input            take_action_tracectrl;
  input            trc_enb;
  input            xbrk_traceoff;
  input            xbrk_traceon;
  input            xbrk_wrap_traceoff;

  reg     [ 29: 0] br_buffer /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg     [  3: 0] br_count /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  wire             branch_taken;
  wire    [  1: 0] branchtm;
  wire    [ 31: 0] cpu_address;
  reg     [ 31: 0] d1_M_wr_data;
  wire             do_branch;
  wire             do_jump;
  wire             is_branch;
  wire             is_cond_branch;
  wire             is_interrupt;
  wire             is_uncond_branch;
  reg     [ 35: 0] itm /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg     [  3: 0] jmp_pending /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  wire    [ 31: 0] next_instruction;
  wire             not_in_debug_mode;
  wire    [  1: 0] syn_code;
  wire    [  6: 0] syn_interval;
  wire             syn_pending;
  reg     [  6: 0] syn_timer /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  wire    [  6: 0] syn_timer_next;
  wire             synced;
  wire             trace_signals_enable;
  reg              trc_clear /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=D101"  */;
  wire    [ 15: 0] trc_ctrl;
  reg     [ 10: 0] trc_ctrl_reg /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,D103,R101\""  */;
  wire             trc_on;
  wire             trc_x;
  assign is_cond_branch = M_op_bge  | M_op_blt | M_op_bne | M_op_bgeu | 
    M_op_bltu | M_op_beq;

  assign is_uncond_branch = M_op_br | M_op_call;
  assign is_branch = is_cond_branch | is_uncond_branch;
  assign branch_taken = M_cmp_result;
  assign do_branch = (is_uncond_branch) | 
    (is_cond_branch & branch_taken);

  assign do_jump = M_op_jmp | M_op_callr | M_op_ret | M_op_eret |
    M_op_bret;

  assign is_interrupt = M_ctrl_exception;
  assign cpu_address = M_pcb;
  assign next_instruction = d1_M_wr_data;
  assign not_in_debug_mode = ~debugack;
  assign trace_signals_enable = M_valid & M_en;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_M_wr_data <= 0;
      else if (trace_signals_enable)
          d1_M_wr_data <= M_wr_data_filtered;
    end


  assign syn_code = trc_ctrl[3 : 2];
  assign syn_interval = { syn_code[1] & syn_code[0], 1'b0, syn_code[1] & ~syn_code[0], 1'b0, ~syn_code[1] & syn_code[0], 2'b00 };
  assign syn_pending = ~|syn_timer;
  assign syn_timer_next = syn_pending ? syn_timer : (syn_timer - 1);
  assign trc_x = trc_on & trc_ctrl[4];
  assign synced = (jmp_pending == 4'b1010) ? 1'b0 : 1'b1;
  assign branchtm = {is_cond_branch, do_branch};
  always @(posedge clk)
    begin
      trc_clear <= ~trc_enb & 
            take_action_tracectrl & jdo[4];

    end


  always @(posedge clk or negedge jrst_n)
    begin
      if (jrst_n == 0)
        begin
          itm <= 0;
          br_buffer <= 0;
          br_count <= 0;
          syn_timer <= 0;
          jmp_pending <= 0;
        end
      else if (trc_clear || (!0 && !0))
        begin
          itm <= 0;
          br_buffer <= 0;
          br_count <= 0;
          syn_timer <= 0;
          jmp_pending <= 0;
        end
      else if (trace_signals_enable)
        begin
          if (~trc_x)
              jmp_pending <= 4'b1010;
          else if (is_interrupt)
              jmp_pending <= 4'b0010;
          else if (do_jump)
              jmp_pending <= 4'b1001;
          else if (do_branch & syn_pending)
              jmp_pending <= 4'b1000;
          else 
            jmp_pending <= 4'b0000;
          if ((   ~trc_x | do_jump | is_interrupt | 
                                  (do_branch & syn_pending))
                              & (|br_count))
            begin
              itm <= {4'b0001, br_buffer, 2'b00};
              br_buffer <= 0;
              br_count <= 0;
              syn_timer <= syn_timer_next;
            end
          else 
            begin
              if (trc_x & (is_branch & ~(&br_count)) & ~(do_branch & syn_pending))
                begin
                  br_buffer <= {branchtm, br_buffer[29 : 2]};
                  br_count <= br_count + 1;
                end
              if (trc_x & synced & (jmp_pending == 4'b0010))
                  itm <= {4'b0010, 
                                    next_instruction[31 : 0]};

              else if (trc_x & |jmp_pending)
                begin
                  itm <= {jmp_pending, cpu_address};
                  syn_timer <= syn_interval;
                end
              else if (trc_x & synced & is_branch)
                begin
                  if (&br_count)
                    begin
                      itm <= {4'b0001, branchtm, br_buffer};
                      br_buffer <= 0;
                      br_count <= 0;
                      syn_timer <= syn_timer_next;
                    end
                  else 
                    itm <= 0;
                end
              else 
                itm <= 0;
            end
        end
      else 
        itm <= 0;
    end


  always @(posedge clk or negedge jrst_n)
    begin
      if (jrst_n == 0)
        begin
          trc_ctrl_reg[0] <= 0;
          trc_ctrl_reg[1] <= 0;
          trc_ctrl_reg[3 : 2] <= 0;
          trc_ctrl_reg[4] <= 0;
          trc_ctrl_reg[7 : 5] <= 0;
          trc_ctrl_reg[8] <= 0;
          trc_ctrl_reg[9] <= 0;
          trc_ctrl_reg[10] <= 0;
        end
      else if (take_action_tracectrl)
        begin
          trc_ctrl_reg[0] <= jdo[5];
          trc_ctrl_reg[1] <= jdo[6];
          trc_ctrl_reg[3 : 2] <= jdo[8 : 7];
          trc_ctrl_reg[4] <= jdo[9];
          trc_ctrl_reg[9] <= jdo[14];
          trc_ctrl_reg[10] <= jdo[2];
          if (1)
              trc_ctrl_reg[7 : 5] <= jdo[12 : 10];
          if (0 & 0)
              trc_ctrl_reg[8] <= jdo[13];
        end
      else if (xbrk_wrap_traceoff)
        begin
          trc_ctrl_reg[1] <= 0;
          trc_ctrl_reg[0] <= 0;
        end
      else if (dbrk_traceoff | xbrk_traceoff)
          trc_ctrl_reg[1] <= 0;
      else if (trc_ctrl_reg[0] & 
                                  (dbrk_traceon | xbrk_traceon))
          trc_ctrl_reg[1] <= 1;
    end


  assign trc_ctrl = (0 || 0) ?    {6'b000000, trc_ctrl_reg}   : 0;
  assign trc_on = trc_ctrl[1] & 
    (trc_ctrl[9] | not_in_debug_mode);


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_td_mode (
                               // inputs:
                                ctrl,

                               // outputs:
                                td_mode
                             )
;

  output  [  3: 0] td_mode;
  input   [  8: 0] ctrl;

  wire    [  2: 0] ctrl_bits_for_mux;
  reg     [  3: 0] td_mode;
  assign ctrl_bits_for_mux = ctrl[7 : 5];
  always @(ctrl_bits_for_mux)
    begin
      case (ctrl_bits_for_mux)
      
          3'b000: begin
              td_mode <= 4'b0000;
          end // 3'b000 
      
          3'b001: begin
              td_mode <= 4'b1000;
          end // 3'b001 
      
          3'b010: begin
              td_mode <= 4'b0100;
          end // 3'b010 
      
          3'b011: begin
              td_mode <= 4'b1100;
          end // 3'b011 
      
          3'b100: begin
              td_mode <= 4'b0010;
          end // 3'b100 
      
          3'b101: begin
              td_mode <= 4'b1010;
          end // 3'b101 
      
          3'b110: begin
              td_mode <= 4'b0101;
          end // 3'b110 
      
          3'b111: begin
              td_mode <= 4'b1111;
          end // 3'b111 
      
      endcase // ctrl_bits_for_mux
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_dtrace (
                              // inputs:
                               clk,
                               cpu_d_address,
                               cpu_d_read,
                               cpu_d_readdata,
                               cpu_d_wait,
                               cpu_d_write,
                               cpu_d_writedata,
                               jrst_n,
                               trc_ctrl,

                              // outputs:
                               atm,
                               dtm
                            )
;

  output  [ 35: 0] atm;
  output  [ 35: 0] dtm;
  input            clk;
  input   [ 28: 0] cpu_d_address;
  input            cpu_d_read;
  input   [ 31: 0] cpu_d_readdata;
  input            cpu_d_wait;
  input            cpu_d_write;
  input   [ 31: 0] cpu_d_writedata;
  input            jrst_n;
  input   [ 15: 0] trc_ctrl;

  reg     [ 35: 0] atm /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  wire    [ 31: 0] cpu_d_address_0_padded;
  wire    [ 31: 0] cpu_d_readdata_0_padded;
  wire    [ 31: 0] cpu_d_writedata_0_padded;
  reg     [ 35: 0] dtm /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  wire    [  3: 0] td_mode_trc_ctrl;
  wire             trc_la;
  wire             trc_ld;
  wire             trc_sa;
  wire             trc_sd;
  assign cpu_d_writedata_0_padded = cpu_d_writedata | 32'b0;
  assign cpu_d_readdata_0_padded = cpu_d_readdata | 32'b0;
  assign cpu_d_address_0_padded = cpu_d_address | 32'b0;
  //cpu_nios2_oci_trc_ctrl_td_mode, which is an e_instance
  cpu_nios2_oci_td_mode cpu_nios2_oci_trc_ctrl_td_mode
    (
      .ctrl    (trc_ctrl[8 : 0]),
      .td_mode (td_mode_trc_ctrl)
    );

  assign {trc_la, trc_sa, trc_ld, trc_sd} = td_mode_trc_ctrl;
  always @(posedge clk or negedge jrst_n)
    begin
      if (jrst_n == 0)
        begin
          atm <= 0;
          dtm <= 0;
        end
      else if (1)
        begin
          if (cpu_d_write & ~cpu_d_wait & trc_sa)
              atm <= {4'b0101, cpu_d_address_0_padded};
          else if (cpu_d_read & ~cpu_d_wait & trc_la)
              atm <= {4'b0100, cpu_d_address_0_padded};
          else 
            atm <= {4'b0000, cpu_d_address_0_padded};
          if (cpu_d_write & ~cpu_d_wait & trc_sd)
              dtm <= {4'b0111, cpu_d_writedata_0_padded};
          else if (cpu_d_read & ~cpu_d_wait & trc_ld)
              dtm <= {4'b0110, cpu_d_readdata_0_padded};
          else 
            dtm <= {4'b0000, cpu_d_readdata_0_padded};
        end
      else 
        begin
          atm <= 0;
          dtm <= 0;
        end
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_compute_tm_count (
                                        // inputs:
                                         atm_valid,
                                         dtm_valid,
                                         itm_valid,

                                        // outputs:
                                         compute_tm_count
                                      )
;

  output  [  1: 0] compute_tm_count;
  input            atm_valid;
  input            dtm_valid;
  input            itm_valid;

  reg     [  1: 0] compute_tm_count;
  wire    [  2: 0] switch_for_mux;
  assign switch_for_mux = {itm_valid, atm_valid, dtm_valid};
  always @(switch_for_mux)
    begin
      case (switch_for_mux)
      
          3'b000: begin
              compute_tm_count <= 0;
          end // 3'b000 
      
          3'b001: begin
              compute_tm_count <= 1;
          end // 3'b001 
      
          3'b010: begin
              compute_tm_count <= 1;
          end // 3'b010 
      
          3'b011: begin
              compute_tm_count <= 2;
          end // 3'b011 
      
          3'b100: begin
              compute_tm_count <= 1;
          end // 3'b100 
      
          3'b101: begin
              compute_tm_count <= 2;
          end // 3'b101 
      
          3'b110: begin
              compute_tm_count <= 2;
          end // 3'b110 
      
          3'b111: begin
              compute_tm_count <= 3;
          end // 3'b111 
      
      endcase // switch_for_mux
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_fifowp_inc (
                                  // inputs:
                                   free2,
                                   free3,
                                   tm_count,

                                  // outputs:
                                   fifowp_inc
                                )
;

  output  [  3: 0] fifowp_inc;
  input            free2;
  input            free3;
  input   [  1: 0] tm_count;

  reg     [  3: 0] fifowp_inc;
  always @(free2 or free3 or tm_count)
    begin
      if (free3 & (tm_count == 3))
          fifowp_inc <= 3;
      else if (free2 & (tm_count >= 2))
          fifowp_inc <= 2;
      else if (tm_count >= 1)
          fifowp_inc <= 1;
      else 
        fifowp_inc <= 0;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_fifocount_inc (
                                     // inputs:
                                      empty,
                                      free2,
                                      free3,
                                      tm_count,

                                     // outputs:
                                      fifocount_inc
                                   )
;

  output  [  4: 0] fifocount_inc;
  input            empty;
  input            free2;
  input            free3;
  input   [  1: 0] tm_count;

  reg     [  4: 0] fifocount_inc;
  always @(empty or free2 or free3 or tm_count)
    begin
      if (empty)
          fifocount_inc <= tm_count[1 : 0];
      else if (free3 & (tm_count == 3))
          fifocount_inc <= 2;
      else if (free2 & (tm_count >= 2))
          fifocount_inc <= 1;
      else if (tm_count >= 1)
          fifocount_inc <= 0;
      else 
        fifocount_inc <= {5{1'b1}};
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_fifo (
                            // inputs:
                             atm,
                             clk,
                             dbrk_traceme,
                             dbrk_traceoff,
                             dbrk_traceon,
                             dtm,
                             itm,
                             jrst_n,
                             reset_n,
                             trc_on,

                            // outputs:
                             tw
                          )
;

  output  [ 35: 0] tw;
  input   [ 35: 0] atm;
  input            clk;
  input            dbrk_traceme;
  input            dbrk_traceoff;
  input            dbrk_traceon;
  input   [ 35: 0] dtm;
  input   [ 35: 0] itm;
  input            jrst_n;
  input            reset_n;
  input            trc_on;

  wire             atm_valid;
  wire    [  1: 0] compute_tm_count_tm_count;
  wire             dtm_valid;
  wire             empty;
  reg     [ 35: 0] fifo_0;
  wire             fifo_0_enable;
  wire    [ 35: 0] fifo_0_mux;
  reg     [ 35: 0] fifo_1;
  reg     [ 35: 0] fifo_10;
  wire             fifo_10_enable;
  wire    [ 35: 0] fifo_10_mux;
  reg     [ 35: 0] fifo_11;
  wire             fifo_11_enable;
  wire    [ 35: 0] fifo_11_mux;
  reg     [ 35: 0] fifo_12;
  wire             fifo_12_enable;
  wire    [ 35: 0] fifo_12_mux;
  reg     [ 35: 0] fifo_13;
  wire             fifo_13_enable;
  wire    [ 35: 0] fifo_13_mux;
  reg     [ 35: 0] fifo_14;
  wire             fifo_14_enable;
  wire    [ 35: 0] fifo_14_mux;
  reg     [ 35: 0] fifo_15;
  wire             fifo_15_enable;
  wire    [ 35: 0] fifo_15_mux;
  wire             fifo_1_enable;
  wire    [ 35: 0] fifo_1_mux;
  reg     [ 35: 0] fifo_2;
  wire             fifo_2_enable;
  wire    [ 35: 0] fifo_2_mux;
  reg     [ 35: 0] fifo_3;
  wire             fifo_3_enable;
  wire    [ 35: 0] fifo_3_mux;
  reg     [ 35: 0] fifo_4;
  wire             fifo_4_enable;
  wire    [ 35: 0] fifo_4_mux;
  reg     [ 35: 0] fifo_5;
  wire             fifo_5_enable;
  wire    [ 35: 0] fifo_5_mux;
  reg     [ 35: 0] fifo_6;
  wire             fifo_6_enable;
  wire    [ 35: 0] fifo_6_mux;
  reg     [ 35: 0] fifo_7;
  wire             fifo_7_enable;
  wire    [ 35: 0] fifo_7_mux;
  reg     [ 35: 0] fifo_8;
  wire             fifo_8_enable;
  wire    [ 35: 0] fifo_8_mux;
  reg     [ 35: 0] fifo_9;
  wire             fifo_9_enable;
  wire    [ 35: 0] fifo_9_mux;
  wire    [ 35: 0] fifo_read_mux;
  reg     [  4: 0] fifocount /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  wire    [  4: 0] fifocount_inc_fifocount;
  wire    [ 35: 0] fifohead;
  reg     [  3: 0] fiforp /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg     [  3: 0] fifowp /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  wire    [  3: 0] fifowp1;
  wire    [  3: 0] fifowp2;
  wire    [  3: 0] fifowp_inc_fifowp;
  wire             free2;
  wire             free3;
  wire             itm_valid;
  reg              ovf_pending /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  wire    [ 35: 0] ovr_pending_atm;
  wire    [ 35: 0] ovr_pending_dtm;
  wire    [  1: 0] tm_count;
  wire             tm_count_ge1;
  wire             tm_count_ge2;
  wire             tm_count_ge3;
  wire             trc_this;
  wire    [ 35: 0] tw;
  assign trc_this = trc_on | (dbrk_traceon & ~dbrk_traceoff) | dbrk_traceme;
  assign itm_valid = |itm[35 : 32];
  assign atm_valid = |atm[35 : 32] & trc_this;
  assign dtm_valid = |dtm[35 : 32] & trc_this;
  assign free2 = ~fifocount[4];
  assign free3 = ~fifocount[4] & ~&fifocount[3 : 0];
  assign empty = ~|fifocount;
  assign fifowp1 = fifowp + 1;
  assign fifowp2 = fifowp + 2;
  //cpu_nios2_oci_compute_tm_count_tm_count, which is an e_instance
  cpu_nios2_oci_compute_tm_count cpu_nios2_oci_compute_tm_count_tm_count
    (
      .atm_valid        (atm_valid),
      .compute_tm_count (compute_tm_count_tm_count),
      .dtm_valid        (dtm_valid),
      .itm_valid        (itm_valid)
    );

  assign tm_count = compute_tm_count_tm_count;
  //cpu_nios2_oci_fifowp_inc_fifowp, which is an e_instance
  cpu_nios2_oci_fifowp_inc cpu_nios2_oci_fifowp_inc_fifowp
    (
      .fifowp_inc (fifowp_inc_fifowp),
      .free2      (free2),
      .free3      (free3),
      .tm_count   (tm_count)
    );

  //cpu_nios2_oci_fifocount_inc_fifocount, which is an e_instance
  cpu_nios2_oci_fifocount_inc cpu_nios2_oci_fifocount_inc_fifocount
    (
      .empty         (empty),
      .fifocount_inc (fifocount_inc_fifocount),
      .free2         (free2),
      .free3         (free3),
      .tm_count      (tm_count)
    );

  always @(posedge clk or negedge jrst_n)
    begin
      if (jrst_n == 0)
        begin
          fiforp <= 0;
          fifowp <= 0;
          fifocount <= 0;
          ovf_pending <= 1;
        end
      else 
        begin
          fifowp <= fifowp + fifowp_inc_fifowp;
          fifocount <= fifocount + fifocount_inc_fifocount;
          if (~empty)
              fiforp <= fiforp + 1;
          if (~trc_this || (~free2 & tm_count[1])   || (~free3 & &tm_count))
              ovf_pending <= 1;
          else if (atm_valid | dtm_valid)
              ovf_pending <= 0;
        end
    end


  assign fifohead = fifo_read_mux;
  assign tw = 0 ?  { (empty ?       4'h0       : fifohead[35 : 32]),   fifohead[31 : 0]}  : itm;
  assign fifo_0_enable = ((fifowp == 4'd0) && tm_count_ge1)  || (free2 && (fifowp1== 4'd0) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd0) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_0 <= 0;
      else if (fifo_0_enable)
          fifo_0 <= fifo_0_mux;
    end


  assign fifo_0_mux = (((fifowp == 4'd0) && itm_valid))? itm :
    (((fifowp == 4'd0) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd0) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd0) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd0) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd0) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_1_enable = ((fifowp == 4'd1) && tm_count_ge1)  || (free2 && (fifowp1== 4'd1) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd1) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_1 <= 0;
      else if (fifo_1_enable)
          fifo_1 <= fifo_1_mux;
    end


  assign fifo_1_mux = (((fifowp == 4'd1) && itm_valid))? itm :
    (((fifowp == 4'd1) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd1) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd1) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd1) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd1) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_2_enable = ((fifowp == 4'd2) && tm_count_ge1)  || (free2 && (fifowp1== 4'd2) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd2) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_2 <= 0;
      else if (fifo_2_enable)
          fifo_2 <= fifo_2_mux;
    end


  assign fifo_2_mux = (((fifowp == 4'd2) && itm_valid))? itm :
    (((fifowp == 4'd2) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd2) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd2) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd2) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd2) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_3_enable = ((fifowp == 4'd3) && tm_count_ge1)  || (free2 && (fifowp1== 4'd3) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd3) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_3 <= 0;
      else if (fifo_3_enable)
          fifo_3 <= fifo_3_mux;
    end


  assign fifo_3_mux = (((fifowp == 4'd3) && itm_valid))? itm :
    (((fifowp == 4'd3) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd3) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd3) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd3) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd3) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_4_enable = ((fifowp == 4'd4) && tm_count_ge1)  || (free2 && (fifowp1== 4'd4) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd4) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_4 <= 0;
      else if (fifo_4_enable)
          fifo_4 <= fifo_4_mux;
    end


  assign fifo_4_mux = (((fifowp == 4'd4) && itm_valid))? itm :
    (((fifowp == 4'd4) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd4) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd4) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd4) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd4) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_5_enable = ((fifowp == 4'd5) && tm_count_ge1)  || (free2 && (fifowp1== 4'd5) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd5) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_5 <= 0;
      else if (fifo_5_enable)
          fifo_5 <= fifo_5_mux;
    end


  assign fifo_5_mux = (((fifowp == 4'd5) && itm_valid))? itm :
    (((fifowp == 4'd5) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd5) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd5) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd5) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd5) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_6_enable = ((fifowp == 4'd6) && tm_count_ge1)  || (free2 && (fifowp1== 4'd6) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd6) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_6 <= 0;
      else if (fifo_6_enable)
          fifo_6 <= fifo_6_mux;
    end


  assign fifo_6_mux = (((fifowp == 4'd6) && itm_valid))? itm :
    (((fifowp == 4'd6) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd6) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd6) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd6) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd6) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_7_enable = ((fifowp == 4'd7) && tm_count_ge1)  || (free2 && (fifowp1== 4'd7) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd7) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_7 <= 0;
      else if (fifo_7_enable)
          fifo_7 <= fifo_7_mux;
    end


  assign fifo_7_mux = (((fifowp == 4'd7) && itm_valid))? itm :
    (((fifowp == 4'd7) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd7) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd7) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd7) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd7) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_8_enable = ((fifowp == 4'd8) && tm_count_ge1)  || (free2 && (fifowp1== 4'd8) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd8) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_8 <= 0;
      else if (fifo_8_enable)
          fifo_8 <= fifo_8_mux;
    end


  assign fifo_8_mux = (((fifowp == 4'd8) && itm_valid))? itm :
    (((fifowp == 4'd8) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd8) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd8) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd8) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd8) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_9_enable = ((fifowp == 4'd9) && tm_count_ge1)  || (free2 && (fifowp1== 4'd9) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd9) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_9 <= 0;
      else if (fifo_9_enable)
          fifo_9 <= fifo_9_mux;
    end


  assign fifo_9_mux = (((fifowp == 4'd9) && itm_valid))? itm :
    (((fifowp == 4'd9) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd9) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd9) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd9) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd9) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_10_enable = ((fifowp == 4'd10) && tm_count_ge1)  || (free2 && (fifowp1== 4'd10) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd10) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_10 <= 0;
      else if (fifo_10_enable)
          fifo_10 <= fifo_10_mux;
    end


  assign fifo_10_mux = (((fifowp == 4'd10) && itm_valid))? itm :
    (((fifowp == 4'd10) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd10) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd10) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd10) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd10) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_11_enable = ((fifowp == 4'd11) && tm_count_ge1)  || (free2 && (fifowp1== 4'd11) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd11) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_11 <= 0;
      else if (fifo_11_enable)
          fifo_11 <= fifo_11_mux;
    end


  assign fifo_11_mux = (((fifowp == 4'd11) && itm_valid))? itm :
    (((fifowp == 4'd11) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd11) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd11) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd11) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd11) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_12_enable = ((fifowp == 4'd12) && tm_count_ge1)  || (free2 && (fifowp1== 4'd12) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd12) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_12 <= 0;
      else if (fifo_12_enable)
          fifo_12 <= fifo_12_mux;
    end


  assign fifo_12_mux = (((fifowp == 4'd12) && itm_valid))? itm :
    (((fifowp == 4'd12) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd12) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd12) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd12) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd12) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_13_enable = ((fifowp == 4'd13) && tm_count_ge1)  || (free2 && (fifowp1== 4'd13) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd13) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_13 <= 0;
      else if (fifo_13_enable)
          fifo_13 <= fifo_13_mux;
    end


  assign fifo_13_mux = (((fifowp == 4'd13) && itm_valid))? itm :
    (((fifowp == 4'd13) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd13) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd13) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd13) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd13) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_14_enable = ((fifowp == 4'd14) && tm_count_ge1)  || (free2 && (fifowp1== 4'd14) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd14) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_14 <= 0;
      else if (fifo_14_enable)
          fifo_14 <= fifo_14_mux;
    end


  assign fifo_14_mux = (((fifowp == 4'd14) && itm_valid))? itm :
    (((fifowp == 4'd14) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd14) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd14) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd14) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd14) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign fifo_15_enable = ((fifowp == 4'd15) && tm_count_ge1)  || (free2 && (fifowp1== 4'd15) && tm_count_ge2)  ||(free3 && (fifowp2== 4'd15) && tm_count_ge3);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          fifo_15 <= 0;
      else if (fifo_15_enable)
          fifo_15 <= fifo_15_mux;
    end


  assign fifo_15_mux = (((fifowp == 4'd15) && itm_valid))? itm :
    (((fifowp == 4'd15) && atm_valid))? ovr_pending_atm :
    (((fifowp == 4'd15) && dtm_valid))? ovr_pending_dtm :
    (((fifowp1 == 4'd15) && (free2 & itm_valid & atm_valid)))? ovr_pending_atm :
    (((fifowp1 == 4'd15) && (free2 & itm_valid & dtm_valid)))? ovr_pending_dtm :
    (((fifowp1 == 4'd15) && (free2 & atm_valid & dtm_valid)))? ovr_pending_dtm :
    ovr_pending_dtm;

  assign tm_count_ge1 = |tm_count;
  assign tm_count_ge2 = tm_count[1];
  assign tm_count_ge3 = &tm_count;
  assign ovr_pending_atm = {ovf_pending, atm[34 : 0]};
  assign ovr_pending_dtm = {ovf_pending, dtm[34 : 0]};
  assign fifo_read_mux = (fiforp == 4'd0)? fifo_0 :
    (fiforp == 4'd1)? fifo_1 :
    (fiforp == 4'd2)? fifo_2 :
    (fiforp == 4'd3)? fifo_3 :
    (fiforp == 4'd4)? fifo_4 :
    (fiforp == 4'd5)? fifo_5 :
    (fiforp == 4'd6)? fifo_6 :
    (fiforp == 4'd7)? fifo_7 :
    (fiforp == 4'd8)? fifo_8 :
    (fiforp == 4'd9)? fifo_9 :
    (fiforp == 4'd10)? fifo_10 :
    (fiforp == 4'd11)? fifo_11 :
    (fiforp == 4'd12)? fifo_12 :
    (fiforp == 4'd13)? fifo_13 :
    (fiforp == 4'd14)? fifo_14 :
    fifo_15;


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_pib (
                           // inputs:
                            clk,
                            clkx2,
                            jrst_n,
                            tw,

                           // outputs:
                            tr_clk,
                            tr_data
                         )
;

  output           tr_clk;
  output  [ 17: 0] tr_data;
  input            clk;
  input            clkx2;
  input            jrst_n;
  input   [ 35: 0] tw;

  wire             phase;
  wire             tr_clk;
  reg              tr_clk_reg /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  wire    [ 17: 0] tr_data;
  reg     [ 17: 0] tr_data_reg /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg              x1 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg              x2 /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  assign phase = x1^x2;
  always @(posedge clk or negedge jrst_n)
    begin
      if (jrst_n == 0)
          x1 <= 0;
      else 
        x1 <= ~x1;
    end


  always @(posedge clkx2 or negedge jrst_n)
    begin
      if (jrst_n == 0)
        begin
          x2 <= 0;
          tr_clk_reg <= 0;
          tr_data_reg <= 0;
        end
      else 
        begin
          x2 <= x1;
          tr_clk_reg <= ~phase;
          tr_data_reg <= phase ?   tw[17 : 0] :   tw[35 : 18];
        end
    end


  assign tr_clk = 0 ? tr_clk_reg : 0;
  assign tr_data = 0 ? tr_data_reg : 0;

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_traceram_lpm_dram_bdp_component_module (
                                                    // inputs:
                                                     address_a,
                                                     address_b,
                                                     clock0,
                                                     clock1,
                                                     clocken0,
                                                     clocken1,
                                                     data_a,
                                                     data_b,
                                                     wren_a,
                                                     wren_b,

                                                    // outputs:
                                                     q_a,
                                                     q_b
                                                  )
;

  parameter lpm_file = "UNUSED";


  output  [ 35: 0] q_a;
  output  [ 35: 0] q_b;
  input   [  6: 0] address_a;
  input   [  6: 0] address_b;
  input            clock0;
  input            clock1;
  input            clocken0;
  input            clocken1;
  input   [ 35: 0] data_a;
  input   [ 35: 0] data_b;
  input            wren_a;
  input            wren_b;

  wire    [ 35: 0] q_a;
  wire    [ 35: 0] q_b;
  altsyncram the_altsyncram
    (
      .address_a (address_a),
      .address_b (address_b),
      .clock0 (clock0),
      .clock1 (clock1),
      .clocken0 (clocken0),
      .clocken1 (clocken1),
      .data_a (data_a),
      .data_b (data_b),
      .q_a (q_a),
      .q_b (q_b),
      .wren_a (wren_a),
      .wren_b (wren_b)
    );

  defparam the_altsyncram.address_aclr_a = "NONE",
           the_altsyncram.address_aclr_b = "NONE",
           the_altsyncram.address_reg_b = "CLOCK1",
           the_altsyncram.indata_aclr_a = "NONE",
           the_altsyncram.indata_aclr_b = "NONE",
           the_altsyncram.init_file = lpm_file,
           the_altsyncram.intended_device_family = "Stratix",
           the_altsyncram.lpm_type = "altsyncram",
           the_altsyncram.numwords_a = 128,
           the_altsyncram.numwords_b = 128,
           the_altsyncram.operation_mode = "BIDIR_DUAL_PORT",
           the_altsyncram.outdata_aclr_a = "NONE",
           the_altsyncram.outdata_aclr_b = "NONE",
           the_altsyncram.outdata_reg_a = "UNREGISTERED",
           the_altsyncram.outdata_reg_b = "UNREGISTERED",
           the_altsyncram.ram_block_type = "AUTO",
           the_altsyncram.read_during_write_mode_mixed_ports = "OLD_DATA",
           the_altsyncram.width_a = 36,
           the_altsyncram.width_b = 36,
           the_altsyncram.widthad_a = 7,
           the_altsyncram.widthad_b = 7,
           the_altsyncram.wrcontrol_aclr_a = "NONE",
           the_altsyncram.wrcontrol_aclr_b = "NONE";


endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci_im (
                          // inputs:
                           clk,
                           jdo,
                           jrst_n,
                           reset_n,
                           take_action_tracectrl,
                           take_action_tracemem_a,
                           take_action_tracemem_b,
                           take_no_action_tracemem_a,
                           trc_ctrl,
                           tw,

                          // outputs:
                           tracemem_on,
                           tracemem_trcdata,
                           tracemem_tw,
                           trc_enb,
                           trc_im_addr,
                           trc_wrap,
                           xbrk_wrap_traceoff
                        )
;

  output           tracemem_on;
  output  [ 35: 0] tracemem_trcdata;
  output           tracemem_tw;
  output           trc_enb;
  output  [  6: 0] trc_im_addr;
  output           trc_wrap;
  output           xbrk_wrap_traceoff;
  input            clk;
  input   [ 37: 0] jdo;
  input            jrst_n;
  input            reset_n;
  input            take_action_tracectrl;
  input            take_action_tracemem_a;
  input            take_action_tracemem_b;
  input            take_no_action_tracemem_a;
  input   [ 15: 0] trc_ctrl;
  input   [ 35: 0] tw;

  wire             tracemem_on;
  wire    [ 35: 0] tracemem_trcdata;
  wire             tracemem_tw;
  wire             trc_enb;
  reg     [  6: 0] trc_im_addr /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,D103,R101\""  */;
  wire    [ 35: 0] trc_im_data;
  reg     [ 16: 0] trc_jtag_addr /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=D101"  */;
  wire    [ 35: 0] trc_jtag_data;
  wire             trc_on_chip;
  reg              trc_wrap /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=\"D101,D103,R101\""  */;
  wire             tw_valid;
  wire    [ 35: 0] unused_bdpram_port_q_a;
  wire             xbrk_wrap_traceoff;
  assign trc_im_data = tw;
  assign trc_enb = trc_ctrl[0];
  assign trc_on_chip = ~trc_ctrl[8];
  assign tw_valid = |trc_im_data[35 : 32];
  assign xbrk_wrap_traceoff = trc_ctrl[10] & trc_wrap;
  always @(posedge clk or negedge jrst_n)
    begin
      if (jrst_n == 0)
        begin
          trc_im_addr <= 0;
          trc_wrap <= 0;
        end
      else if (!0)
        begin
          trc_im_addr <= 0;
          trc_wrap <= 0;
        end
      else if (take_action_tracectrl && 
                        (jdo[4] | jdo[3]))
        begin
          if (jdo[4])
              trc_im_addr <= 0;
          if (jdo[3])
              trc_wrap <= 0;
        end
      else if (trc_enb & trc_on_chip & tw_valid)
        begin
          trc_im_addr <= trc_im_addr+1;
          if (&trc_im_addr)
              trc_wrap <= 1;
        end
    end


//cpu_traceram_lpm_dram_bdp_component, which is an e_bdpram
cpu_traceram_lpm_dram_bdp_component_module cpu_traceram_lpm_dram_bdp_component
  (
    .address_a (trc_im_addr),
    .address_b (trc_jtag_addr),
    .clock0    (clk),
    .clock1    (clk),
    .clocken0  (1'b1),
    .clocken1  (1'b1),
    .data_a    (trc_im_data),
    .data_b    (jdo[36 : 1]),
    .q_a       (unused_bdpram_port_q_a),
    .q_b       (trc_jtag_data),
    .wren_a    (tw_valid & trc_enb),
    .wren_b    (take_action_tracemem_b)
  );

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          trc_jtag_addr <= 0;
      else if (take_action_tracemem_a ||
                  take_no_action_tracemem_a || 
                  take_action_tracemem_b)
          trc_jtag_addr <= take_action_tracemem_a ? 
                    jdo[35 : 19] : 
                    trc_jtag_addr + 1;

    end


  assign tracemem_trcdata = (0) ? 
    trc_jtag_data : 0;

  assign tracemem_tw = trc_wrap;
  assign tracemem_on = trc_enb;

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_performance_monitors 
;



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_nios2_oci (
                       // inputs:
                        D_en,
                        E_en,
                        E_valid,
                        F_pc,
                        M_cmp_result,
                        M_ctrl_exception,
                        M_ctrl_ld,
                        M_ctrl_st,
                        M_en,
                        M_mem_baddr,
                        M_op_beq,
                        M_op_bge,
                        M_op_bgeu,
                        M_op_blt,
                        M_op_bltu,
                        M_op_bne,
                        M_op_br,
                        M_op_bret,
                        M_op_call,
                        M_op_callr,
                        M_op_eret,
                        M_op_jmp,
                        M_op_ret,
                        M_pcb,
                        M_st_data,
                        M_valid,
                        M_wr_data_filtered,
                        address,
                        begintransfer,
                        byteenable,
                        chipselect,
                        clk,
                        debugaccess,
                        hbreak_enabled,
                        reset,
                        reset_n,
                        write,
                        writedata,

                       // outputs:
                        jtag_debug_module_debugaccess_to_roms,
                        oci_hbreak_req,
                        oci_ienable,
                        oci_single_step_mode,
                        readdata,
                        resetrequest
                     )
;

  output           jtag_debug_module_debugaccess_to_roms;
  output           oci_hbreak_req;
  output  [ 31: 0] oci_ienable;
  output           oci_single_step_mode;
  output  [ 31: 0] readdata;
  output           resetrequest;
  input            D_en;
  input            E_en;
  input            E_valid;
  input   [ 25: 0] F_pc;
  input            M_cmp_result;
  input            M_ctrl_exception;
  input            M_ctrl_ld;
  input            M_ctrl_st;
  input            M_en;
  input   [ 28: 0] M_mem_baddr;
  input            M_op_beq;
  input            M_op_bge;
  input            M_op_bgeu;
  input            M_op_blt;
  input            M_op_bltu;
  input            M_op_bne;
  input            M_op_br;
  input            M_op_bret;
  input            M_op_call;
  input            M_op_callr;
  input            M_op_eret;
  input            M_op_jmp;
  input            M_op_ret;
  input   [ 27: 0] M_pcb;
  input   [ 31: 0] M_st_data;
  input            M_valid;
  input   [ 31: 0] M_wr_data_filtered;
  input   [  8: 0] address;
  input            begintransfer;
  input   [  3: 0] byteenable;
  input            chipselect;
  input            clk;
  input            debugaccess;
  input            hbreak_enabled;
  input            reset;
  input            reset_n;
  input            write;
  input   [ 31: 0] writedata;

  wire    [ 31: 0] MonDReg;
  wire    [ 35: 0] atm;
  wire    [ 31: 0] break_readreg;
  wire             clkx2;
  wire    [ 28: 0] cpu_d_address;
  wire             cpu_d_read;
  wire    [ 31: 0] cpu_d_readdata;
  wire             cpu_d_wait;
  wire             cpu_d_write;
  wire    [ 31: 0] cpu_d_writedata;
  wire    [ 77: 0] dbrk0;
  wire    [ 77: 0] dbrk1;
  wire    [ 77: 0] dbrk2;
  wire    [ 77: 0] dbrk3;
  wire             dbrk_break;
  wire             dbrk_goto0;
  wire             dbrk_goto1;
  wire             dbrk_hit0;
  wire             dbrk_hit0_latch;
  wire             dbrk_hit1;
  wire             dbrk_hit1_latch;
  wire             dbrk_hit2;
  wire             dbrk_hit2_latch;
  wire             dbrk_hit3;
  wire             dbrk_hit3_latch;
  wire             dbrk_traceme;
  wire             dbrk_traceoff;
  wire             dbrk_traceon;
  wire             dbrk_trigout;
  wire             debugack;
  wire             debugreq;
  wire    [ 35: 0] dtm;
  wire             dummy_sink;
  wire    [ 35: 0] itm;
  wire    [ 37: 0] jdo;
  wire             jrst_n;
  wire             jtag_debug_module_debugaccess_to_roms;
  wire             monitor_error;
  wire             monitor_go;
  wire             monitor_ready;
  wire             oci_hbreak_req;
  wire    [ 31: 0] oci_ienable;
  wire    [ 31: 0] oci_ram_readdata;
  wire    [ 31: 0] oci_reg_readdata;
  wire             oci_single_step_mode;
  wire             ocireg_ers;
  wire             ocireg_mrs;
  wire    [ 31: 0] readdata;
  wire             resetlatch;
  wire             resetrequest;
  wire             st_ready_test_idle;
  wire             take_action_break_a;
  wire             take_action_break_b;
  wire             take_action_break_c;
  wire             take_action_ocimem_a;
  wire             take_action_ocimem_b;
  wire             take_action_ocireg;
  wire             take_action_tracectrl;
  wire             take_action_tracemem_a;
  wire             take_action_tracemem_b;
  wire             take_no_action_break_a;
  wire             take_no_action_break_b;
  wire             take_no_action_break_c;
  wire             take_no_action_ocimem_a;
  wire             take_no_action_tracemem_a;
  wire             tr_clk;
  wire    [ 17: 0] tr_data;
  wire             tracemem_on;
  wire    [ 35: 0] tracemem_trcdata;
  wire             tracemem_tw;
  wire    [ 15: 0] trc_ctrl;
  wire             trc_enb;
  wire    [  6: 0] trc_im_addr;
  wire             trc_on;
  wire             trc_wrap;
  wire             trigbrktype;
  wire             trigger_state_0;
  wire             trigger_state_1;
  wire             trigout;
  wire    [ 35: 0] tw;
  wire    [ 27: 0] xbrk0;
  wire    [ 27: 0] xbrk1;
  wire    [ 27: 0] xbrk2;
  wire    [ 27: 0] xbrk3;
  wire             xbrk_break;
  wire    [  7: 0] xbrk_ctrl0;
  wire    [  7: 0] xbrk_ctrl1;
  wire    [  7: 0] xbrk_ctrl2;
  wire    [  7: 0] xbrk_ctrl3;
  wire             xbrk_goto0;
  wire             xbrk_goto1;
  wire             xbrk_traceoff;
  wire             xbrk_traceon;
  wire             xbrk_trigout;
  wire             xbrk_wrap_traceoff;
  cpu_nios2_oci_debug the_cpu_nios2_oci_debug
    (
      .clk                  (clk),
      .dbrk_break           (dbrk_break),
      .debugack             (debugack),
      .debugreq             (debugreq),
      .hbreak_enabled       (hbreak_enabled),
      .jdo                  (jdo),
      .jrst_n               (jrst_n),
      .monitor_error        (monitor_error),
      .monitor_go           (monitor_go),
      .monitor_ready        (monitor_ready),
      .oci_hbreak_req       (oci_hbreak_req),
      .ocireg_ers           (ocireg_ers),
      .ocireg_mrs           (ocireg_mrs),
      .reset                (reset),
      .resetlatch           (resetlatch),
      .resetrequest         (resetrequest),
      .st_ready_test_idle   (st_ready_test_idle),
      .take_action_ocimem_a (take_action_ocimem_a),
      .take_action_ocireg   (take_action_ocireg),
      .xbrk_break           (xbrk_break)
    );

  cpu_nios2_ocimem the_cpu_nios2_ocimem
    (
      .MonDReg                 (MonDReg),
      .address                 (address),
      .begintransfer           (begintransfer),
      .byteenable              (byteenable),
      .chipselect              (chipselect),
      .clk                     (clk),
      .debugaccess             (debugaccess),
      .jdo                     (jdo),
      .jrst_n                  (jrst_n),
      .oci_ram_readdata        (oci_ram_readdata),
      .resetrequest            (resetrequest),
      .take_action_ocimem_a    (take_action_ocimem_a),
      .take_action_ocimem_b    (take_action_ocimem_b),
      .take_no_action_ocimem_a (take_no_action_ocimem_a),
      .write                   (write),
      .writedata               (writedata)
    );

  cpu_nios2_avalon_reg the_cpu_nios2_avalon_reg
    (
      .address              (address),
      .chipselect           (chipselect),
      .clk                  (clk),
      .debugaccess          (debugaccess),
      .monitor_error        (monitor_error),
      .monitor_go           (monitor_go),
      .monitor_ready        (monitor_ready),
      .oci_ienable          (oci_ienable),
      .oci_reg_readdata     (oci_reg_readdata),
      .oci_single_step_mode (oci_single_step_mode),
      .ocireg_ers           (ocireg_ers),
      .ocireg_mrs           (ocireg_mrs),
      .reset_n              (reset_n),
      .take_action_ocireg   (take_action_ocireg),
      .write                (write),
      .writedata            (writedata)
    );

  cpu_nios2_oci_break the_cpu_nios2_oci_break
    (
      .break_readreg          (break_readreg),
      .clk                    (clk),
      .dbrk0                  (dbrk0),
      .dbrk1                  (dbrk1),
      .dbrk2                  (dbrk2),
      .dbrk3                  (dbrk3),
      .dbrk_break             (dbrk_break),
      .dbrk_goto0             (dbrk_goto0),
      .dbrk_goto1             (dbrk_goto1),
      .dbrk_hit0              (dbrk_hit0),
      .dbrk_hit0_latch        (dbrk_hit0_latch),
      .dbrk_hit1              (dbrk_hit1),
      .dbrk_hit1_latch        (dbrk_hit1_latch),
      .dbrk_hit2              (dbrk_hit2),
      .dbrk_hit2_latch        (dbrk_hit2_latch),
      .dbrk_hit3              (dbrk_hit3),
      .dbrk_hit3_latch        (dbrk_hit3_latch),
      .jdo                    (jdo),
      .jrst_n                 (jrst_n),
      .reset_n                (reset_n),
      .take_action_break_a    (take_action_break_a),
      .take_action_break_b    (take_action_break_b),
      .take_action_break_c    (take_action_break_c),
      .take_no_action_break_a (take_no_action_break_a),
      .take_no_action_break_b (take_no_action_break_b),
      .take_no_action_break_c (take_no_action_break_c),
      .trigbrktype            (trigbrktype),
      .trigger_state_0        (trigger_state_0),
      .trigger_state_1        (trigger_state_1),
      .xbrk0                  (xbrk0),
      .xbrk1                  (xbrk1),
      .xbrk2                  (xbrk2),
      .xbrk3                  (xbrk3),
      .xbrk_ctrl0             (xbrk_ctrl0),
      .xbrk_ctrl1             (xbrk_ctrl1),
      .xbrk_ctrl2             (xbrk_ctrl2),
      .xbrk_ctrl3             (xbrk_ctrl3),
      .xbrk_goto0             (xbrk_goto0),
      .xbrk_goto1             (xbrk_goto1)
    );

  cpu_nios2_oci_xbrk the_cpu_nios2_oci_xbrk
    (
      .D_en            (D_en),
      .E_en            (E_en),
      .E_valid         (E_valid),
      .F_pc            (F_pc),
      .clk             (clk),
      .reset_n         (reset_n),
      .trigger_state_0 (trigger_state_0),
      .trigger_state_1 (trigger_state_1),
      .xbrk0           (xbrk0),
      .xbrk1           (xbrk1),
      .xbrk2           (xbrk2),
      .xbrk3           (xbrk3),
      .xbrk_break      (xbrk_break),
      .xbrk_ctrl0      (xbrk_ctrl0),
      .xbrk_ctrl1      (xbrk_ctrl1),
      .xbrk_ctrl2      (xbrk_ctrl2),
      .xbrk_ctrl3      (xbrk_ctrl3),
      .xbrk_goto0      (xbrk_goto0),
      .xbrk_goto1      (xbrk_goto1),
      .xbrk_traceoff   (xbrk_traceoff),
      .xbrk_traceon    (xbrk_traceon),
      .xbrk_trigout    (xbrk_trigout)
    );

  cpu_nios2_oci_dbrk the_cpu_nios2_oci_dbrk
    (
      .M_ctrl_ld          (M_ctrl_ld),
      .M_ctrl_st          (M_ctrl_st),
      .M_en               (M_en),
      .M_mem_baddr        (M_mem_baddr),
      .M_st_data          (M_st_data),
      .M_valid            (M_valid),
      .M_wr_data_filtered (M_wr_data_filtered),
      .clk                (clk),
      .cpu_d_address      (cpu_d_address),
      .cpu_d_read         (cpu_d_read),
      .cpu_d_readdata     (cpu_d_readdata),
      .cpu_d_wait         (cpu_d_wait),
      .cpu_d_write        (cpu_d_write),
      .cpu_d_writedata    (cpu_d_writedata),
      .dbrk0              (dbrk0),
      .dbrk1              (dbrk1),
      .dbrk2              (dbrk2),
      .dbrk3              (dbrk3),
      .dbrk_break         (dbrk_break),
      .dbrk_goto0         (dbrk_goto0),
      .dbrk_goto1         (dbrk_goto1),
      .dbrk_hit0          (dbrk_hit0),
      .dbrk_hit1          (dbrk_hit1),
      .dbrk_hit2          (dbrk_hit2),
      .dbrk_hit3          (dbrk_hit3),
      .dbrk_traceme       (dbrk_traceme),
      .dbrk_traceoff      (dbrk_traceoff),
      .dbrk_traceon       (dbrk_traceon),
      .dbrk_trigout       (dbrk_trigout),
      .debugack           (debugack),
      .reset_n            (reset_n),
      .trigger_state_0    (trigger_state_0),
      .trigger_state_1    (trigger_state_1)
    );

  cpu_nios2_oci_itrace the_cpu_nios2_oci_itrace
    (
      .M_cmp_result          (M_cmp_result),
      .M_ctrl_exception      (M_ctrl_exception),
      .M_en                  (M_en),
      .M_op_beq              (M_op_beq),
      .M_op_bge              (M_op_bge),
      .M_op_bgeu             (M_op_bgeu),
      .M_op_blt              (M_op_blt),
      .M_op_bltu             (M_op_bltu),
      .M_op_bne              (M_op_bne),
      .M_op_br               (M_op_br),
      .M_op_bret             (M_op_bret),
      .M_op_call             (M_op_call),
      .M_op_callr            (M_op_callr),
      .M_op_eret             (M_op_eret),
      .M_op_jmp              (M_op_jmp),
      .M_op_ret              (M_op_ret),
      .M_pcb                 (M_pcb),
      .M_valid               (M_valid),
      .M_wr_data_filtered    (M_wr_data_filtered),
      .clk                   (clk),
      .dbrk_traceoff         (dbrk_traceoff),
      .dbrk_traceon          (dbrk_traceon),
      .debugack              (debugack),
      .itm                   (itm),
      .jdo                   (jdo),
      .jrst_n                (jrst_n),
      .reset_n               (reset_n),
      .take_action_tracectrl (take_action_tracectrl),
      .trc_ctrl              (trc_ctrl),
      .trc_enb               (trc_enb),
      .trc_on                (trc_on),
      .xbrk_traceoff         (xbrk_traceoff),
      .xbrk_traceon          (xbrk_traceon),
      .xbrk_wrap_traceoff    (xbrk_wrap_traceoff)
    );

  cpu_nios2_oci_dtrace the_cpu_nios2_oci_dtrace
    (
      .atm             (atm),
      .clk             (clk),
      .cpu_d_address   (cpu_d_address),
      .cpu_d_read      (cpu_d_read),
      .cpu_d_readdata  (cpu_d_readdata),
      .cpu_d_wait      (cpu_d_wait),
      .cpu_d_write     (cpu_d_write),
      .cpu_d_writedata (cpu_d_writedata),
      .dtm             (dtm),
      .jrst_n          (jrst_n),
      .trc_ctrl        (trc_ctrl)
    );

  cpu_nios2_oci_fifo the_cpu_nios2_oci_fifo
    (
      .atm           (atm),
      .clk           (clk),
      .dbrk_traceme  (dbrk_traceme),
      .dbrk_traceoff (dbrk_traceoff),
      .dbrk_traceon  (dbrk_traceon),
      .dtm           (dtm),
      .itm           (itm),
      .jrst_n        (jrst_n),
      .reset_n       (reset_n),
      .trc_on        (trc_on),
      .tw            (tw)
    );

  cpu_nios2_oci_pib the_cpu_nios2_oci_pib
    (
      .clk     (clk),
      .clkx2   (clkx2),
      .jrst_n  (jrst_n),
      .tr_clk  (tr_clk),
      .tr_data (tr_data),
      .tw      (tw)
    );

  cpu_nios2_oci_im the_cpu_nios2_oci_im
    (
      .clk                       (clk),
      .jdo                       (jdo),
      .jrst_n                    (jrst_n),
      .reset_n                   (reset_n),
      .take_action_tracectrl     (take_action_tracectrl),
      .take_action_tracemem_a    (take_action_tracemem_a),
      .take_action_tracemem_b    (take_action_tracemem_b),
      .take_no_action_tracemem_a (take_no_action_tracemem_a),
      .tracemem_on               (tracemem_on),
      .tracemem_trcdata          (tracemem_trcdata),
      .tracemem_tw               (tracemem_tw),
      .trc_ctrl                  (trc_ctrl),
      .trc_enb                   (trc_enb),
      .trc_im_addr               (trc_im_addr),
      .trc_wrap                  (trc_wrap),
      .tw                        (tw),
      .xbrk_wrap_traceoff        (xbrk_wrap_traceoff)
    );

  assign trigout = dbrk_trigout | xbrk_trigout;
  assign readdata = address[8] ? oci_reg_readdata : oci_ram_readdata;
  assign jtag_debug_module_debugaccess_to_roms = debugack;
  cpu_jtag_debug_module_wrapper the_cpu_jtag_debug_module_wrapper
    (
      .MonDReg                   (MonDReg),
      .break_readreg             (break_readreg),
      .clk                       (clk),
      .dbrk_hit0_latch           (dbrk_hit0_latch),
      .dbrk_hit1_latch           (dbrk_hit1_latch),
      .dbrk_hit2_latch           (dbrk_hit2_latch),
      .dbrk_hit3_latch           (dbrk_hit3_latch),
      .debugack                  (debugack),
      .jdo                       (jdo),
      .jrst_n                    (jrst_n),
      .monitor_error             (monitor_error),
      .monitor_ready             (monitor_ready),
      .reset_n                   (reset_n),
      .resetlatch                (resetlatch),
      .st_ready_test_idle        (st_ready_test_idle),
      .take_action_break_a       (take_action_break_a),
      .take_action_break_b       (take_action_break_b),
      .take_action_break_c       (take_action_break_c),
      .take_action_ocimem_a      (take_action_ocimem_a),
      .take_action_ocimem_b      (take_action_ocimem_b),
      .take_action_tracectrl     (take_action_tracectrl),
      .take_action_tracemem_a    (take_action_tracemem_a),
      .take_action_tracemem_b    (take_action_tracemem_b),
      .take_no_action_break_a    (take_no_action_break_a),
      .take_no_action_break_b    (take_no_action_break_b),
      .take_no_action_break_c    (take_no_action_break_c),
      .take_no_action_ocimem_a   (take_no_action_ocimem_a),
      .take_no_action_tracemem_a (take_no_action_tracemem_a),
      .tracemem_on               (tracemem_on),
      .tracemem_trcdata          (tracemem_trcdata),
      .tracemem_tw               (tracemem_tw),
      .trc_im_addr               (trc_im_addr),
      .trc_on                    (trc_on),
      .trc_wrap                  (trc_wrap),
      .trigbrktype               (trigbrktype),
      .trigger_state_1           (trigger_state_1)
    );

  //dummy sink, which is an e_mux
  assign dummy_sink = tr_clk |
    tr_data |
    trigout |
    debugack;

  assign debugreq = 0;
  assign clkx2 = 0;

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu (
             // inputs:
              clk,
              d_irq,
              d_readdata,
              d_waitrequest,
              i_readdata,
              i_readdatavalid,
              i_waitrequest,
              jtag_debug_module_address,
              jtag_debug_module_begintransfer,
              jtag_debug_module_byteenable,
              jtag_debug_module_clk,
              jtag_debug_module_debugaccess,
              jtag_debug_module_reset,
              jtag_debug_module_select,
              jtag_debug_module_write,
              jtag_debug_module_writedata,
              reset_n,

             // outputs:
              d_address,
              d_byteenable,
              d_read,
              d_write,
              d_writedata,
              i_address,
              i_read,
              jtag_debug_module_debugaccess_to_roms,
              jtag_debug_module_readdata,
              jtag_debug_module_resetrequest
           )
;

  output  [ 28: 0] d_address;
  output  [  3: 0] d_byteenable;
  output           d_read;
  output           d_write;
  output  [ 31: 0] d_writedata;
  output  [ 27: 0] i_address;
  output           i_read;
  output           jtag_debug_module_debugaccess_to_roms;
  output  [ 31: 0] jtag_debug_module_readdata;
  output           jtag_debug_module_resetrequest;
  input            clk;
  input   [ 31: 0] d_irq;
  input   [ 31: 0] d_readdata;
  input            d_waitrequest;
  input   [ 31: 0] i_readdata;
  input            i_readdatavalid;
  input            i_waitrequest;
  input   [  8: 0] jtag_debug_module_address;
  input            jtag_debug_module_begintransfer;
  input   [  3: 0] jtag_debug_module_byteenable;
  input            jtag_debug_module_clk;
  input            jtag_debug_module_debugaccess;
  input            jtag_debug_module_reset;
  input            jtag_debug_module_select;
  input            jtag_debug_module_write;
  input   [ 31: 0] jtag_debug_module_writedata;
  input            reset_n;

  wire             D_br_cond_pred_taken;
  wire    [ 15: 0] D_br_offset_remaining;
  wire    [ 19: 0] D_br_offset_sex;
  wire             D_br_pred_not_taken;
  wire             D_br_pred_taken;
  wire    [ 27: 0] D_br_taken_baddr;
  wire    [ 25: 0] D_br_taken_waddr;
  reg     [ 10: 0] D_br_taken_waddr_partial;
  wire    [  1: 0] D_compare_op;
  wire    [ 12: 0] D_control_rd_data_without_mmu_regs;
  wire             D_ctrl_a_is_src;
  wire             D_ctrl_a_not_src;
  wire             D_ctrl_alu_signed_cmp;
  wire             D_ctrl_alu_subtract;
  wire             D_ctrl_b_is_dst;
  wire             D_ctrl_b_is_src;
  wire             D_ctrl_b_not_src;
  wire             D_ctrl_br;
  wire             D_ctrl_br_cond;
  wire             D_ctrl_br_uncond;
  wire             D_ctrl_break;
  wire             D_ctrl_crst;
  wire             D_ctrl_custom_combo;
  wire             D_ctrl_custom_multi;
  wire             D_ctrl_dst_data_sel_cmp;
  wire             D_ctrl_dst_data_sel_logic_result;
  wire             D_ctrl_dst_data_sel_pc_plus_one;
  wire             D_ctrl_exception;
  wire             D_ctrl_flush_pipe_always;
  wire             D_ctrl_hi_imm;
  wire             D_ctrl_ignore_dst;
  wire             D_ctrl_implicit_dst_eretaddr;
  wire             D_ctrl_implicit_dst_retaddr;
  wire             D_ctrl_jmp_direct;
  wire             D_ctrl_jmp_indirect;
  wire             D_ctrl_ld;
  wire             D_ctrl_ld_io;
  wire             D_ctrl_ld_non_io;
  wire             D_ctrl_ld_signed;
  wire             D_ctrl_mul_lsw;
  wire             D_ctrl_rdctl_inst;
  wire             D_ctrl_rot;
  wire             D_ctrl_shift_right_arith;
  wire             D_ctrl_shift_rot;
  wire             D_ctrl_shift_rot_left;
  wire             D_ctrl_shift_rot_right;
  wire             D_ctrl_src2_choose_imm;
  wire             D_ctrl_st;
  wire             D_ctrl_unsigned_lo_imm;
  wire             D_ctrl_wrctl_inst;
  wire    [  4: 0] D_dst_regnum;
  wire    [  4: 0] D_dstfield_regnum;
  wire             D_en;
  wire    [ 25: 0] D_extra_pc;
  wire    [ 27: 0] D_extra_pcb;
  wire             D_ic_fill_ignore;
  reg              D_ic_fill_same_tag_line;
  wire             D_ic_fill_starting;
  reg              D_ic_fill_starting_d1;
  wire             D_ic_want_fill;
  wire             D_ic_want_fill_unfiltered;
  wire             D_ic_want_fill_unfiltered_is_x;
  wire    [ 55: 0] D_inst;
  reg              D_inst_ram_hit;
  reg              D_issue;
  reg     [ 31: 0] D_iw;
  wire    [  4: 0] D_iw_a;
  wire    [  4: 0] D_iw_b;
  wire    [  4: 0] D_iw_c;
  wire    [  2: 0] D_iw_control_regnum;
  wire    [  7: 0] D_iw_custom_n;
  wire             D_iw_custom_readra;
  wire             D_iw_custom_readrb;
  wire             D_iw_custom_writerc;
  wire    [ 15: 0] D_iw_imm16;
  wire    [  1: 0] D_iw_memsz;
  wire    [  5: 0] D_iw_op;
  wire    [  5: 0] D_iw_opx;
  wire    [  4: 0] D_iw_shift_imm5;
  reg              D_kill;
  wire    [  1: 0] D_logic_op;
  wire             D_mem16;
  wire             D_mem32;
  wire             D_mem8;
  wire             D_op_add;
  wire             D_op_addi;
  wire             D_op_and;
  wire             D_op_andhi;
  wire             D_op_andi;
  wire             D_op_beq;
  wire             D_op_bge;
  wire             D_op_bgeu;
  wire             D_op_blt;
  wire             D_op_bltu;
  wire             D_op_bne;
  wire             D_op_br;
  wire             D_op_break;
  wire             D_op_bret;
  wire             D_op_call;
  wire             D_op_callr;
  wire             D_op_cmpeq;
  wire             D_op_cmpeqi;
  wire             D_op_cmpge;
  wire             D_op_cmpgei;
  wire             D_op_cmpgeu;
  wire             D_op_cmpgeui;
  wire             D_op_cmplt;
  wire             D_op_cmplti;
  wire             D_op_cmpltu;
  wire             D_op_cmpltui;
  wire             D_op_cmpne;
  wire             D_op_cmpnei;
  wire             D_op_crst;
  wire             D_op_custom;
  wire             D_op_div;
  wire             D_op_divu;
  wire             D_op_eret;
  wire             D_op_flushd;
  wire             D_op_flushda;
  wire             D_op_flushi;
  wire             D_op_flushp;
  wire             D_op_hbreak;
  wire             D_op_initd;
  wire             D_op_initi;
  wire             D_op_intr;
  wire             D_op_jmp;
  wire             D_op_jmpi;
  wire             D_op_ldb;
  wire             D_op_ldbio;
  wire             D_op_ldbu;
  wire             D_op_ldbuio;
  wire             D_op_ldh;
  wire             D_op_ldhio;
  wire             D_op_ldhu;
  wire             D_op_ldhuio;
  wire             D_op_ldw;
  wire             D_op_ldwio;
  wire             D_op_mul;
  wire             D_op_muli;
  wire             D_op_mulxss;
  wire             D_op_mulxsu;
  wire             D_op_mulxuu;
  wire             D_op_nextpc;
  wire             D_op_nor;
  wire             D_op_opx;
  wire             D_op_or;
  wire             D_op_orhi;
  wire             D_op_ori;
  wire             D_op_rdctl;
  wire             D_op_ret;
  wire             D_op_rol;
  wire             D_op_roli;
  wire             D_op_ror;
  wire             D_op_rsv02;
  wire             D_op_rsv09;
  wire             D_op_rsv10;
  wire             D_op_rsv17;
  wire             D_op_rsv18;
  wire             D_op_rsv19;
  wire             D_op_rsv25;
  wire             D_op_rsv26;
  wire             D_op_rsv29;
  wire             D_op_rsv31;
  wire             D_op_rsv33;
  wire             D_op_rsv34;
  wire             D_op_rsv41;
  wire             D_op_rsv42;
  wire             D_op_rsv49;
  wire             D_op_rsv56;
  wire             D_op_rsv57;
  wire             D_op_rsv61;
  wire             D_op_rsv62;
  wire             D_op_rsv63;
  wire             D_op_rsvx00;
  wire             D_op_rsvx10;
  wire             D_op_rsvx15;
  wire             D_op_rsvx17;
  wire             D_op_rsvx20;
  wire             D_op_rsvx21;
  wire             D_op_rsvx25;
  wire             D_op_rsvx33;
  wire             D_op_rsvx34;
  wire             D_op_rsvx35;
  wire             D_op_rsvx42;
  wire             D_op_rsvx43;
  wire             D_op_rsvx44;
  wire             D_op_rsvx47;
  wire             D_op_rsvx50;
  wire             D_op_rsvx51;
  wire             D_op_rsvx55;
  wire             D_op_rsvx56;
  wire             D_op_rsvx60;
  wire             D_op_rsvx63;
  wire             D_op_sll;
  wire             D_op_slli;
  wire             D_op_sra;
  wire             D_op_srai;
  wire             D_op_srl;
  wire             D_op_srli;
  wire             D_op_stb;
  wire             D_op_stbio;
  wire             D_op_sth;
  wire             D_op_sthio;
  wire             D_op_stw;
  wire             D_op_stwio;
  wire             D_op_sub;
  wire             D_op_sync;
  wire             D_op_trap;
  wire             D_op_wrctl;
  wire             D_op_xor;
  wire             D_op_xorhi;
  wire             D_op_xori;
  reg     [ 25: 0] D_pc;
  wire    [  6: 0] D_pc_line_field;
  wire    [  2: 0] D_pc_offset_field;
  reg     [ 25: 0] D_pc_plus_one;
  wire    [ 15: 0] D_pc_tag_field;
  wire    [ 27: 0] D_pcb;
  wire             D_refetch;
  wire             D_regnum_a_cmp_E;
  wire             D_regnum_a_cmp_M;
  wire             D_regnum_a_cmp_W;
  wire             D_regnum_b_cmp_E;
  wire             D_regnum_b_cmp_M;
  wire             D_regnum_b_cmp_W;
  wire    [ 31: 0] D_rf_a;
  wire    [ 31: 0] D_rf_b;
  wire             D_src1_hazard_E;
  wire             D_src1_hazard_M;
  wire             D_src1_hazard_W;
  wire    [ 31: 0] D_src1_prelim;
  wire             D_src2_hazard_E;
  wire             D_src2_hazard_M;
  wire             D_src2_hazard_W;
  wire    [ 31: 0] D_src2_imm;
  wire    [  1: 0] D_src2_imm_sel;
  wire    [ 31: 0] D_src2_prelim;
  wire             D_stall;
  wire             D_valid;
  wire    [ 55: 0] D_vinst;
  wire             D_wr_dst_reg;
  wire    [ 31: 0] E_alu_result;
  wire    [ 32: 0] E_arith_result;
  wire    [ 31: 0] E_arith_src1;
  wire    [ 31: 0] E_arith_src2;
  wire             E_br_actually_taken;
  wire             E_br_cond_pred_taken;
  wire             E_br_mispredict;
  reg     [ 27: 0] E_br_taken_baddr;
  wire             E_cancel;
  wire             E_cmp_result;
  reg     [  1: 0] E_compare_op;
  wire    [ 12: 0] E_control_rd_data;
  reg     [ 12: 0] E_control_rd_data_without_mmu_regs;
  reg              E_ctrl_a_not_src;
  wire             E_ctrl_a_not_src_nxt;
  reg              E_ctrl_alu_signed_cmp;
  wire             E_ctrl_alu_signed_cmp_nxt;
  reg              E_ctrl_alu_subtract;
  wire             E_ctrl_alu_subtract_nxt;
  reg              E_ctrl_b_is_dst;
  wire             E_ctrl_b_is_dst_nxt;
  reg              E_ctrl_b_not_src;
  wire             E_ctrl_b_not_src_nxt;
  reg              E_ctrl_br;
  reg              E_ctrl_br_cond;
  wire             E_ctrl_br_cond_nxt;
  wire             E_ctrl_br_nxt;
  reg              E_ctrl_br_uncond;
  wire             E_ctrl_br_uncond_nxt;
  reg              E_ctrl_break;
  wire             E_ctrl_break_nxt;
  wire             E_ctrl_crst;
  wire             E_ctrl_crst_nxt;
  wire             E_ctrl_custom_combo;
  wire             E_ctrl_custom_combo_nxt;
  wire             E_ctrl_custom_multi;
  wire             E_ctrl_custom_multi_nxt;
  reg              E_ctrl_dst_data_sel_cmp;
  wire             E_ctrl_dst_data_sel_cmp_nxt;
  reg              E_ctrl_dst_data_sel_logic_result;
  wire             E_ctrl_dst_data_sel_logic_result_nxt;
  reg              E_ctrl_dst_data_sel_pc_plus_one;
  wire             E_ctrl_dst_data_sel_pc_plus_one_nxt;
  reg              E_ctrl_exception;
  wire             E_ctrl_exception_nxt;
  reg              E_ctrl_flush_pipe_always;
  wire             E_ctrl_flush_pipe_always_nxt;
  reg              E_ctrl_hi_imm;
  wire             E_ctrl_hi_imm_nxt;
  reg              E_ctrl_ignore_dst;
  wire             E_ctrl_ignore_dst_nxt;
  reg              E_ctrl_implicit_dst_eretaddr;
  wire             E_ctrl_implicit_dst_eretaddr_nxt;
  reg              E_ctrl_implicit_dst_retaddr;
  wire             E_ctrl_implicit_dst_retaddr_nxt;
  wire             E_ctrl_invalidate_i;
  reg              E_ctrl_jmp_direct;
  wire             E_ctrl_jmp_direct_nxt;
  reg              E_ctrl_jmp_indirect;
  wire             E_ctrl_jmp_indirect_nxt;
  reg              E_ctrl_ld;
  reg              E_ctrl_ld_io;
  wire             E_ctrl_ld_io_nxt;
  reg              E_ctrl_ld_non_io;
  wire             E_ctrl_ld_non_io_nxt;
  wire             E_ctrl_ld_nxt;
  reg              E_ctrl_ld_signed;
  wire             E_ctrl_ld_signed_nxt;
  reg              E_ctrl_mul_lsw;
  wire             E_ctrl_mul_lsw_nxt;
  reg              E_ctrl_rdctl_inst;
  wire             E_ctrl_rdctl_inst_nxt;
  reg              E_ctrl_rot;
  wire             E_ctrl_rot_nxt;
  reg              E_ctrl_shift_right_arith;
  wire             E_ctrl_shift_right_arith_nxt;
  reg              E_ctrl_shift_rot;
  reg              E_ctrl_shift_rot_left;
  wire             E_ctrl_shift_rot_left_nxt;
  wire             E_ctrl_shift_rot_nxt;
  reg              E_ctrl_shift_rot_right;
  wire             E_ctrl_shift_rot_right_nxt;
  reg              E_ctrl_src2_choose_imm;
  wire             E_ctrl_src2_choose_imm_nxt;
  reg              E_ctrl_st;
  wire             E_ctrl_st_nxt;
  reg              E_ctrl_unsigned_lo_imm;
  wire             E_ctrl_unsigned_lo_imm_nxt;
  reg              E_ctrl_wrctl_inst;
  wire             E_ctrl_wrctl_inst_nxt;
  reg     [  4: 0] E_dst_regnum;
  wire             E_en;
  wire             E_eq;
  reg     [ 25: 0] E_extra_pc;
  wire    [ 27: 0] E_extra_pcb;
  wire             E_hbreak_req;
  wire    [ 55: 0] E_inst;
  reg     [ 31: 0] E_iw;
  wire    [  4: 0] E_iw_a;
  wire    [  4: 0] E_iw_b;
  wire    [  4: 0] E_iw_c;
  wire    [  2: 0] E_iw_control_regnum;
  wire    [  7: 0] E_iw_custom_n;
  wire             E_iw_custom_readra;
  wire             E_iw_custom_readrb;
  wire             E_iw_custom_writerc;
  wire    [ 15: 0] E_iw_imm16;
  wire    [  1: 0] E_iw_memsz;
  wire    [  5: 0] E_iw_op;
  wire    [  5: 0] E_iw_opx;
  wire    [  4: 0] E_iw_shift_imm5;
  wire    [ 27: 0] E_jmp_direct_target_baddr;
  wire    [ 25: 0] E_jmp_direct_target_waddr;
  reg     [  1: 0] E_logic_op;
  wire    [ 31: 0] E_logic_result;
  wire             E_lt;
  wire             E_mem16;
  wire             E_mem32;
  wire             E_mem8;
  wire    [ 28: 0] E_mem_baddr;
  wire    [  3: 0] E_mem_byte_en;
  wire             E_op_add;
  wire             E_op_addi;
  wire             E_op_and;
  wire             E_op_andhi;
  wire             E_op_andi;
  wire             E_op_beq;
  wire             E_op_bge;
  wire             E_op_bgeu;
  wire             E_op_blt;
  wire             E_op_bltu;
  wire             E_op_bne;
  wire             E_op_br;
  wire             E_op_break;
  wire             E_op_bret;
  wire             E_op_call;
  wire             E_op_callr;
  wire             E_op_cmpeq;
  wire             E_op_cmpeqi;
  wire             E_op_cmpge;
  wire             E_op_cmpgei;
  wire             E_op_cmpgeu;
  wire             E_op_cmpgeui;
  wire             E_op_cmplt;
  wire             E_op_cmplti;
  wire             E_op_cmpltu;
  wire             E_op_cmpltui;
  wire             E_op_cmpne;
  wire             E_op_cmpnei;
  wire             E_op_crst;
  wire             E_op_custom;
  wire             E_op_div;
  wire             E_op_divu;
  wire             E_op_eret;
  wire             E_op_flushd;
  wire             E_op_flushda;
  wire             E_op_flushi;
  wire             E_op_flushp;
  wire             E_op_hbreak;
  wire             E_op_initd;
  wire             E_op_initi;
  wire             E_op_intr;
  wire             E_op_jmp;
  wire             E_op_jmpi;
  wire             E_op_ldb;
  wire             E_op_ldbio;
  wire             E_op_ldbu;
  wire             E_op_ldbuio;
  wire             E_op_ldh;
  wire             E_op_ldhio;
  wire             E_op_ldhu;
  wire             E_op_ldhuio;
  wire             E_op_ldw;
  wire             E_op_ldwio;
  wire             E_op_mul;
  wire             E_op_muli;
  wire             E_op_mulxss;
  wire             E_op_mulxsu;
  wire             E_op_mulxuu;
  wire             E_op_nextpc;
  wire             E_op_nor;
  wire             E_op_opx;
  wire             E_op_or;
  wire             E_op_orhi;
  wire             E_op_ori;
  wire             E_op_rdctl;
  wire             E_op_ret;
  wire             E_op_rol;
  wire             E_op_roli;
  wire             E_op_ror;
  wire             E_op_rsv02;
  wire             E_op_rsv09;
  wire             E_op_rsv10;
  wire             E_op_rsv17;
  wire             E_op_rsv18;
  wire             E_op_rsv19;
  wire             E_op_rsv25;
  wire             E_op_rsv26;
  wire             E_op_rsv29;
  wire             E_op_rsv31;
  wire             E_op_rsv33;
  wire             E_op_rsv34;
  wire             E_op_rsv41;
  wire             E_op_rsv42;
  wire             E_op_rsv49;
  wire             E_op_rsv56;
  wire             E_op_rsv57;
  wire             E_op_rsv61;
  wire             E_op_rsv62;
  wire             E_op_rsv63;
  wire             E_op_rsvx00;
  wire             E_op_rsvx10;
  wire             E_op_rsvx15;
  wire             E_op_rsvx17;
  wire             E_op_rsvx20;
  wire             E_op_rsvx21;
  wire             E_op_rsvx25;
  wire             E_op_rsvx33;
  wire             E_op_rsvx34;
  wire             E_op_rsvx35;
  wire             E_op_rsvx42;
  wire             E_op_rsvx43;
  wire             E_op_rsvx44;
  wire             E_op_rsvx47;
  wire             E_op_rsvx50;
  wire             E_op_rsvx51;
  wire             E_op_rsvx55;
  wire             E_op_rsvx56;
  wire             E_op_rsvx60;
  wire             E_op_rsvx63;
  wire             E_op_sll;
  wire             E_op_slli;
  wire             E_op_sra;
  wire             E_op_srai;
  wire             E_op_srl;
  wire             E_op_srli;
  wire             E_op_stb;
  wire             E_op_stbio;
  wire             E_op_sth;
  wire             E_op_sthio;
  wire             E_op_stw;
  wire             E_op_stwio;
  wire             E_op_sub;
  wire             E_op_sync;
  wire             E_op_trap;
  wire             E_op_wrctl;
  wire             E_op_xor;
  wire             E_op_xorhi;
  wire             E_op_xori;
  reg     [ 25: 0] E_pc;
  reg     [ 27: 0] E_pcb;
  wire             E_rot_fill_bit;
  wire    [  7: 0] E_rot_left_mask;
  wire    [  7: 0] E_rot_mask;
  wire    [  4: 0] E_rot_n;
  wire             E_rot_pass0;
  wire             E_rot_pass1;
  wire             E_rot_pass2;
  wire             E_rot_pass3;
  wire    [ 31: 0] E_rot_prestep1;
  wire    [  7: 0] E_rot_right_mask;
  wire    [  4: 0] E_rot_rn;
  wire             E_rot_sel_fill0;
  wire             E_rot_sel_fill1;
  wire             E_rot_sel_fill2;
  wire             E_rot_sel_fill3;
  wire    [ 31: 0] E_src1;
  wire             E_src1_eq_src2;
  reg              E_src1_hazard_M;
  reg     [ 31: 0] E_src1_prelim;
  wire    [ 31: 0] E_src2;
  reg              E_src2_hazard_M;
  reg     [ 31: 0] E_src2_imm;
  reg     [ 31: 0] E_src2_prelim;
  wire    [ 31: 0] E_src2_reg;
  wire    [ 31: 0] E_st_data;
  wire             E_stall;
  wire    [  7: 0] E_stb_data;
  wire    [ 15: 0] E_sth_data;
  wire             E_valid;
  reg              E_valid_from_D;
  wire             E_valid_prior_to_hbreak;
  wire    [ 55: 0] E_vinst;
  wire             E_wr_dst_reg;
  reg              E_wr_dst_reg_from_D;
  wire             E_wrctl_bstatus;
  wire             E_wrctl_estatus;
  wire             E_wrctl_ienable;
  wire             E_wrctl_status;
  wire    [ 10: 0] F_br_taken_waddr_partial;
  wire             F_en;
  wire    [  9: 0] F_ic_data_rd_addr_nxt;
  wire    [ 15: 0] F_ic_desired_tag;
  wire             F_ic_fill_same_tag_line;
  wire             F_ic_hit;
  wire    [ 31: 0] F_ic_iw;
  wire    [ 15: 0] F_ic_tag_field;
  wire    [ 23: 0] F_ic_tag_rd;
  wire    [  6: 0] F_ic_tag_rd_addr_nxt;
  wire             F_ic_valid;
  wire    [  7: 0] F_ic_valid_bits;
  wire    [ 55: 0] F_inst;
  wire             F_inst_ram_hit;
  wire             F_issue;
  wire    [ 31: 0] F_iw;
  wire    [  4: 0] F_iw_a;
  wire    [  4: 0] F_iw_b;
  wire    [  4: 0] F_iw_c;
  wire    [  2: 0] F_iw_control_regnum;
  wire    [  7: 0] F_iw_custom_n;
  wire             F_iw_custom_readra;
  wire             F_iw_custom_readrb;
  wire             F_iw_custom_writerc;
  wire    [ 15: 0] F_iw_imm16;
  wire    [  1: 0] F_iw_memsz;
  wire    [  5: 0] F_iw_op;
  wire    [  5: 0] F_iw_opx;
  wire    [  4: 0] F_iw_shift_imm5;
  wire             F_kill;
  wire             F_mem16;
  wire             F_mem32;
  wire             F_mem8;
  wire             F_op_add;
  wire             F_op_addi;
  wire             F_op_and;
  wire             F_op_andhi;
  wire             F_op_andi;
  wire             F_op_beq;
  wire             F_op_bge;
  wire             F_op_bgeu;
  wire             F_op_blt;
  wire             F_op_bltu;
  wire             F_op_bne;
  wire             F_op_br;
  wire             F_op_break;
  wire             F_op_bret;
  wire             F_op_call;
  wire             F_op_callr;
  wire             F_op_cmpeq;
  wire             F_op_cmpeqi;
  wire             F_op_cmpge;
  wire             F_op_cmpgei;
  wire             F_op_cmpgeu;
  wire             F_op_cmpgeui;
  wire             F_op_cmplt;
  wire             F_op_cmplti;
  wire             F_op_cmpltu;
  wire             F_op_cmpltui;
  wire             F_op_cmpne;
  wire             F_op_cmpnei;
  wire             F_op_crst;
  wire             F_op_custom;
  wire             F_op_div;
  wire             F_op_divu;
  wire             F_op_eret;
  wire             F_op_flushd;
  wire             F_op_flushda;
  wire             F_op_flushi;
  wire             F_op_flushp;
  wire             F_op_hbreak;
  wire             F_op_initd;
  wire             F_op_initi;
  wire             F_op_intr;
  wire             F_op_jmp;
  wire             F_op_jmpi;
  wire             F_op_ldb;
  wire             F_op_ldbio;
  wire             F_op_ldbu;
  wire             F_op_ldbuio;
  wire             F_op_ldh;
  wire             F_op_ldhio;
  wire             F_op_ldhu;
  wire             F_op_ldhuio;
  wire             F_op_ldw;
  wire             F_op_ldwio;
  wire             F_op_mul;
  wire             F_op_muli;
  wire             F_op_mulxss;
  wire             F_op_mulxsu;
  wire             F_op_mulxuu;
  wire             F_op_nextpc;
  wire             F_op_nor;
  wire             F_op_opx;
  wire             F_op_or;
  wire             F_op_orhi;
  wire             F_op_ori;
  wire             F_op_rdctl;
  wire             F_op_ret;
  wire             F_op_rol;
  wire             F_op_roli;
  wire             F_op_ror;
  wire             F_op_rsv02;
  wire             F_op_rsv09;
  wire             F_op_rsv10;
  wire             F_op_rsv17;
  wire             F_op_rsv18;
  wire             F_op_rsv19;
  wire             F_op_rsv25;
  wire             F_op_rsv26;
  wire             F_op_rsv29;
  wire             F_op_rsv31;
  wire             F_op_rsv33;
  wire             F_op_rsv34;
  wire             F_op_rsv41;
  wire             F_op_rsv42;
  wire             F_op_rsv49;
  wire             F_op_rsv56;
  wire             F_op_rsv57;
  wire             F_op_rsv61;
  wire             F_op_rsv62;
  wire             F_op_rsv63;
  wire             F_op_rsvx00;
  wire             F_op_rsvx10;
  wire             F_op_rsvx15;
  wire             F_op_rsvx17;
  wire             F_op_rsvx20;
  wire             F_op_rsvx21;
  wire             F_op_rsvx25;
  wire             F_op_rsvx33;
  wire             F_op_rsvx34;
  wire             F_op_rsvx35;
  wire             F_op_rsvx42;
  wire             F_op_rsvx43;
  wire             F_op_rsvx44;
  wire             F_op_rsvx47;
  wire             F_op_rsvx50;
  wire             F_op_rsvx51;
  wire             F_op_rsvx55;
  wire             F_op_rsvx56;
  wire             F_op_rsvx60;
  wire             F_op_rsvx63;
  wire             F_op_sll;
  wire             F_op_slli;
  wire             F_op_sra;
  wire             F_op_srai;
  wire             F_op_srl;
  wire             F_op_srli;
  wire             F_op_stb;
  wire             F_op_stbio;
  wire             F_op_sth;
  wire             F_op_sthio;
  wire             F_op_stw;
  wire             F_op_stwio;
  wire             F_op_sub;
  wire             F_op_sync;
  wire             F_op_trap;
  wire             F_op_wrctl;
  wire             F_op_xor;
  wire             F_op_xorhi;
  wire             F_op_xori;
  reg     [ 25: 0] F_pc;
  wire    [  6: 0] F_pc_line_field;
  wire    [ 25: 0] F_pc_nxt;
  wire    [ 25: 0] F_pc_plus_one;
  wire    [ 15: 0] F_pc_tag_field;
  wire    [ 27: 0] F_pcb;
  wire    [ 27: 0] F_pcb_nxt;
  wire    [ 31: 0] F_ram_iw;
  wire    [  4: 0] F_ram_iw_a;
  wire    [  4: 0] F_ram_iw_b;
  wire    [  4: 0] F_ram_iw_c;
  wire    [  2: 0] F_ram_iw_control_regnum;
  wire    [  7: 0] F_ram_iw_custom_n;
  wire             F_ram_iw_custom_readra;
  wire             F_ram_iw_custom_readrb;
  wire             F_ram_iw_custom_writerc;
  wire    [ 15: 0] F_ram_iw_imm16;
  wire    [  1: 0] F_ram_iw_memsz;
  wire    [  5: 0] F_ram_iw_op;
  wire    [  5: 0] F_ram_iw_opx;
  wire    [  4: 0] F_ram_iw_shift_imm5;
  wire             F_ram_mem16;
  wire             F_ram_mem32;
  wire             F_ram_mem8;
  wire             F_sel_instruction_master;
  wire             F_stall;
  wire    [ 55: 0] F_vinst;
  reg     [ 31: 0] M2_rot;
  wire             M2_rot_fill_bit;
  wire    [  7: 0] M2_rot_lut0;
  wire    [  7: 0] M2_rot_lut1;
  wire    [  7: 0] M2_rot_lut2;
  wire    [  7: 0] M2_rot_lut3;
  wire    [  7: 0] M2_rot_mask;
  wire             M2_rot_pass0;
  wire             M2_rot_pass1;
  wire             M2_rot_pass2;
  wire             M2_rot_pass3;
  wire             M2_rot_sel_fill0;
  wire             M2_rot_sel_fill1;
  wire             M2_rot_sel_fill2;
  wire             M2_rot_sel_fill3;
  reg     [ 31: 0] M_alu_result;
  reg              M_br_mispredict;
  reg     [ 27: 0] M_br_taken_baddr;
  reg              M_bstatus_reg;
  wire             M_bstatus_reg_inst_nxt;
  wire             M_bstatus_reg_nxt;
  reg              M_cmp_result;
  reg              M_ctrl_br_cond;
  wire             M_ctrl_br_cond_nxt;
  reg              M_ctrl_break;
  wire             M_ctrl_break_nxt;
  wire             M_ctrl_crst;
  wire             M_ctrl_crst_nxt;
  wire             M_ctrl_custom_multi;
  wire             M_ctrl_custom_multi_nxt;
  reg              M_ctrl_exception;
  wire             M_ctrl_exception_nxt;
  reg              M_ctrl_invalidate_i;
  wire             M_ctrl_invalidate_i_nxt;
  reg              M_ctrl_ld;
  reg              M_ctrl_ld_io;
  wire             M_ctrl_ld_io_nxt;
  reg              M_ctrl_ld_non_io;
  wire             M_ctrl_ld_non_io_nxt;
  wire             M_ctrl_ld_nxt;
  reg              M_ctrl_ld_signed;
  wire             M_ctrl_ld_signed_nxt;
  reg              M_ctrl_mul_lsw;
  wire             M_ctrl_mul_lsw_nxt;
  reg              M_ctrl_rot;
  wire             M_ctrl_rot_nxt;
  reg              M_ctrl_shift_right_arith;
  wire             M_ctrl_shift_right_arith_nxt;
  reg              M_ctrl_shift_rot;
  reg              M_ctrl_shift_rot_left;
  wire             M_ctrl_shift_rot_left_nxt;
  wire             M_ctrl_shift_rot_nxt;
  reg              M_ctrl_shift_rot_right;
  wire             M_ctrl_shift_rot_right_nxt;
  reg              M_ctrl_st;
  wire             M_ctrl_st_nxt;
  reg     [  4: 0] M_dst_regnum;
  wire             M_en;
  reg              M_estatus_reg;
  wire             M_estatus_reg_inst_nxt;
  wire             M_estatus_reg_nxt;
  wire    [ 31: 0] M_fwd_reg_data;
  reg     [ 31: 0] M_ienable_reg;
  wire    [ 31: 0] M_ienable_reg_nxt;
  wire    [ 55: 0] M_inst;
  reg     [ 31: 0] M_ipending_reg;
  wire    [ 31: 0] M_ipending_reg_nxt;
  reg     [ 31: 0] M_iw /* synthesis ALTERA_IP_DEBUG_VISIBLE = 1 */;
  wire    [  4: 0] M_iw_a;
  wire    [  4: 0] M_iw_b;
  wire    [  4: 0] M_iw_c;
  wire    [  2: 0] M_iw_control_regnum;
  wire    [  7: 0] M_iw_custom_n;
  wire             M_iw_custom_readra;
  wire             M_iw_custom_readrb;
  wire             M_iw_custom_writerc;
  wire    [ 15: 0] M_iw_imm16;
  wire    [  1: 0] M_iw_memsz;
  wire    [  5: 0] M_iw_op;
  wire    [  5: 0] M_iw_opx;
  wire    [  4: 0] M_iw_shift_imm5;
  wire             M_ld_align_sh16;
  wire             M_ld_align_sh8;
  wire             M_ld_stall;
  wire             M_mem16;
  wire             M_mem32;
  wire             M_mem8;
  wire    [ 28: 0] M_mem_baddr;
  reg     [  3: 0] M_mem_byte_en;
  wire    [ 31: 0] M_mul_cell_result;
  reg     [  2: 0] M_mul_cnt;
  wire    [  2: 0] M_mul_cnt_nxt;
  wire             M_mul_done_nxt;
  reg     [ 31: 0] M_mul_partial_prod;
  wire    [ 31: 0] M_mul_partial_prod_nxt;
  reg     [ 31: 0] M_mul_result;
  wire    [ 31: 0] M_mul_result_nxt;
  reg     [ 31: 0] M_mul_src1;
  wire    [ 31: 0] M_mul_src1_nxt;
  reg     [ 31: 0] M_mul_src2;
  wire    [ 31: 0] M_mul_src2_nxt;
  reg              M_mul_stall;
  reg              M_mul_stall_d1;
  reg              M_mul_stall_d2;
  reg              M_mul_stall_d3;
  wire             M_mul_stall_nxt;
  wire             M_op_add;
  wire             M_op_addi;
  wire             M_op_and;
  wire             M_op_andhi;
  wire             M_op_andi;
  wire             M_op_beq;
  wire             M_op_bge;
  wire             M_op_bgeu;
  wire             M_op_blt;
  wire             M_op_bltu;
  wire             M_op_bne;
  wire             M_op_br;
  wire             M_op_break;
  wire             M_op_bret;
  wire             M_op_call;
  wire             M_op_callr;
  wire             M_op_cmpeq;
  wire             M_op_cmpeqi;
  wire             M_op_cmpge;
  wire             M_op_cmpgei;
  wire             M_op_cmpgeu;
  wire             M_op_cmpgeui;
  wire             M_op_cmplt;
  wire             M_op_cmplti;
  wire             M_op_cmpltu;
  wire             M_op_cmpltui;
  wire             M_op_cmpne;
  wire             M_op_cmpnei;
  wire             M_op_crst;
  wire             M_op_custom;
  wire             M_op_div;
  wire             M_op_divu;
  wire             M_op_eret;
  wire             M_op_flushd;
  wire             M_op_flushda;
  wire             M_op_flushi;
  wire             M_op_flushp;
  wire             M_op_hbreak;
  wire             M_op_initd;
  wire             M_op_initi;
  wire             M_op_intr;
  wire             M_op_jmp;
  wire             M_op_jmpi;
  wire             M_op_ldb;
  wire             M_op_ldbio;
  wire             M_op_ldbu;
  wire             M_op_ldbuio;
  wire             M_op_ldh;
  wire             M_op_ldhio;
  wire             M_op_ldhu;
  wire             M_op_ldhuio;
  wire             M_op_ldw;
  wire             M_op_ldwio;
  wire             M_op_mul;
  wire             M_op_muli;
  wire             M_op_mulxss;
  wire             M_op_mulxsu;
  wire             M_op_mulxuu;
  wire             M_op_nextpc;
  wire             M_op_nor;
  wire             M_op_opx;
  wire             M_op_or;
  wire             M_op_orhi;
  wire             M_op_ori;
  wire             M_op_rdctl;
  wire             M_op_ret;
  wire             M_op_rol;
  wire             M_op_roli;
  wire             M_op_ror;
  wire             M_op_rsv02;
  wire             M_op_rsv09;
  wire             M_op_rsv10;
  wire             M_op_rsv17;
  wire             M_op_rsv18;
  wire             M_op_rsv19;
  wire             M_op_rsv25;
  wire             M_op_rsv26;
  wire             M_op_rsv29;
  wire             M_op_rsv31;
  wire             M_op_rsv33;
  wire             M_op_rsv34;
  wire             M_op_rsv41;
  wire             M_op_rsv42;
  wire             M_op_rsv49;
  wire             M_op_rsv56;
  wire             M_op_rsv57;
  wire             M_op_rsv61;
  wire             M_op_rsv62;
  wire             M_op_rsv63;
  wire             M_op_rsvx00;
  wire             M_op_rsvx10;
  wire             M_op_rsvx15;
  wire             M_op_rsvx17;
  wire             M_op_rsvx20;
  wire             M_op_rsvx21;
  wire             M_op_rsvx25;
  wire             M_op_rsvx33;
  wire             M_op_rsvx34;
  wire             M_op_rsvx35;
  wire             M_op_rsvx42;
  wire             M_op_rsvx43;
  wire             M_op_rsvx44;
  wire             M_op_rsvx47;
  wire             M_op_rsvx50;
  wire             M_op_rsvx51;
  wire             M_op_rsvx55;
  wire             M_op_rsvx56;
  wire             M_op_rsvx60;
  wire             M_op_rsvx63;
  wire             M_op_sll;
  wire             M_op_slli;
  wire             M_op_sra;
  wire             M_op_srai;
  wire             M_op_srl;
  wire             M_op_srli;
  wire             M_op_stb;
  wire             M_op_stbio;
  wire             M_op_sth;
  wire             M_op_sthio;
  wire             M_op_stw;
  wire             M_op_stwio;
  wire             M_op_sub;
  wire             M_op_sync;
  wire             M_op_trap;
  wire             M_op_wrctl;
  wire             M_op_xor;
  wire             M_op_xorhi;
  wire             M_op_xori;
  reg     [ 27: 0] M_pcb /* synthesis ALTERA_IP_DEBUG_VISIBLE = 1 */;
  reg              M_pipe_flush;
  wire    [ 27: 0] M_pipe_flush_baddr;
  wire    [ 27: 0] M_pipe_flush_baddr_nxt;
  wire             M_pipe_flush_nxt;
  reg     [ 25: 0] M_pipe_flush_waddr;
  wire    [ 25: 0] M_pipe_flush_waddr_nxt;
  reg              M_rot_fill_bit;
  reg     [  7: 0] M_rot_mask;
  reg              M_rot_pass0;
  reg              M_rot_pass1;
  reg              M_rot_pass2;
  reg              M_rot_pass3;
  wire    [ 31: 0] M_rot_prestep2;
  reg     [  4: 0] M_rot_rn;
  reg              M_rot_sel_fill0;
  reg              M_rot_sel_fill1;
  reg              M_rot_sel_fill2;
  reg              M_rot_sel_fill3;
  reg     [ 31: 0] M_rot_step1;
  reg     [  1: 0] M_shift_rot_cnt;
  wire    [  1: 0] M_shift_rot_cnt_nxt;
  wire             M_shift_rot_done_nxt;
  reg     [ 31: 0] M_shift_rot_result;
  reg              M_shift_rot_stall;
  wire             M_shift_rot_stall_nxt;
  reg     [ 31: 0] M_st_data;
  wire             M_st_stall;
  wire             M_stall;
  wire             M_status_reg;
  reg              M_status_reg_pie;
  wire             M_status_reg_pie_inst_nxt;
  wire             M_status_reg_pie_nxt;
  wire             M_valid;
  reg              M_valid_from_E /* synthesis ALTERA_IP_DEBUG_VISIBLE = 1 */;
  wire    [ 55: 0] M_vinst;
  wire    [ 31: 0] M_wr_data_filtered;
  wire    [ 31: 0] M_wr_data_unfiltered;
  reg              M_wr_dst_reg;
  reg     [ 31: 0] Mn_rot_step2;
  wire             W_ctrl_crst;
  wire             W_ctrl_crst_nxt;
  reg     [  4: 0] W_dst_regnum;
  wire             W_en;
  wire    [ 55: 0] W_inst;
  reg     [ 31: 0] W_iw;
  wire    [  4: 0] W_iw_a;
  wire    [  4: 0] W_iw_b;
  wire    [  4: 0] W_iw_c;
  wire    [  2: 0] W_iw_control_regnum;
  wire    [  7: 0] W_iw_custom_n;
  wire             W_iw_custom_readra;
  wire             W_iw_custom_readrb;
  wire             W_iw_custom_writerc;
  wire    [ 15: 0] W_iw_imm16;
  wire    [  1: 0] W_iw_memsz;
  wire    [  5: 0] W_iw_op;
  wire    [  5: 0] W_iw_opx;
  wire    [  4: 0] W_iw_shift_imm5;
  wire             W_mem16;
  wire             W_mem32;
  wire             W_mem8;
  wire             W_op_add;
  wire             W_op_addi;
  wire             W_op_and;
  wire             W_op_andhi;
  wire             W_op_andi;
  wire             W_op_beq;
  wire             W_op_bge;
  wire             W_op_bgeu;
  wire             W_op_blt;
  wire             W_op_bltu;
  wire             W_op_bne;
  wire             W_op_br;
  wire             W_op_break;
  wire             W_op_bret;
  wire             W_op_call;
  wire             W_op_callr;
  wire             W_op_cmpeq;
  wire             W_op_cmpeqi;
  wire             W_op_cmpge;
  wire             W_op_cmpgei;
  wire             W_op_cmpgeu;
  wire             W_op_cmpgeui;
  wire             W_op_cmplt;
  wire             W_op_cmplti;
  wire             W_op_cmpltu;
  wire             W_op_cmpltui;
  wire             W_op_cmpne;
  wire             W_op_cmpnei;
  wire             W_op_crst;
  wire             W_op_custom;
  wire             W_op_div;
  wire             W_op_divu;
  wire             W_op_eret;
  wire             W_op_flushd;
  wire             W_op_flushda;
  wire             W_op_flushi;
  wire             W_op_flushp;
  wire             W_op_hbreak;
  wire             W_op_initd;
  wire             W_op_initi;
  wire             W_op_intr;
  wire             W_op_jmp;
  wire             W_op_jmpi;
  wire             W_op_ldb;
  wire             W_op_ldbio;
  wire             W_op_ldbu;
  wire             W_op_ldbuio;
  wire             W_op_ldh;
  wire             W_op_ldhio;
  wire             W_op_ldhu;
  wire             W_op_ldhuio;
  wire             W_op_ldw;
  wire             W_op_ldwio;
  wire             W_op_mul;
  wire             W_op_muli;
  wire             W_op_mulxss;
  wire             W_op_mulxsu;
  wire             W_op_mulxuu;
  wire             W_op_nextpc;
  wire             W_op_nor;
  wire             W_op_opx;
  wire             W_op_or;
  wire             W_op_orhi;
  wire             W_op_ori;
  wire             W_op_rdctl;
  wire             W_op_ret;
  wire             W_op_rol;
  wire             W_op_roli;
  wire             W_op_ror;
  wire             W_op_rsv02;
  wire             W_op_rsv09;
  wire             W_op_rsv10;
  wire             W_op_rsv17;
  wire             W_op_rsv18;
  wire             W_op_rsv19;
  wire             W_op_rsv25;
  wire             W_op_rsv26;
  wire             W_op_rsv29;
  wire             W_op_rsv31;
  wire             W_op_rsv33;
  wire             W_op_rsv34;
  wire             W_op_rsv41;
  wire             W_op_rsv42;
  wire             W_op_rsv49;
  wire             W_op_rsv56;
  wire             W_op_rsv57;
  wire             W_op_rsv61;
  wire             W_op_rsv62;
  wire             W_op_rsv63;
  wire             W_op_rsvx00;
  wire             W_op_rsvx10;
  wire             W_op_rsvx15;
  wire             W_op_rsvx17;
  wire             W_op_rsvx20;
  wire             W_op_rsvx21;
  wire             W_op_rsvx25;
  wire             W_op_rsvx33;
  wire             W_op_rsvx34;
  wire             W_op_rsvx35;
  wire             W_op_rsvx42;
  wire             W_op_rsvx43;
  wire             W_op_rsvx44;
  wire             W_op_rsvx47;
  wire             W_op_rsvx50;
  wire             W_op_rsvx51;
  wire             W_op_rsvx55;
  wire             W_op_rsvx56;
  wire             W_op_rsvx60;
  wire             W_op_rsvx63;
  wire             W_op_sll;
  wire             W_op_slli;
  wire             W_op_sra;
  wire             W_op_srai;
  wire             W_op_srl;
  wire             W_op_srli;
  wire             W_op_stb;
  wire             W_op_stbio;
  wire             W_op_sth;
  wire             W_op_sthio;
  wire             W_op_stw;
  wire             W_op_stwio;
  wire             W_op_sub;
  wire             W_op_sync;
  wire             W_op_trap;
  wire             W_op_wrctl;
  wire             W_op_xor;
  wire             W_op_xorhi;
  wire             W_op_xori;
  reg     [ 27: 0] W_pcb;
  wire             W_stall;
  reg              W_valid;
  wire    [ 55: 0] W_vinst;
  reg     [ 31: 0] W_wr_data;
  reg              W_wr_dst_reg;
  wire             av_fill_bit;
  wire    [ 15: 0] av_ld16_data;
  reg              av_ld_aligning_data;
  wire    [  7: 0] av_ld_byte0_data;
  wire    [  7: 0] av_ld_byte1_data;
  wire    [  7: 0] av_ld_byte2_data;
  wire    [  7: 0] av_ld_byte3_data;
  wire    [ 31: 0] av_ld_data_aligned_nxt;
  reg     [ 31: 0] av_ld_data_aligned_or_div;
  wire             av_ld_data_transfer;
  reg              av_ld_or_div_done;
  wire             av_ld_req;
  wire             av_sign_bit;
  wire    [  1: 0] av_sign_bit_16;
  wire             av_st_req;
  wire    [ 28: 0] d_address;
  wire    [  3: 0] d_byteenable;
  reg              d_read;
  wire             d_read_nxt;
  reg     [ 31: 0] d_readdata_d1;
  reg              d_write;
  wire             d_write_nxt;
  wire    [ 31: 0] d_writedata;
  reg              hbreak_enabled;
  wire             hbreak_req;
  wire    [ 27: 0] i_address;
  reg              i_read;
  wire             i_read_nxt;
  reg     [ 31: 0] i_readdata_d1;
  reg              i_readdatavalid_d1;
  wire    [ 31: 0] iactive;
  reg              ic_fill_active;
  wire             ic_fill_active_nxt;
  reg     [  3: 0] ic_fill_ap_cnt;
  wire    [  3: 0] ic_fill_ap_cnt_nxt;
  wire             ic_fill_ap_last_word;
  reg     [  2: 0] ic_fill_ap_offset;
  wire    [  2: 0] ic_fill_ap_offset_nxt;
  wire             ic_fill_done;
  wire             ic_fill_dp_last_word;
  reg     [  2: 0] ic_fill_dp_offset;
  wire             ic_fill_dp_offset_en;
  wire    [  2: 0] ic_fill_dp_offset_nxt;
  reg     [  2: 0] ic_fill_initial_offset;
  reg     [  6: 0] ic_fill_line;
  reg              ic_fill_prevent_refill;
  wire             ic_fill_prevent_refill_nxt;
  wire             ic_fill_req_accepted;
  reg     [ 15: 0] ic_fill_tag;
  wire    [  7: 0] ic_fill_valid_bit_new;
  reg     [  7: 0] ic_fill_valid_bits;
  wire             ic_fill_valid_bits_en;
  wire    [  7: 0] ic_fill_valid_bits_nxt;
  reg              ic_tag_clr_valid_bits;
  wire             ic_tag_clr_valid_bits_nxt;
  reg     [  6: 0] ic_tag_wraddress;
  wire    [  6: 0] ic_tag_wraddress_nxt;
  wire    [ 23: 0] ic_tag_wrdata;
  wire             ic_tag_wren;
  wire             intr_req;
  wire             jtag_debug_module_debugaccess_to_roms;
  wire    [ 31: 0] jtag_debug_module_readdata;
  wire             jtag_debug_module_resetrequest;
  reg              latched_oci_tb_hbreak_req;
  wire             latched_oci_tb_hbreak_req_next;
  wire             oci_hbreak_req;
  wire    [ 31: 0] oci_ienable;
  wire             oci_single_step_mode;
  wire             oci_tb_hbreak_req;
  reg              reset_d1;
  reg              wait_for_one_post_bret_inst;
  //the_cpu_test_bench, which is an e_instance
  cpu_test_bench the_cpu_test_bench
    (
      .E_src1               (E_src1),
      .E_src1_eq_src2       (E_src1_eq_src2),
      .E_src2               (E_src2),
      .E_valid              (E_valid),
      .M_bstatus_reg        (M_bstatus_reg),
      .M_cmp_result         (M_cmp_result),
      .M_ctrl_exception     (M_ctrl_exception),
      .M_ctrl_ld_non_io     (M_ctrl_ld_non_io),
      .M_dst_regnum         (M_dst_regnum),
      .M_en                 (M_en),
      .M_estatus_reg        (M_estatus_reg),
      .M_ienable_reg        (M_ienable_reg),
      .M_ipending_reg       (M_ipending_reg),
      .M_iw                 (M_iw),
      .M_mem_baddr          (M_mem_baddr),
      .M_mem_byte_en        (M_mem_byte_en),
      .M_op_hbreak          (M_op_hbreak),
      .M_op_intr            (M_op_intr),
      .M_pcb                (M_pcb),
      .M_st_data            (M_st_data),
      .M_status_reg         (M_status_reg),
      .M_valid              (M_valid),
      .M_wr_data_filtered   (M_wr_data_filtered),
      .M_wr_data_unfiltered (M_wr_data_unfiltered),
      .M_wr_dst_reg         (M_wr_dst_reg),
      .W_dst_regnum         (W_dst_regnum),
      .W_iw                 (W_iw),
      .W_iw_op              (W_iw_op),
      .W_iw_opx             (W_iw_opx),
      .W_pcb                (W_pcb),
      .W_valid              (W_valid),
      .W_wr_data            (W_wr_data),
      .W_wr_dst_reg         (W_wr_dst_reg),
      .clk                  (clk),
      .d_address            (d_address),
      .d_byteenable         (d_byteenable),
      .d_read               (d_read),
      .d_write              (d_write),
      .i_address            (i_address),
      .i_read               (i_read),
      .i_readdatavalid      (i_readdatavalid),
      .reset_n              (reset_n)
    );

  assign F_op_rsv02 = F_iw_op[5 : 0] == 2;
  assign F_op_cmplti = F_iw_op[5 : 0] == 16;
  assign F_op_rsv18 = F_iw_op[5 : 0] == 18;
  assign F_op_rsv26 = F_iw_op[5 : 0] == 26;
  assign F_op_rsv42 = F_iw_op[5 : 0] == 42;
  assign F_op_ldbio = F_iw_op[5 : 0] == 39;
  assign F_op_ldbu = F_iw_op[5 : 0] == 3;
  assign F_op_orhi = F_iw_op[5 : 0] == 52;
  assign F_op_rsv31 = F_iw_op[5 : 0] == 31;
  assign F_op_bge = F_iw_op[5 : 0] == 14;
  assign F_op_br = F_iw_op[5 : 0] == 6;
  assign F_op_ldhio = F_iw_op[5 : 0] == 47;
  assign F_op_rsv41 = F_iw_op[5 : 0] == 41;
  assign F_op_rsv19 = F_iw_op[5 : 0] == 19;
  assign F_op_ldwio = F_iw_op[5 : 0] == 55;
  assign F_op_rsv29 = F_iw_op[5 : 0] == 29;
  assign F_op_rsv61 = F_iw_op[5 : 0] == 61;
  assign F_op_opx = F_iw_op[5 : 0] == 58;
  assign F_op_stb = F_iw_op[5 : 0] == 5;
  assign F_op_rsv62 = F_iw_op[5 : 0] == 62;
  assign F_op_bltu = F_iw_op[5 : 0] == 54;
  assign F_op_custom = F_iw_op[5 : 0] == 50;
  assign F_op_muli = F_iw_op[5 : 0] == 36;
  assign F_op_cmpgei = F_iw_op[5 : 0] == 8;
  assign F_op_xori = F_iw_op[5 : 0] == 28;
  assign F_op_ldw = F_iw_op[5 : 0] == 23;
  assign F_op_cmpeqi = F_iw_op[5 : 0] == 32;
  assign F_op_ldh = F_iw_op[5 : 0] == 15;
  assign F_op_stw = F_iw_op[5 : 0] == 21;
  assign F_op_rsv09 = F_iw_op[5 : 0] == 9;
  assign F_op_cmpnei = F_iw_op[5 : 0] == 24;
  assign F_op_ldb = F_iw_op[5 : 0] == 7;
  assign F_op_bgeu = F_iw_op[5 : 0] == 46;
  assign F_op_stwio = F_iw_op[5 : 0] == 53;
  assign F_op_rsv33 = F_iw_op[5 : 0] == 33;
  assign F_op_andhi = F_iw_op[5 : 0] == 44;
  assign F_op_ldbuio = F_iw_op[5 : 0] == 35;
  assign F_op_rsv34 = F_iw_op[5 : 0] == 34;
  assign F_op_sthio = F_iw_op[5 : 0] == 45;
  assign F_op_cmpgeui = F_iw_op[5 : 0] == 40;
  assign F_op_stbio = F_iw_op[5 : 0] == 37;
  assign F_op_andi = F_iw_op[5 : 0] == 12;
  assign F_op_addi = F_iw_op[5 : 0] == 4;
  assign F_op_flushda = F_iw_op[5 : 0] == 27;
  assign F_op_rsv49 = F_iw_op[5 : 0] == 49;
  assign F_op_jmpi = F_iw_op[5 : 0] == 1;
  assign F_op_blt = F_iw_op[5 : 0] == 22;
  assign F_op_beq = F_iw_op[5 : 0] == 38;
  assign F_op_ori = F_iw_op[5 : 0] == 20;
  assign F_op_cmpltui = F_iw_op[5 : 0] == 48;
  assign F_op_rsv56 = F_iw_op[5 : 0] == 56;
  assign F_op_xorhi = F_iw_op[5 : 0] == 60;
  assign F_op_ldhuio = F_iw_op[5 : 0] == 43;
  assign F_op_bne = F_iw_op[5 : 0] == 30;
  assign F_op_rsv63 = F_iw_op[5 : 0] == 63;
  assign F_op_rsv57 = F_iw_op[5 : 0] == 57;
  assign F_op_call = F_iw_op[5 : 0] == 0;
  assign F_op_ldhu = F_iw_op[5 : 0] == 11;
  assign F_op_flushd = F_iw_op[5 : 0] == 59;
  assign F_op_initd = F_iw_op[5 : 0] == 51;
  assign F_op_rsv10 = F_iw_op[5 : 0] == 10;
  assign F_op_rsv17 = F_iw_op[5 : 0] == 17;
  assign F_op_sth = F_iw_op[5 : 0] == 13;
  assign F_op_rsv25 = F_iw_op[5 : 0] == 25;
  assign F_op_flushi = F_op_opx & (F_iw_opx[5 : 0] == 12);
  assign F_op_mulxuu = F_op_opx & (F_iw_opx[5 : 0] == 7);
  assign F_op_rsvx33 = F_op_opx & (F_iw_opx[5 : 0] == 33);
  assign F_op_wrctl = F_op_opx & (F_iw_opx[5 : 0] == 46);
  assign F_op_roli = F_op_opx & (F_iw_opx[5 : 0] == 2);
  assign F_op_intr = F_op_opx & (F_iw_opx[5 : 0] == 61);
  assign F_op_rsvx43 = F_op_opx & (F_iw_opx[5 : 0] == 43);
  assign F_op_srl = F_op_opx & (F_iw_opx[5 : 0] == 27);
  assign F_op_trap = F_op_opx & (F_iw_opx[5 : 0] == 45);
  assign F_op_rsvx17 = F_op_opx & (F_iw_opx[5 : 0] == 17);
  assign F_op_break = F_op_opx & (F_iw_opx[5 : 0] == 52);
  assign F_op_rdctl = F_op_opx & (F_iw_opx[5 : 0] == 38);
  assign F_op_cmpltu = F_op_opx & (F_iw_opx[5 : 0] == 48);
  assign F_op_callr = F_op_opx & (F_iw_opx[5 : 0] == 29);
  assign F_op_cmpge = F_op_opx & (F_iw_opx[5 : 0] == 8);
  assign F_op_rsvx47 = F_op_opx & (F_iw_opx[5 : 0] == 47);
  assign F_op_and = F_op_opx & (F_iw_opx[5 : 0] == 14);
  assign F_op_rsvx00 = F_op_opx & (F_iw_opx[5 : 0] == 0);
  assign F_op_rsvx56 = F_op_opx & (F_iw_opx[5 : 0] == 56);
  assign F_op_hbreak = F_op_opx & (F_iw_opx[5 : 0] == 53);
  assign F_op_flushp = F_op_opx & (F_iw_opx[5 : 0] == 4);
  assign F_op_nor = F_op_opx & (F_iw_opx[5 : 0] == 6);
  assign F_op_rsvx50 = F_op_opx & (F_iw_opx[5 : 0] == 50);
  assign F_op_initi = F_op_opx & (F_iw_opx[5 : 0] == 41);
  assign F_op_srai = F_op_opx & (F_iw_opx[5 : 0] == 58);
  assign F_op_sync = F_op_opx & (F_iw_opx[5 : 0] == 54);
  assign F_op_rsvx15 = F_op_opx & (F_iw_opx[5 : 0] == 15);
  assign F_op_rsvx55 = F_op_opx & (F_iw_opx[5 : 0] == 55);
  assign F_op_crst = F_op_opx & (F_iw_opx[5 : 0] == 62);
  assign F_op_rsvx42 = F_op_opx & (F_iw_opx[5 : 0] == 42);
  assign F_op_xor = F_op_opx & (F_iw_opx[5 : 0] == 30);
  assign F_op_rsvx34 = F_op_opx & (F_iw_opx[5 : 0] == 34);
  assign F_op_mulxss = F_op_opx & (F_iw_opx[5 : 0] == 31);
  assign F_op_rsvx51 = F_op_opx & (F_iw_opx[5 : 0] == 51);
  assign F_op_rsvx10 = F_op_opx & (F_iw_opx[5 : 0] == 10);
  assign F_op_eret = F_op_opx & (F_iw_opx[5 : 0] == 1);
  assign F_op_rsvx25 = F_op_opx & (F_iw_opx[5 : 0] == 25);
  assign F_op_jmp = F_op_opx & (F_iw_opx[5 : 0] == 13);
  assign F_op_or = F_op_opx & (F_iw_opx[5 : 0] == 22);
  assign F_op_rsvx35 = F_op_opx & (F_iw_opx[5 : 0] == 35);
  assign F_op_sra = F_op_opx & (F_iw_opx[5 : 0] == 59);
  assign F_op_rsvx20 = F_op_opx & (F_iw_opx[5 : 0] == 20);
  assign F_op_slli = F_op_opx & (F_iw_opx[5 : 0] == 18);
  assign F_op_mulxsu = F_op_opx & (F_iw_opx[5 : 0] == 23);
  assign F_op_rsvx21 = F_op_opx & (F_iw_opx[5 : 0] == 21);
  assign F_op_ror = F_op_opx & (F_iw_opx[5 : 0] == 11);
  assign F_op_srli = F_op_opx & (F_iw_opx[5 : 0] == 26);
  assign F_op_sll = F_op_opx & (F_iw_opx[5 : 0] == 19);
  assign F_op_div = F_op_opx & (F_iw_opx[5 : 0] == 37);
  assign F_op_cmplt = F_op_opx & (F_iw_opx[5 : 0] == 16);
  assign F_op_add = F_op_opx & (F_iw_opx[5 : 0] == 49);
  assign F_op_rsvx44 = F_op_opx & (F_iw_opx[5 : 0] == 44);
  assign F_op_bret = F_op_opx & (F_iw_opx[5 : 0] == 9);
  assign F_op_rsvx60 = F_op_opx & (F_iw_opx[5 : 0] == 60);
  assign F_op_rsvx63 = F_op_opx & (F_iw_opx[5 : 0] == 63);
  assign F_op_mul = F_op_opx & (F_iw_opx[5 : 0] == 39);
  assign F_op_cmpgeu = F_op_opx & (F_iw_opx[5 : 0] == 40);
  assign F_op_cmpne = F_op_opx & (F_iw_opx[5 : 0] == 24);
  assign F_op_cmpeq = F_op_opx & (F_iw_opx[5 : 0] == 32);
  assign F_op_ret = F_op_opx & (F_iw_opx[5 : 0] == 5);
  assign F_op_rol = F_op_opx & (F_iw_opx[5 : 0] == 3);
  assign F_op_sub = F_op_opx & (F_iw_opx[5 : 0] == 57);
  assign F_op_nextpc = F_op_opx & (F_iw_opx[5 : 0] == 28);
  assign F_op_divu = F_op_opx & (F_iw_opx[5 : 0] == 36);
  assign D_op_rsv02 = D_iw_op[5 : 0] == 2;
  assign D_op_cmplti = D_iw_op[5 : 0] == 16;
  assign D_op_rsv18 = D_iw_op[5 : 0] == 18;
  assign D_op_rsv26 = D_iw_op[5 : 0] == 26;
  assign D_op_rsv42 = D_iw_op[5 : 0] == 42;
  assign D_op_ldbio = D_iw_op[5 : 0] == 39;
  assign D_op_ldbu = D_iw_op[5 : 0] == 3;
  assign D_op_orhi = D_iw_op[5 : 0] == 52;
  assign D_op_rsv31 = D_iw_op[5 : 0] == 31;
  assign D_op_bge = D_iw_op[5 : 0] == 14;
  assign D_op_br = D_iw_op[5 : 0] == 6;
  assign D_op_ldhio = D_iw_op[5 : 0] == 47;
  assign D_op_rsv41 = D_iw_op[5 : 0] == 41;
  assign D_op_rsv19 = D_iw_op[5 : 0] == 19;
  assign D_op_ldwio = D_iw_op[5 : 0] == 55;
  assign D_op_rsv29 = D_iw_op[5 : 0] == 29;
  assign D_op_rsv61 = D_iw_op[5 : 0] == 61;
  assign D_op_opx = D_iw_op[5 : 0] == 58;
  assign D_op_stb = D_iw_op[5 : 0] == 5;
  assign D_op_rsv62 = D_iw_op[5 : 0] == 62;
  assign D_op_bltu = D_iw_op[5 : 0] == 54;
  assign D_op_custom = D_iw_op[5 : 0] == 50;
  assign D_op_muli = D_iw_op[5 : 0] == 36;
  assign D_op_xori = D_iw_op[5 : 0] == 28;
  assign D_op_cmpgei = D_iw_op[5 : 0] == 8;
  assign D_op_ldw = D_iw_op[5 : 0] == 23;
  assign D_op_cmpeqi = D_iw_op[5 : 0] == 32;
  assign D_op_ldh = D_iw_op[5 : 0] == 15;
  assign D_op_stw = D_iw_op[5 : 0] == 21;
  assign D_op_rsv09 = D_iw_op[5 : 0] == 9;
  assign D_op_cmpnei = D_iw_op[5 : 0] == 24;
  assign D_op_ldb = D_iw_op[5 : 0] == 7;
  assign D_op_bgeu = D_iw_op[5 : 0] == 46;
  assign D_op_stwio = D_iw_op[5 : 0] == 53;
  assign D_op_rsv33 = D_iw_op[5 : 0] == 33;
  assign D_op_andhi = D_iw_op[5 : 0] == 44;
  assign D_op_ldbuio = D_iw_op[5 : 0] == 35;
  assign D_op_rsv34 = D_iw_op[5 : 0] == 34;
  assign D_op_sthio = D_iw_op[5 : 0] == 45;
  assign D_op_cmpgeui = D_iw_op[5 : 0] == 40;
  assign D_op_stbio = D_iw_op[5 : 0] == 37;
  assign D_op_andi = D_iw_op[5 : 0] == 12;
  assign D_op_addi = D_iw_op[5 : 0] == 4;
  assign D_op_flushda = D_iw_op[5 : 0] == 27;
  assign D_op_rsv49 = D_iw_op[5 : 0] == 49;
  assign D_op_jmpi = D_iw_op[5 : 0] == 1;
  assign D_op_blt = D_iw_op[5 : 0] == 22;
  assign D_op_beq = D_iw_op[5 : 0] == 38;
  assign D_op_ori = D_iw_op[5 : 0] == 20;
  assign D_op_cmpltui = D_iw_op[5 : 0] == 48;
  assign D_op_xorhi = D_iw_op[5 : 0] == 60;
  assign D_op_rsv56 = D_iw_op[5 : 0] == 56;
  assign D_op_ldhuio = D_iw_op[5 : 0] == 43;
  assign D_op_rsv63 = D_iw_op[5 : 0] == 63;
  assign D_op_bne = D_iw_op[5 : 0] == 30;
  assign D_op_rsv57 = D_iw_op[5 : 0] == 57;
  assign D_op_call = D_iw_op[5 : 0] == 0;
  assign D_op_ldhu = D_iw_op[5 : 0] == 11;
  assign D_op_flushd = D_iw_op[5 : 0] == 59;
  assign D_op_initd = D_iw_op[5 : 0] == 51;
  assign D_op_rsv10 = D_iw_op[5 : 0] == 10;
  assign D_op_rsv17 = D_iw_op[5 : 0] == 17;
  assign D_op_sth = D_iw_op[5 : 0] == 13;
  assign D_op_rsv25 = D_iw_op[5 : 0] == 25;
  assign D_op_flushi = D_op_opx & (D_iw_opx[5 : 0] == 12);
  assign D_op_mulxuu = D_op_opx & (D_iw_opx[5 : 0] == 7);
  assign D_op_rsvx33 = D_op_opx & (D_iw_opx[5 : 0] == 33);
  assign D_op_wrctl = D_op_opx & (D_iw_opx[5 : 0] == 46);
  assign D_op_roli = D_op_opx & (D_iw_opx[5 : 0] == 2);
  assign D_op_intr = D_op_opx & (D_iw_opx[5 : 0] == 61);
  assign D_op_rsvx43 = D_op_opx & (D_iw_opx[5 : 0] == 43);
  assign D_op_srl = D_op_opx & (D_iw_opx[5 : 0] == 27);
  assign D_op_trap = D_op_opx & (D_iw_opx[5 : 0] == 45);
  assign D_op_rsvx17 = D_op_opx & (D_iw_opx[5 : 0] == 17);
  assign D_op_break = D_op_opx & (D_iw_opx[5 : 0] == 52);
  assign D_op_rdctl = D_op_opx & (D_iw_opx[5 : 0] == 38);
  assign D_op_cmpltu = D_op_opx & (D_iw_opx[5 : 0] == 48);
  assign D_op_callr = D_op_opx & (D_iw_opx[5 : 0] == 29);
  assign D_op_cmpge = D_op_opx & (D_iw_opx[5 : 0] == 8);
  assign D_op_rsvx47 = D_op_opx & (D_iw_opx[5 : 0] == 47);
  assign D_op_and = D_op_opx & (D_iw_opx[5 : 0] == 14);
  assign D_op_rsvx00 = D_op_opx & (D_iw_opx[5 : 0] == 0);
  assign D_op_rsvx56 = D_op_opx & (D_iw_opx[5 : 0] == 56);
  assign D_op_hbreak = D_op_opx & (D_iw_opx[5 : 0] == 53);
  assign D_op_flushp = D_op_opx & (D_iw_opx[5 : 0] == 4);
  assign D_op_nor = D_op_opx & (D_iw_opx[5 : 0] == 6);
  assign D_op_rsvx50 = D_op_opx & (D_iw_opx[5 : 0] == 50);
  assign D_op_initi = D_op_opx & (D_iw_opx[5 : 0] == 41);
  assign D_op_srai = D_op_opx & (D_iw_opx[5 : 0] == 58);
  assign D_op_sync = D_op_opx & (D_iw_opx[5 : 0] == 54);
  assign D_op_rsvx15 = D_op_opx & (D_iw_opx[5 : 0] == 15);
  assign D_op_rsvx55 = D_op_opx & (D_iw_opx[5 : 0] == 55);
  assign D_op_crst = D_op_opx & (D_iw_opx[5 : 0] == 62);
  assign D_op_rsvx42 = D_op_opx & (D_iw_opx[5 : 0] == 42);
  assign D_op_xor = D_op_opx & (D_iw_opx[5 : 0] == 30);
  assign D_op_rsvx34 = D_op_opx & (D_iw_opx[5 : 0] == 34);
  assign D_op_mulxss = D_op_opx & (D_iw_opx[5 : 0] == 31);
  assign D_op_rsvx51 = D_op_opx & (D_iw_opx[5 : 0] == 51);
  assign D_op_rsvx10 = D_op_opx & (D_iw_opx[5 : 0] == 10);
  assign D_op_eret = D_op_opx & (D_iw_opx[5 : 0] == 1);
  assign D_op_rsvx25 = D_op_opx & (D_iw_opx[5 : 0] == 25);
  assign D_op_jmp = D_op_opx & (D_iw_opx[5 : 0] == 13);
  assign D_op_or = D_op_opx & (D_iw_opx[5 : 0] == 22);
  assign D_op_rsvx35 = D_op_opx & (D_iw_opx[5 : 0] == 35);
  assign D_op_sra = D_op_opx & (D_iw_opx[5 : 0] == 59);
  assign D_op_rsvx20 = D_op_opx & (D_iw_opx[5 : 0] == 20);
  assign D_op_slli = D_op_opx & (D_iw_opx[5 : 0] == 18);
  assign D_op_mulxsu = D_op_opx & (D_iw_opx[5 : 0] == 23);
  assign D_op_rsvx21 = D_op_opx & (D_iw_opx[5 : 0] == 21);
  assign D_op_ror = D_op_opx & (D_iw_opx[5 : 0] == 11);
  assign D_op_srli = D_op_opx & (D_iw_opx[5 : 0] == 26);
  assign D_op_sll = D_op_opx & (D_iw_opx[5 : 0] == 19);
  assign D_op_div = D_op_opx & (D_iw_opx[5 : 0] == 37);
  assign D_op_cmplt = D_op_opx & (D_iw_opx[5 : 0] == 16);
  assign D_op_add = D_op_opx & (D_iw_opx[5 : 0] == 49);
  assign D_op_rsvx44 = D_op_opx & (D_iw_opx[5 : 0] == 44);
  assign D_op_bret = D_op_opx & (D_iw_opx[5 : 0] == 9);
  assign D_op_rsvx60 = D_op_opx & (D_iw_opx[5 : 0] == 60);
  assign D_op_rsvx63 = D_op_opx & (D_iw_opx[5 : 0] == 63);
  assign D_op_mul = D_op_opx & (D_iw_opx[5 : 0] == 39);
  assign D_op_cmpgeu = D_op_opx & (D_iw_opx[5 : 0] == 40);
  assign D_op_cmpne = D_op_opx & (D_iw_opx[5 : 0] == 24);
  assign D_op_cmpeq = D_op_opx & (D_iw_opx[5 : 0] == 32);
  assign D_op_ret = D_op_opx & (D_iw_opx[5 : 0] == 5);
  assign D_op_rol = D_op_opx & (D_iw_opx[5 : 0] == 3);
  assign D_op_sub = D_op_opx & (D_iw_opx[5 : 0] == 57);
  assign D_op_nextpc = D_op_opx & (D_iw_opx[5 : 0] == 28);
  assign D_op_divu = D_op_opx & (D_iw_opx[5 : 0] == 36);
  assign E_op_rsv02 = E_iw_op[5 : 0] == 2;
  assign E_op_cmplti = E_iw_op[5 : 0] == 16;
  assign E_op_rsv18 = E_iw_op[5 : 0] == 18;
  assign E_op_rsv26 = E_iw_op[5 : 0] == 26;
  assign E_op_rsv42 = E_iw_op[5 : 0] == 42;
  assign E_op_ldbio = E_iw_op[5 : 0] == 39;
  assign E_op_ldbu = E_iw_op[5 : 0] == 3;
  assign E_op_orhi = E_iw_op[5 : 0] == 52;
  assign E_op_rsv31 = E_iw_op[5 : 0] == 31;
  assign E_op_bge = E_iw_op[5 : 0] == 14;
  assign E_op_br = E_iw_op[5 : 0] == 6;
  assign E_op_ldhio = E_iw_op[5 : 0] == 47;
  assign E_op_rsv41 = E_iw_op[5 : 0] == 41;
  assign E_op_rsv19 = E_iw_op[5 : 0] == 19;
  assign E_op_ldwio = E_iw_op[5 : 0] == 55;
  assign E_op_rsv29 = E_iw_op[5 : 0] == 29;
  assign E_op_rsv61 = E_iw_op[5 : 0] == 61;
  assign E_op_opx = E_iw_op[5 : 0] == 58;
  assign E_op_stb = E_iw_op[5 : 0] == 5;
  assign E_op_rsv62 = E_iw_op[5 : 0] == 62;
  assign E_op_bltu = E_iw_op[5 : 0] == 54;
  assign E_op_custom = E_iw_op[5 : 0] == 50;
  assign E_op_muli = E_iw_op[5 : 0] == 36;
  assign E_op_xori = E_iw_op[5 : 0] == 28;
  assign E_op_cmpgei = E_iw_op[5 : 0] == 8;
  assign E_op_ldw = E_iw_op[5 : 0] == 23;
  assign E_op_cmpeqi = E_iw_op[5 : 0] == 32;
  assign E_op_ldh = E_iw_op[5 : 0] == 15;
  assign E_op_stw = E_iw_op[5 : 0] == 21;
  assign E_op_rsv09 = E_iw_op[5 : 0] == 9;
  assign E_op_cmpnei = E_iw_op[5 : 0] == 24;
  assign E_op_ldb = E_iw_op[5 : 0] == 7;
  assign E_op_bgeu = E_iw_op[5 : 0] == 46;
  assign E_op_stwio = E_iw_op[5 : 0] == 53;
  assign E_op_rsv33 = E_iw_op[5 : 0] == 33;
  assign E_op_andhi = E_iw_op[5 : 0] == 44;
  assign E_op_ldbuio = E_iw_op[5 : 0] == 35;
  assign E_op_rsv34 = E_iw_op[5 : 0] == 34;
  assign E_op_sthio = E_iw_op[5 : 0] == 45;
  assign E_op_cmpgeui = E_iw_op[5 : 0] == 40;
  assign E_op_stbio = E_iw_op[5 : 0] == 37;
  assign E_op_andi = E_iw_op[5 : 0] == 12;
  assign E_op_addi = E_iw_op[5 : 0] == 4;
  assign E_op_flushda = E_iw_op[5 : 0] == 27;
  assign E_op_rsv49 = E_iw_op[5 : 0] == 49;
  assign E_op_jmpi = E_iw_op[5 : 0] == 1;
  assign E_op_blt = E_iw_op[5 : 0] == 22;
  assign E_op_beq = E_iw_op[5 : 0] == 38;
  assign E_op_ori = E_iw_op[5 : 0] == 20;
  assign E_op_cmpltui = E_iw_op[5 : 0] == 48;
  assign E_op_xorhi = E_iw_op[5 : 0] == 60;
  assign E_op_rsv56 = E_iw_op[5 : 0] == 56;
  assign E_op_ldhuio = E_iw_op[5 : 0] == 43;
  assign E_op_rsv63 = E_iw_op[5 : 0] == 63;
  assign E_op_bne = E_iw_op[5 : 0] == 30;
  assign E_op_rsv57 = E_iw_op[5 : 0] == 57;
  assign E_op_call = E_iw_op[5 : 0] == 0;
  assign E_op_ldhu = E_iw_op[5 : 0] == 11;
  assign E_op_flushd = E_iw_op[5 : 0] == 59;
  assign E_op_initd = E_iw_op[5 : 0] == 51;
  assign E_op_rsv10 = E_iw_op[5 : 0] == 10;
  assign E_op_rsv17 = E_iw_op[5 : 0] == 17;
  assign E_op_sth = E_iw_op[5 : 0] == 13;
  assign E_op_rsv25 = E_iw_op[5 : 0] == 25;
  assign E_op_flushi = E_op_opx & (E_iw_opx[5 : 0] == 12);
  assign E_op_mulxuu = E_op_opx & (E_iw_opx[5 : 0] == 7);
  assign E_op_rsvx33 = E_op_opx & (E_iw_opx[5 : 0] == 33);
  assign E_op_wrctl = E_op_opx & (E_iw_opx[5 : 0] == 46);
  assign E_op_roli = E_op_opx & (E_iw_opx[5 : 0] == 2);
  assign E_op_intr = E_op_opx & (E_iw_opx[5 : 0] == 61);
  assign E_op_rsvx43 = E_op_opx & (E_iw_opx[5 : 0] == 43);
  assign E_op_srl = E_op_opx & (E_iw_opx[5 : 0] == 27);
  assign E_op_trap = E_op_opx & (E_iw_opx[5 : 0] == 45);
  assign E_op_rsvx17 = E_op_opx & (E_iw_opx[5 : 0] == 17);
  assign E_op_break = E_op_opx & (E_iw_opx[5 : 0] == 52);
  assign E_op_rdctl = E_op_opx & (E_iw_opx[5 : 0] == 38);
  assign E_op_cmpltu = E_op_opx & (E_iw_opx[5 : 0] == 48);
  assign E_op_callr = E_op_opx & (E_iw_opx[5 : 0] == 29);
  assign E_op_cmpge = E_op_opx & (E_iw_opx[5 : 0] == 8);
  assign E_op_rsvx47 = E_op_opx & (E_iw_opx[5 : 0] == 47);
  assign E_op_and = E_op_opx & (E_iw_opx[5 : 0] == 14);
  assign E_op_rsvx00 = E_op_opx & (E_iw_opx[5 : 0] == 0);
  assign E_op_rsvx56 = E_op_opx & (E_iw_opx[5 : 0] == 56);
  assign E_op_hbreak = E_op_opx & (E_iw_opx[5 : 0] == 53);
  assign E_op_flushp = E_op_opx & (E_iw_opx[5 : 0] == 4);
  assign E_op_nor = E_op_opx & (E_iw_opx[5 : 0] == 6);
  assign E_op_rsvx50 = E_op_opx & (E_iw_opx[5 : 0] == 50);
  assign E_op_initi = E_op_opx & (E_iw_opx[5 : 0] == 41);
  assign E_op_srai = E_op_opx & (E_iw_opx[5 : 0] == 58);
  assign E_op_sync = E_op_opx & (E_iw_opx[5 : 0] == 54);
  assign E_op_rsvx15 = E_op_opx & (E_iw_opx[5 : 0] == 15);
  assign E_op_rsvx55 = E_op_opx & (E_iw_opx[5 : 0] == 55);
  assign E_op_crst = E_op_opx & (E_iw_opx[5 : 0] == 62);
  assign E_op_rsvx42 = E_op_opx & (E_iw_opx[5 : 0] == 42);
  assign E_op_xor = E_op_opx & (E_iw_opx[5 : 0] == 30);
  assign E_op_rsvx34 = E_op_opx & (E_iw_opx[5 : 0] == 34);
  assign E_op_mulxss = E_op_opx & (E_iw_opx[5 : 0] == 31);
  assign E_op_rsvx51 = E_op_opx & (E_iw_opx[5 : 0] == 51);
  assign E_op_rsvx10 = E_op_opx & (E_iw_opx[5 : 0] == 10);
  assign E_op_eret = E_op_opx & (E_iw_opx[5 : 0] == 1);
  assign E_op_rsvx25 = E_op_opx & (E_iw_opx[5 : 0] == 25);
  assign E_op_jmp = E_op_opx & (E_iw_opx[5 : 0] == 13);
  assign E_op_or = E_op_opx & (E_iw_opx[5 : 0] == 22);
  assign E_op_rsvx35 = E_op_opx & (E_iw_opx[5 : 0] == 35);
  assign E_op_sra = E_op_opx & (E_iw_opx[5 : 0] == 59);
  assign E_op_rsvx20 = E_op_opx & (E_iw_opx[5 : 0] == 20);
  assign E_op_slli = E_op_opx & (E_iw_opx[5 : 0] == 18);
  assign E_op_mulxsu = E_op_opx & (E_iw_opx[5 : 0] == 23);
  assign E_op_rsvx21 = E_op_opx & (E_iw_opx[5 : 0] == 21);
  assign E_op_ror = E_op_opx & (E_iw_opx[5 : 0] == 11);
  assign E_op_srli = E_op_opx & (E_iw_opx[5 : 0] == 26);
  assign E_op_sll = E_op_opx & (E_iw_opx[5 : 0] == 19);
  assign E_op_div = E_op_opx & (E_iw_opx[5 : 0] == 37);
  assign E_op_cmplt = E_op_opx & (E_iw_opx[5 : 0] == 16);
  assign E_op_add = E_op_opx & (E_iw_opx[5 : 0] == 49);
  assign E_op_rsvx44 = E_op_opx & (E_iw_opx[5 : 0] == 44);
  assign E_op_bret = E_op_opx & (E_iw_opx[5 : 0] == 9);
  assign E_op_rsvx60 = E_op_opx & (E_iw_opx[5 : 0] == 60);
  assign E_op_rsvx63 = E_op_opx & (E_iw_opx[5 : 0] == 63);
  assign E_op_mul = E_op_opx & (E_iw_opx[5 : 0] == 39);
  assign E_op_cmpgeu = E_op_opx & (E_iw_opx[5 : 0] == 40);
  assign E_op_cmpne = E_op_opx & (E_iw_opx[5 : 0] == 24);
  assign E_op_cmpeq = E_op_opx & (E_iw_opx[5 : 0] == 32);
  assign E_op_ret = E_op_opx & (E_iw_opx[5 : 0] == 5);
  assign E_op_rol = E_op_opx & (E_iw_opx[5 : 0] == 3);
  assign E_op_sub = E_op_opx & (E_iw_opx[5 : 0] == 57);
  assign E_op_nextpc = E_op_opx & (E_iw_opx[5 : 0] == 28);
  assign E_op_divu = E_op_opx & (E_iw_opx[5 : 0] == 36);
  assign M_op_rsv02 = M_iw_op[5 : 0] == 2;
  assign M_op_cmplti = M_iw_op[5 : 0] == 16;
  assign M_op_rsv18 = M_iw_op[5 : 0] == 18;
  assign M_op_rsv26 = M_iw_op[5 : 0] == 26;
  assign M_op_rsv42 = M_iw_op[5 : 0] == 42;
  assign M_op_ldbio = M_iw_op[5 : 0] == 39;
  assign M_op_ldbu = M_iw_op[5 : 0] == 3;
  assign M_op_orhi = M_iw_op[5 : 0] == 52;
  assign M_op_rsv31 = M_iw_op[5 : 0] == 31;
  assign M_op_bge = M_iw_op[5 : 0] == 14;
  assign M_op_br = M_iw_op[5 : 0] == 6;
  assign M_op_ldhio = M_iw_op[5 : 0] == 47;
  assign M_op_rsv41 = M_iw_op[5 : 0] == 41;
  assign M_op_rsv19 = M_iw_op[5 : 0] == 19;
  assign M_op_ldwio = M_iw_op[5 : 0] == 55;
  assign M_op_rsv29 = M_iw_op[5 : 0] == 29;
  assign M_op_rsv61 = M_iw_op[5 : 0] == 61;
  assign M_op_opx = M_iw_op[5 : 0] == 58;
  assign M_op_stb = M_iw_op[5 : 0] == 5;
  assign M_op_rsv62 = M_iw_op[5 : 0] == 62;
  assign M_op_bltu = M_iw_op[5 : 0] == 54;
  assign M_op_custom = M_iw_op[5 : 0] == 50;
  assign M_op_muli = M_iw_op[5 : 0] == 36;
  assign M_op_xori = M_iw_op[5 : 0] == 28;
  assign M_op_cmpgei = M_iw_op[5 : 0] == 8;
  assign M_op_ldw = M_iw_op[5 : 0] == 23;
  assign M_op_cmpeqi = M_iw_op[5 : 0] == 32;
  assign M_op_ldh = M_iw_op[5 : 0] == 15;
  assign M_op_stw = M_iw_op[5 : 0] == 21;
  assign M_op_rsv09 = M_iw_op[5 : 0] == 9;
  assign M_op_cmpnei = M_iw_op[5 : 0] == 24;
  assign M_op_ldb = M_iw_op[5 : 0] == 7;
  assign M_op_bgeu = M_iw_op[5 : 0] == 46;
  assign M_op_stwio = M_iw_op[5 : 0] == 53;
  assign M_op_rsv33 = M_iw_op[5 : 0] == 33;
  assign M_op_andhi = M_iw_op[5 : 0] == 44;
  assign M_op_ldbuio = M_iw_op[5 : 0] == 35;
  assign M_op_rsv34 = M_iw_op[5 : 0] == 34;
  assign M_op_sthio = M_iw_op[5 : 0] == 45;
  assign M_op_cmpgeui = M_iw_op[5 : 0] == 40;
  assign M_op_stbio = M_iw_op[5 : 0] == 37;
  assign M_op_andi = M_iw_op[5 : 0] == 12;
  assign M_op_addi = M_iw_op[5 : 0] == 4;
  assign M_op_flushda = M_iw_op[5 : 0] == 27;
  assign M_op_rsv49 = M_iw_op[5 : 0] == 49;
  assign M_op_jmpi = M_iw_op[5 : 0] == 1;
  assign M_op_blt = M_iw_op[5 : 0] == 22;
  assign M_op_beq = M_iw_op[5 : 0] == 38;
  assign M_op_ori = M_iw_op[5 : 0] == 20;
  assign M_op_cmpltui = M_iw_op[5 : 0] == 48;
  assign M_op_xorhi = M_iw_op[5 : 0] == 60;
  assign M_op_rsv56 = M_iw_op[5 : 0] == 56;
  assign M_op_ldhuio = M_iw_op[5 : 0] == 43;
  assign M_op_rsv63 = M_iw_op[5 : 0] == 63;
  assign M_op_bne = M_iw_op[5 : 0] == 30;
  assign M_op_rsv57 = M_iw_op[5 : 0] == 57;
  assign M_op_call = M_iw_op[5 : 0] == 0;
  assign M_op_ldhu = M_iw_op[5 : 0] == 11;
  assign M_op_flushd = M_iw_op[5 : 0] == 59;
  assign M_op_initd = M_iw_op[5 : 0] == 51;
  assign M_op_rsv10 = M_iw_op[5 : 0] == 10;
  assign M_op_rsv17 = M_iw_op[5 : 0] == 17;
  assign M_op_sth = M_iw_op[5 : 0] == 13;
  assign M_op_rsv25 = M_iw_op[5 : 0] == 25;
  assign M_op_flushi = M_op_opx & (M_iw_opx[5 : 0] == 12);
  assign M_op_mulxuu = M_op_opx & (M_iw_opx[5 : 0] == 7);
  assign M_op_rsvx33 = M_op_opx & (M_iw_opx[5 : 0] == 33);
  assign M_op_wrctl = M_op_opx & (M_iw_opx[5 : 0] == 46);
  assign M_op_roli = M_op_opx & (M_iw_opx[5 : 0] == 2);
  assign M_op_intr = M_op_opx & (M_iw_opx[5 : 0] == 61);
  assign M_op_rsvx43 = M_op_opx & (M_iw_opx[5 : 0] == 43);
  assign M_op_srl = M_op_opx & (M_iw_opx[5 : 0] == 27);
  assign M_op_trap = M_op_opx & (M_iw_opx[5 : 0] == 45);
  assign M_op_rsvx17 = M_op_opx & (M_iw_opx[5 : 0] == 17);
  assign M_op_break = M_op_opx & (M_iw_opx[5 : 0] == 52);
  assign M_op_rdctl = M_op_opx & (M_iw_opx[5 : 0] == 38);
  assign M_op_cmpltu = M_op_opx & (M_iw_opx[5 : 0] == 48);
  assign M_op_callr = M_op_opx & (M_iw_opx[5 : 0] == 29);
  assign M_op_cmpge = M_op_opx & (M_iw_opx[5 : 0] == 8);
  assign M_op_rsvx47 = M_op_opx & (M_iw_opx[5 : 0] == 47);
  assign M_op_and = M_op_opx & (M_iw_opx[5 : 0] == 14);
  assign M_op_rsvx00 = M_op_opx & (M_iw_opx[5 : 0] == 0);
  assign M_op_rsvx56 = M_op_opx & (M_iw_opx[5 : 0] == 56);
  assign M_op_hbreak = M_op_opx & (M_iw_opx[5 : 0] == 53);
  assign M_op_flushp = M_op_opx & (M_iw_opx[5 : 0] == 4);
  assign M_op_nor = M_op_opx & (M_iw_opx[5 : 0] == 6);
  assign M_op_rsvx50 = M_op_opx & (M_iw_opx[5 : 0] == 50);
  assign M_op_initi = M_op_opx & (M_iw_opx[5 : 0] == 41);
  assign M_op_srai = M_op_opx & (M_iw_opx[5 : 0] == 58);
  assign M_op_sync = M_op_opx & (M_iw_opx[5 : 0] == 54);
  assign M_op_rsvx15 = M_op_opx & (M_iw_opx[5 : 0] == 15);
  assign M_op_rsvx55 = M_op_opx & (M_iw_opx[5 : 0] == 55);
  assign M_op_crst = M_op_opx & (M_iw_opx[5 : 0] == 62);
  assign M_op_rsvx42 = M_op_opx & (M_iw_opx[5 : 0] == 42);
  assign M_op_xor = M_op_opx & (M_iw_opx[5 : 0] == 30);
  assign M_op_rsvx34 = M_op_opx & (M_iw_opx[5 : 0] == 34);
  assign M_op_mulxss = M_op_opx & (M_iw_opx[5 : 0] == 31);
  assign M_op_rsvx51 = M_op_opx & (M_iw_opx[5 : 0] == 51);
  assign M_op_rsvx10 = M_op_opx & (M_iw_opx[5 : 0] == 10);
  assign M_op_eret = M_op_opx & (M_iw_opx[5 : 0] == 1);
  assign M_op_rsvx25 = M_op_opx & (M_iw_opx[5 : 0] == 25);
  assign M_op_jmp = M_op_opx & (M_iw_opx[5 : 0] == 13);
  assign M_op_or = M_op_opx & (M_iw_opx[5 : 0] == 22);
  assign M_op_rsvx35 = M_op_opx & (M_iw_opx[5 : 0] == 35);
  assign M_op_sra = M_op_opx & (M_iw_opx[5 : 0] == 59);
  assign M_op_rsvx20 = M_op_opx & (M_iw_opx[5 : 0] == 20);
  assign M_op_slli = M_op_opx & (M_iw_opx[5 : 0] == 18);
  assign M_op_mulxsu = M_op_opx & (M_iw_opx[5 : 0] == 23);
  assign M_op_rsvx21 = M_op_opx & (M_iw_opx[5 : 0] == 21);
  assign M_op_ror = M_op_opx & (M_iw_opx[5 : 0] == 11);
  assign M_op_srli = M_op_opx & (M_iw_opx[5 : 0] == 26);
  assign M_op_sll = M_op_opx & (M_iw_opx[5 : 0] == 19);
  assign M_op_div = M_op_opx & (M_iw_opx[5 : 0] == 37);
  assign M_op_cmplt = M_op_opx & (M_iw_opx[5 : 0] == 16);
  assign M_op_add = M_op_opx & (M_iw_opx[5 : 0] == 49);
  assign M_op_rsvx44 = M_op_opx & (M_iw_opx[5 : 0] == 44);
  assign M_op_bret = M_op_opx & (M_iw_opx[5 : 0] == 9);
  assign M_op_rsvx60 = M_op_opx & (M_iw_opx[5 : 0] == 60);
  assign M_op_rsvx63 = M_op_opx & (M_iw_opx[5 : 0] == 63);
  assign M_op_mul = M_op_opx & (M_iw_opx[5 : 0] == 39);
  assign M_op_cmpgeu = M_op_opx & (M_iw_opx[5 : 0] == 40);
  assign M_op_cmpne = M_op_opx & (M_iw_opx[5 : 0] == 24);
  assign M_op_cmpeq = M_op_opx & (M_iw_opx[5 : 0] == 32);
  assign M_op_ret = M_op_opx & (M_iw_opx[5 : 0] == 5);
  assign M_op_rol = M_op_opx & (M_iw_opx[5 : 0] == 3);
  assign M_op_sub = M_op_opx & (M_iw_opx[5 : 0] == 57);
  assign M_op_nextpc = M_op_opx & (M_iw_opx[5 : 0] == 28);
  assign M_op_divu = M_op_opx & (M_iw_opx[5 : 0] == 36);
  assign W_op_rsv02 = W_iw_op[5 : 0] == 2;
  assign W_op_cmplti = W_iw_op[5 : 0] == 16;
  assign W_op_rsv18 = W_iw_op[5 : 0] == 18;
  assign W_op_rsv26 = W_iw_op[5 : 0] == 26;
  assign W_op_rsv42 = W_iw_op[5 : 0] == 42;
  assign W_op_ldbio = W_iw_op[5 : 0] == 39;
  assign W_op_ldbu = W_iw_op[5 : 0] == 3;
  assign W_op_orhi = W_iw_op[5 : 0] == 52;
  assign W_op_rsv31 = W_iw_op[5 : 0] == 31;
  assign W_op_bge = W_iw_op[5 : 0] == 14;
  assign W_op_br = W_iw_op[5 : 0] == 6;
  assign W_op_ldhio = W_iw_op[5 : 0] == 47;
  assign W_op_rsv41 = W_iw_op[5 : 0] == 41;
  assign W_op_rsv19 = W_iw_op[5 : 0] == 19;
  assign W_op_ldwio = W_iw_op[5 : 0] == 55;
  assign W_op_rsv29 = W_iw_op[5 : 0] == 29;
  assign W_op_rsv61 = W_iw_op[5 : 0] == 61;
  assign W_op_opx = W_iw_op[5 : 0] == 58;
  assign W_op_stb = W_iw_op[5 : 0] == 5;
  assign W_op_rsv62 = W_iw_op[5 : 0] == 62;
  assign W_op_bltu = W_iw_op[5 : 0] == 54;
  assign W_op_custom = W_iw_op[5 : 0] == 50;
  assign W_op_muli = W_iw_op[5 : 0] == 36;
  assign W_op_xori = W_iw_op[5 : 0] == 28;
  assign W_op_cmpgei = W_iw_op[5 : 0] == 8;
  assign W_op_ldw = W_iw_op[5 : 0] == 23;
  assign W_op_cmpeqi = W_iw_op[5 : 0] == 32;
  assign W_op_ldh = W_iw_op[5 : 0] == 15;
  assign W_op_stw = W_iw_op[5 : 0] == 21;
  assign W_op_rsv09 = W_iw_op[5 : 0] == 9;
  assign W_op_cmpnei = W_iw_op[5 : 0] == 24;
  assign W_op_ldb = W_iw_op[5 : 0] == 7;
  assign W_op_bgeu = W_iw_op[5 : 0] == 46;
  assign W_op_stwio = W_iw_op[5 : 0] == 53;
  assign W_op_rsv33 = W_iw_op[5 : 0] == 33;
  assign W_op_andhi = W_iw_op[5 : 0] == 44;
  assign W_op_ldbuio = W_iw_op[5 : 0] == 35;
  assign W_op_rsv34 = W_iw_op[5 : 0] == 34;
  assign W_op_sthio = W_iw_op[5 : 0] == 45;
  assign W_op_cmpgeui = W_iw_op[5 : 0] == 40;
  assign W_op_stbio = W_iw_op[5 : 0] == 37;
  assign W_op_andi = W_iw_op[5 : 0] == 12;
  assign W_op_addi = W_iw_op[5 : 0] == 4;
  assign W_op_flushda = W_iw_op[5 : 0] == 27;
  assign W_op_rsv49 = W_iw_op[5 : 0] == 49;
  assign W_op_jmpi = W_iw_op[5 : 0] == 1;
  assign W_op_blt = W_iw_op[5 : 0] == 22;
  assign W_op_beq = W_iw_op[5 : 0] == 38;
  assign W_op_ori = W_iw_op[5 : 0] == 20;
  assign W_op_cmpltui = W_iw_op[5 : 0] == 48;
  assign W_op_xorhi = W_iw_op[5 : 0] == 60;
  assign W_op_rsv56 = W_iw_op[5 : 0] == 56;
  assign W_op_ldhuio = W_iw_op[5 : 0] == 43;
  assign W_op_rsv63 = W_iw_op[5 : 0] == 63;
  assign W_op_bne = W_iw_op[5 : 0] == 30;
  assign W_op_rsv57 = W_iw_op[5 : 0] == 57;
  assign W_op_call = W_iw_op[5 : 0] == 0;
  assign W_op_ldhu = W_iw_op[5 : 0] == 11;
  assign W_op_flushd = W_iw_op[5 : 0] == 59;
  assign W_op_initd = W_iw_op[5 : 0] == 51;
  assign W_op_rsv10 = W_iw_op[5 : 0] == 10;
  assign W_op_rsv17 = W_iw_op[5 : 0] == 17;
  assign W_op_sth = W_iw_op[5 : 0] == 13;
  assign W_op_rsv25 = W_iw_op[5 : 0] == 25;
  assign W_op_flushi = W_op_opx & (W_iw_opx[5 : 0] == 12);
  assign W_op_mulxuu = W_op_opx & (W_iw_opx[5 : 0] == 7);
  assign W_op_rsvx33 = W_op_opx & (W_iw_opx[5 : 0] == 33);
  assign W_op_wrctl = W_op_opx & (W_iw_opx[5 : 0] == 46);
  assign W_op_roli = W_op_opx & (W_iw_opx[5 : 0] == 2);
  assign W_op_intr = W_op_opx & (W_iw_opx[5 : 0] == 61);
  assign W_op_rsvx43 = W_op_opx & (W_iw_opx[5 : 0] == 43);
  assign W_op_srl = W_op_opx & (W_iw_opx[5 : 0] == 27);
  assign W_op_trap = W_op_opx & (W_iw_opx[5 : 0] == 45);
  assign W_op_rsvx17 = W_op_opx & (W_iw_opx[5 : 0] == 17);
  assign W_op_break = W_op_opx & (W_iw_opx[5 : 0] == 52);
  assign W_op_rdctl = W_op_opx & (W_iw_opx[5 : 0] == 38);
  assign W_op_cmpltu = W_op_opx & (W_iw_opx[5 : 0] == 48);
  assign W_op_callr = W_op_opx & (W_iw_opx[5 : 0] == 29);
  assign W_op_cmpge = W_op_opx & (W_iw_opx[5 : 0] == 8);
  assign W_op_rsvx47 = W_op_opx & (W_iw_opx[5 : 0] == 47);
  assign W_op_and = W_op_opx & (W_iw_opx[5 : 0] == 14);
  assign W_op_rsvx00 = W_op_opx & (W_iw_opx[5 : 0] == 0);
  assign W_op_rsvx56 = W_op_opx & (W_iw_opx[5 : 0] == 56);
  assign W_op_hbreak = W_op_opx & (W_iw_opx[5 : 0] == 53);
  assign W_op_flushp = W_op_opx & (W_iw_opx[5 : 0] == 4);
  assign W_op_nor = W_op_opx & (W_iw_opx[5 : 0] == 6);
  assign W_op_rsvx50 = W_op_opx & (W_iw_opx[5 : 0] == 50);
  assign W_op_initi = W_op_opx & (W_iw_opx[5 : 0] == 41);
  assign W_op_srai = W_op_opx & (W_iw_opx[5 : 0] == 58);
  assign W_op_sync = W_op_opx & (W_iw_opx[5 : 0] == 54);
  assign W_op_rsvx15 = W_op_opx & (W_iw_opx[5 : 0] == 15);
  assign W_op_rsvx55 = W_op_opx & (W_iw_opx[5 : 0] == 55);
  assign W_op_crst = W_op_opx & (W_iw_opx[5 : 0] == 62);
  assign W_op_rsvx42 = W_op_opx & (W_iw_opx[5 : 0] == 42);
  assign W_op_xor = W_op_opx & (W_iw_opx[5 : 0] == 30);
  assign W_op_rsvx34 = W_op_opx & (W_iw_opx[5 : 0] == 34);
  assign W_op_mulxss = W_op_opx & (W_iw_opx[5 : 0] == 31);
  assign W_op_rsvx51 = W_op_opx & (W_iw_opx[5 : 0] == 51);
  assign W_op_rsvx10 = W_op_opx & (W_iw_opx[5 : 0] == 10);
  assign W_op_eret = W_op_opx & (W_iw_opx[5 : 0] == 1);
  assign W_op_rsvx25 = W_op_opx & (W_iw_opx[5 : 0] == 25);
  assign W_op_jmp = W_op_opx & (W_iw_opx[5 : 0] == 13);
  assign W_op_or = W_op_opx & (W_iw_opx[5 : 0] == 22);
  assign W_op_rsvx35 = W_op_opx & (W_iw_opx[5 : 0] == 35);
  assign W_op_sra = W_op_opx & (W_iw_opx[5 : 0] == 59);
  assign W_op_rsvx20 = W_op_opx & (W_iw_opx[5 : 0] == 20);
  assign W_op_slli = W_op_opx & (W_iw_opx[5 : 0] == 18);
  assign W_op_mulxsu = W_op_opx & (W_iw_opx[5 : 0] == 23);
  assign W_op_rsvx21 = W_op_opx & (W_iw_opx[5 : 0] == 21);
  assign W_op_ror = W_op_opx & (W_iw_opx[5 : 0] == 11);
  assign W_op_srli = W_op_opx & (W_iw_opx[5 : 0] == 26);
  assign W_op_sll = W_op_opx & (W_iw_opx[5 : 0] == 19);
  assign W_op_div = W_op_opx & (W_iw_opx[5 : 0] == 37);
  assign W_op_cmplt = W_op_opx & (W_iw_opx[5 : 0] == 16);
  assign W_op_add = W_op_opx & (W_iw_opx[5 : 0] == 49);
  assign W_op_rsvx44 = W_op_opx & (W_iw_opx[5 : 0] == 44);
  assign W_op_bret = W_op_opx & (W_iw_opx[5 : 0] == 9);
  assign W_op_rsvx60 = W_op_opx & (W_iw_opx[5 : 0] == 60);
  assign W_op_rsvx63 = W_op_opx & (W_iw_opx[5 : 0] == 63);
  assign W_op_mul = W_op_opx & (W_iw_opx[5 : 0] == 39);
  assign W_op_cmpgeu = W_op_opx & (W_iw_opx[5 : 0] == 40);
  assign W_op_cmpne = W_op_opx & (W_iw_opx[5 : 0] == 24);
  assign W_op_cmpeq = W_op_opx & (W_iw_opx[5 : 0] == 32);
  assign W_op_ret = W_op_opx & (W_iw_opx[5 : 0] == 5);
  assign W_op_rol = W_op_opx & (W_iw_opx[5 : 0] == 3);
  assign W_op_sub = W_op_opx & (W_iw_opx[5 : 0] == 57);
  assign W_op_nextpc = W_op_opx & (W_iw_opx[5 : 0] == 28);
  assign W_op_divu = W_op_opx & (W_iw_opx[5 : 0] == 36);
  assign F_iw_a = F_iw[31 : 27];
  assign F_iw_b = F_iw[26 : 22];
  assign F_iw_c = F_iw[21 : 17];
  assign F_iw_custom_n = F_iw[13 : 6];
  assign F_iw_custom_readra = F_iw[16];
  assign F_iw_custom_readrb = F_iw[15];
  assign F_iw_custom_writerc = F_iw[14];
  assign F_iw_opx = F_iw[16 : 11];
  assign F_iw_shift_imm5 = F_iw[10 : 6];
  assign F_iw_control_regnum = F_iw[8 : 6];
  assign F_iw_imm16 = F_iw[21 : 6];
  assign F_iw_op = F_iw[5 : 0];
  assign F_iw_memsz = F_iw[4 : 3];
  assign F_mem8 = F_iw_memsz == 2'b00;
  assign F_mem16 = F_iw_memsz == 2'b01;
  assign F_mem32 = F_iw_memsz[1] == 1'b1;
  assign F_ram_iw_a = F_ram_iw[31 : 27];
  assign F_ram_iw_b = F_ram_iw[26 : 22];
  assign F_ram_iw_c = F_ram_iw[21 : 17];
  assign F_ram_iw_custom_n = F_ram_iw[13 : 6];
  assign F_ram_iw_custom_readra = F_ram_iw[16];
  assign F_ram_iw_custom_readrb = F_ram_iw[15];
  assign F_ram_iw_custom_writerc = F_ram_iw[14];
  assign F_ram_iw_opx = F_ram_iw[16 : 11];
  assign F_ram_iw_shift_imm5 = F_ram_iw[10 : 6];
  assign F_ram_iw_control_regnum = F_ram_iw[8 : 6];
  assign F_ram_iw_imm16 = F_ram_iw[21 : 6];
  assign F_ram_iw_op = F_ram_iw[5 : 0];
  assign F_ram_iw_memsz = F_ram_iw[4 : 3];
  assign F_ram_mem8 = F_ram_iw_memsz == 2'b00;
  assign F_ram_mem16 = F_ram_iw_memsz == 2'b01;
  assign F_ram_mem32 = F_ram_iw_memsz[1] == 1'b1;
  assign D_iw_a = D_iw[31 : 27];
  assign D_iw_b = D_iw[26 : 22];
  assign D_iw_c = D_iw[21 : 17];
  assign D_iw_custom_n = D_iw[13 : 6];
  assign D_iw_custom_readra = D_iw[16];
  assign D_iw_custom_readrb = D_iw[15];
  assign D_iw_custom_writerc = D_iw[14];
  assign D_iw_opx = D_iw[16 : 11];
  assign D_iw_shift_imm5 = D_iw[10 : 6];
  assign D_iw_control_regnum = D_iw[8 : 6];
  assign D_iw_imm16 = D_iw[21 : 6];
  assign D_iw_op = D_iw[5 : 0];
  assign D_iw_memsz = D_iw[4 : 3];
  assign D_mem8 = D_iw_memsz == 2'b00;
  assign D_mem16 = D_iw_memsz == 2'b01;
  assign D_mem32 = D_iw_memsz[1] == 1'b1;
  assign E_iw_a = E_iw[31 : 27];
  assign E_iw_b = E_iw[26 : 22];
  assign E_iw_c = E_iw[21 : 17];
  assign E_iw_custom_n = E_iw[13 : 6];
  assign E_iw_custom_readra = E_iw[16];
  assign E_iw_custom_readrb = E_iw[15];
  assign E_iw_custom_writerc = E_iw[14];
  assign E_iw_opx = E_iw[16 : 11];
  assign E_iw_shift_imm5 = E_iw[10 : 6];
  assign E_iw_control_regnum = E_iw[8 : 6];
  assign E_iw_imm16 = E_iw[21 : 6];
  assign E_iw_op = E_iw[5 : 0];
  assign E_iw_memsz = E_iw[4 : 3];
  assign E_mem8 = E_iw_memsz == 2'b00;
  assign E_mem16 = E_iw_memsz == 2'b01;
  assign E_mem32 = E_iw_memsz[1] == 1'b1;
  assign M_iw_a = M_iw[31 : 27];
  assign M_iw_b = M_iw[26 : 22];
  assign M_iw_c = M_iw[21 : 17];
  assign M_iw_custom_n = M_iw[13 : 6];
  assign M_iw_custom_readra = M_iw[16];
  assign M_iw_custom_readrb = M_iw[15];
  assign M_iw_custom_writerc = M_iw[14];
  assign M_iw_opx = M_iw[16 : 11];
  assign M_iw_shift_imm5 = M_iw[10 : 6];
  assign M_iw_control_regnum = M_iw[8 : 6];
  assign M_iw_imm16 = M_iw[21 : 6];
  assign M_iw_op = M_iw[5 : 0];
  assign M_iw_memsz = M_iw[4 : 3];
  assign M_mem8 = M_iw_memsz == 2'b00;
  assign M_mem16 = M_iw_memsz == 2'b01;
  assign M_mem32 = M_iw_memsz[1] == 1'b1;
  assign W_iw_a = W_iw[31 : 27];
  assign W_iw_b = W_iw[26 : 22];
  assign W_iw_c = W_iw[21 : 17];
  assign W_iw_custom_n = W_iw[13 : 6];
  assign W_iw_custom_readra = W_iw[16];
  assign W_iw_custom_readrb = W_iw[15];
  assign W_iw_custom_writerc = W_iw[14];
  assign W_iw_opx = W_iw[16 : 11];
  assign W_iw_shift_imm5 = W_iw[10 : 6];
  assign W_iw_control_regnum = W_iw[8 : 6];
  assign W_iw_imm16 = W_iw[21 : 6];
  assign W_iw_op = W_iw[5 : 0];
  assign W_iw_memsz = W_iw[4 : 3];
  assign W_mem8 = W_iw_memsz == 2'b00;
  assign W_mem16 = W_iw_memsz == 2'b01;
  assign W_mem32 = W_iw_memsz[1] == 1'b1;
  assign F_stall = D_stall;
  assign F_en = ~F_stall;
  assign F_iw = (latched_oci_tb_hbreak_req & hbreak_enabled) ? 4040762 :
    1'b0                                 ? 127034 :
    intr_req                                     ? 3926074 : 
    F_ram_iw;

  assign F_kill = D_refetch | (D_br_pred_taken & D_valid) | M_pipe_flush;
  assign F_br_taken_waddr_partial = F_pc_plus_one[9 : 0] + 
    F_ram_iw_imm16[11 : 2];

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_inst_ram_hit <= 0;
      else if (D_en)
          D_inst_ram_hit <= F_inst_ram_hit;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_issue <= 0;
      else if (D_en)
          D_issue <= F_issue;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_kill <= 0;
      else if (D_en)
          D_kill <= F_kill;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_br_taken_waddr_partial <= 0;
      else if (D_en)
          D_br_taken_waddr_partial <= F_br_taken_waddr_partial;
    end


  assign D_refetch = ~D_inst_ram_hit & ~D_kill;
  assign D_br_offset_sex = {{16 {D_iw_imm16[15]}}, D_iw_imm16[15 : 12]};
  assign D_br_offset_remaining = D_br_offset_sex[15 : 0];
  assign D_br_taken_waddr = { D_pc_plus_one[25 : 10] +
    D_br_offset_remaining + 
    D_br_taken_waddr_partial[10],
    D_br_taken_waddr_partial[9 : 0]};

  assign D_br_taken_baddr = {D_br_taken_waddr, 2'b00};
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_br_taken_baddr <= 0;
      else if (E_en)
          E_br_taken_baddr <= D_br_taken_baddr;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_br_taken_baddr <= 0;
      else if (M_en)
          M_br_taken_baddr <= E_br_taken_baddr;
    end


  assign F_pcb_nxt = {F_pc_nxt, 2'b00};
  assign F_pcb = {F_pc, 2'b00};
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          F_pc <= 0;
      else if (F_en)
          F_pc <= F_pc_nxt;
    end


  assign F_pc_plus_one = F_pc + 1;
  assign F_ic_data_rd_addr_nxt = F_pc_nxt[9 : 0];
//cpu_ic_data, which is an e_dpram
cpu_ic_data_module cpu_ic_data
  (
    .data      (i_readdata_d1),
    .q         (F_ic_iw),
    .rdaddress (F_ic_data_rd_addr_nxt),
    .rdclken   (F_en),
    .rdclock   (clk),
    .wraddress ({ic_fill_line, ic_fill_dp_offset}),
    .wrclock   (clk),
    .wren      (i_readdatavalid_d1)
  );

  assign F_ic_tag_rd_addr_nxt = F_pc_nxt[9 : 3];
  assign ic_tag_clr_valid_bits_nxt = (M_ctrl_invalidate_i & M_valid) | D_ic_fill_starting | reset_d1;
  assign ic_fill_valid_bits_nxt = ic_tag_clr_valid_bits_nxt ? 0 :
    D_ic_fill_starting_d1     ? ic_fill_valid_bit_new : 
    (ic_fill_valid_bits | ic_fill_valid_bit_new);

  assign ic_fill_valid_bits_en = ic_tag_clr_valid_bits_nxt | D_ic_fill_starting_d1 | 
    i_readdatavalid_d1;

  assign ic_tag_wraddress_nxt = reset_d1                ? 1 :
    (M_ctrl_crst & M_valid)              ? 0 :
    (M_ctrl_invalidate_i & M_valid)        ? M_alu_result[11 : 5] :
    D_ic_fill_starting      ? D_pc_line_field :
    ic_fill_line;

  assign ic_tag_wren = ic_tag_clr_valid_bits | i_readdatavalid_d1;
  assign ic_tag_wrdata = {ic_fill_tag, ic_fill_valid_bits};
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          reset_d1 <= 1;
      else if (1)
          reset_d1 <= 0;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ic_tag_clr_valid_bits <= 1;
      else if (1'b1)
          ic_tag_clr_valid_bits <= ic_tag_clr_valid_bits_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ic_fill_valid_bits <= 0;
      else if (ic_fill_valid_bits_en)
          ic_fill_valid_bits <= ic_fill_valid_bits_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ic_tag_wraddress <= 0;
      else if (1'b1)
          ic_tag_wraddress <= ic_tag_wraddress_nxt;
    end


//cpu_ic_tag, which is an e_dpram
cpu_ic_tag_module cpu_ic_tag
  (
    .data      (ic_tag_wrdata),
    .q         (F_ic_tag_rd),
    .rdaddress (F_ic_tag_rd_addr_nxt),
    .rdclken   (F_en),
    .rdclock   (clk),
    .wraddress (ic_tag_wraddress),
    .wrclock   (clk),
    .wren      (ic_tag_wren)
  );

//synthesis translate_off
`ifdef NO_PLI
defparam cpu_ic_tag.lpm_file = "cpu_ic_tag_ram.dat";
`else
defparam cpu_ic_tag.lpm_file = "cpu_ic_tag_ram.hex";
`endif
//synthesis translate_on
//synthesis read_comments_as_HDL on
//defparam cpu_ic_tag.lpm_file = "cpu_ic_tag_ram.mif";
//synthesis read_comments_as_HDL off
  assign F_ic_tag_field = F_ic_tag_rd[23 : 8];
  assign F_ic_valid_bits = F_ic_tag_rd[7 : 0];
  assign F_ic_desired_tag = F_pc[25 : 10];
  assign F_ic_valid = (F_pc[2 : 0] == 3'd0)? F_ic_valid_bits[0] :
    (F_pc[2 : 0] == 3'd1)? F_ic_valid_bits[1] :
    (F_pc[2 : 0] == 3'd2)? F_ic_valid_bits[2] :
    (F_pc[2 : 0] == 3'd3)? F_ic_valid_bits[3] :
    (F_pc[2 : 0] == 3'd4)? F_ic_valid_bits[4] :
    (F_pc[2 : 0] == 3'd5)? F_ic_valid_bits[5] :
    (F_pc[2 : 0] == 3'd6)? F_ic_valid_bits[6] :
    F_ic_valid_bits[7];

  assign F_ic_hit = F_ic_valid & (F_ic_desired_tag == F_ic_tag_field);
  assign F_pc_tag_field = F_pc[25 : 10];
  assign F_pc_line_field = F_pc[9 : 3];
  assign D_pc_tag_field = D_pc[25 : 10];
  assign D_pc_line_field = D_pc[9 : 3];
  assign D_pc_offset_field = D_pc[2 : 0];
  assign D_ic_want_fill_unfiltered = ~D_inst_ram_hit & ~D_kill & ~M_pipe_flush;
  assign ic_fill_prevent_refill_nxt = D_ic_fill_starting | (ic_fill_prevent_refill & ~(M_ctrl_invalidate_i & M_valid));
  assign F_ic_fill_same_tag_line = (F_pc_tag_field == ic_fill_tag) & (F_pc_line_field == ic_fill_line);
  assign D_ic_fill_ignore = ic_fill_prevent_refill & D_ic_fill_same_tag_line;
  assign D_ic_fill_starting = ~ic_fill_active & D_ic_want_fill & ~D_ic_fill_ignore;
  assign ic_fill_done = ic_fill_dp_last_word & i_readdatavalid_d1;
  assign ic_fill_active_nxt = D_ic_fill_starting | (ic_fill_active & ~ic_fill_done);
  assign ic_fill_dp_last_word = ic_fill_dp_offset_nxt == ic_fill_initial_offset;
  assign ic_fill_dp_offset_en = D_ic_fill_starting_d1 | i_readdatavalid_d1;
  assign ic_fill_dp_offset_nxt = D_ic_fill_starting_d1 ? 
    ic_fill_initial_offset : 
    (ic_fill_dp_offset + 1);

  assign ic_fill_ap_offset_nxt = ic_fill_req_accepted ? (ic_fill_ap_offset + 1) :
    D_ic_fill_starting   ? D_pc_offset_field :
    ic_fill_ap_offset;

  assign ic_fill_ap_cnt_nxt = ic_fill_req_accepted ? (ic_fill_ap_cnt + 1) :
    D_ic_fill_starting   ? 1 :
    ic_fill_ap_cnt;

  assign ic_fill_ap_last_word = ic_fill_ap_cnt[3];
  assign ic_fill_req_accepted = i_read & ~i_waitrequest;
  assign i_read_nxt = D_ic_fill_starting | 
    (i_read & (i_waitrequest | ~ic_fill_ap_last_word));

  assign i_address = {ic_fill_tag, 
    ic_fill_line[6 : 0],
    ic_fill_ap_offset, 
    2'b00};

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ic_fill_ap_offset <= 0;
      else if (1'b1)
          ic_fill_ap_offset <= ic_fill_ap_offset_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ic_fill_ap_cnt <= 0;
      else if (1'b1)
          ic_fill_ap_cnt <= ic_fill_ap_cnt_nxt;
    end


  assign ic_fill_valid_bit_new = (ic_fill_dp_offset_nxt == 3'd0)? 8'b00000001 :
    (ic_fill_dp_offset_nxt == 3'd1)? 8'b00000010 :
    (ic_fill_dp_offset_nxt == 3'd2)? 8'b00000100 :
    (ic_fill_dp_offset_nxt == 3'd3)? 8'b00001000 :
    (ic_fill_dp_offset_nxt == 3'd4)? 8'b00010000 :
    (ic_fill_dp_offset_nxt == 3'd5)? 8'b00100000 :
    (ic_fill_dp_offset_nxt == 3'd6)? 8'b01000000 :
    8'b10000000;

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_ic_fill_starting_d1 <= 0;
      else if (1'b1)
          D_ic_fill_starting_d1 <= D_ic_fill_starting;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_ic_fill_same_tag_line <= 0;
      else if (D_en)
          D_ic_fill_same_tag_line <= F_ic_fill_same_tag_line;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ic_fill_active <= 0;
      else if (1'b1)
          ic_fill_active <= ic_fill_active_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ic_fill_prevent_refill <= 0;
      else if (1'b1)
          ic_fill_prevent_refill <= ic_fill_prevent_refill_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ic_fill_tag <= 0;
      else if (D_ic_fill_starting)
          ic_fill_tag <= D_pc_tag_field;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ic_fill_line <= 0;
      else if (D_ic_fill_starting)
          ic_fill_line <= D_pc_line_field;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ic_fill_initial_offset <= 0;
      else if (D_ic_fill_starting)
          ic_fill_initial_offset <= D_pc_offset_field;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          ic_fill_dp_offset <= 0;
      else if (ic_fill_dp_offset_en)
          ic_fill_dp_offset <= ic_fill_dp_offset_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          i_readdata_d1 <= 0;
      else if (1'b1)
          i_readdata_d1 <= i_readdata;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          i_readdatavalid_d1 <= 0;
      else if (1'b1)
          i_readdatavalid_d1 <= i_readdatavalid;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          i_read <= 0;
      else if (1'b1)
          i_read <= i_read_nxt;
    end


  assign F_sel_instruction_master = 1'b1;
  assign F_ram_iw = F_ic_iw;
  assign F_inst_ram_hit = (F_ic_hit & ~((W_ctrl_crst & W_valid))) | 
    ~F_sel_instruction_master;

  assign F_issue = F_inst_ram_hit & ~F_kill;
  assign D_br_cond_pred_taken = D_iw_imm16[15];
  assign D_br_pred_taken = D_ctrl_br & (D_ctrl_br_uncond | D_br_cond_pred_taken);
  assign D_br_pred_not_taken = D_ctrl_br_cond & !D_br_cond_pred_taken;
  assign E_br_cond_pred_taken = E_iw_imm16[15];
  assign E_br_actually_taken = E_cmp_result;
  assign E_br_mispredict = E_ctrl_br_cond & (E_br_cond_pred_taken != E_br_actually_taken);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_br_mispredict <= 0;
      else if (M_en)
          M_br_mispredict <= E_br_mispredict;
    end


  assign D_pcb = {D_pc, 2'b00};
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_pcb <= 0;
      else if (E_en)
          E_pcb <= D_pcb;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_pcb <= 0;
      else if (M_en)
          M_pcb <= E_pcb;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          W_pcb <= 0;
      else if (1'b1)
          W_pcb <= M_pcb;
    end


  assign D_stall = E_stall;
  assign D_en = ~D_stall;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_iw <= 0;
      else if (D_en)
          D_iw <= F_iw;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_pc <= 0;
      else if (D_en)
          D_pc <= F_pc;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          D_pc_plus_one <= 0;
      else if (D_en)
          D_pc_plus_one <= F_pc_plus_one;
    end


  assign D_valid = D_issue & ~M_pipe_flush;
  assign D_extra_pc = D_br_pred_not_taken ? D_br_taken_waddr : 
    D_pc_plus_one;

  assign D_extra_pcb = {D_extra_pc, 2'b00};
  assign E_stall = M_stall;
  assign E_en = ~E_stall;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_valid_from_D <= 0;
      else if (E_en)
          E_valid_from_D <= D_valid;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_iw <= 0;
      else if (E_en)
          E_iw <= D_iw;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_dst_regnum <= 0;
      else if (E_en)
          E_dst_regnum <= D_dst_regnum;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_wr_dst_reg_from_D <= 0;
      else if (E_en)
          E_wr_dst_reg_from_D <= D_wr_dst_reg;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_extra_pc <= 0;
      else if (E_en)
          E_extra_pc <= D_extra_pc;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_pc <= 0;
      else if (E_en)
          E_pc <= D_pc;
    end


  assign E_extra_pcb = {E_extra_pc, 2'b00};
  assign E_jmp_direct_target_waddr = E_iw[31 : 6];
  assign E_jmp_direct_target_baddr = {E_jmp_direct_target_waddr, 2'b00};
  assign E_valid = E_valid_from_D & ~E_cancel;
  assign E_wr_dst_reg = E_wr_dst_reg_from_D & ~E_cancel;
  assign E_valid_prior_to_hbreak = E_valid_from_D & ~M_pipe_flush;
  assign E_cancel = M_pipe_flush | E_hbreak_req;
  assign M_pipe_flush_nxt = (E_valid & (E_br_mispredict | E_ctrl_flush_pipe_always)) |
    (E_valid_prior_to_hbreak & E_hbreak_req);

  assign M_pipe_flush_waddr_nxt = E_hbreak_req        ? E_pc                       :
    E_ctrl_jmp_indirect ? E_src1[27 : 2]        :
    E_ctrl_jmp_direct   ? E_jmp_direct_target_waddr  :
    E_ctrl_crst         ? 37748736 :
    E_ctrl_exception    ? 37748744   :
    E_ctrl_break        ? 41943048 :
    E_extra_pc;

  assign M_pipe_flush_baddr_nxt = {M_pipe_flush_waddr_nxt, 2'b00};
  assign M_stall = M_ld_stall | M_st_stall | M_mul_stall | M_shift_rot_stall;
  assign M_en = ~M_stall;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_valid_from_E <= 0;
      else if (M_en)
          M_valid_from_E <= E_valid;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_iw <= 0;
      else if (M_en)
          M_iw <= E_iw;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_mem_byte_en <= 0;
      else if (M_en)
          M_mem_byte_en <= E_mem_byte_en;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_alu_result <= 0;
      else if (M_en)
          M_alu_result <= E_alu_result;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_st_data <= 0;
      else if (M_en)
          M_st_data <= E_st_data;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_dst_regnum <= 0;
      else if (M_en)
          M_dst_regnum <= E_dst_regnum;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_cmp_result <= 0;
      else if (M_en)
          M_cmp_result <= E_cmp_result;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_wr_dst_reg <= 1'b1;
      else if (M_en)
          M_wr_dst_reg <= E_wr_dst_reg;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_pipe_flush <= 1'b1;
      else if (M_en)
          M_pipe_flush <= M_pipe_flush_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_pipe_flush_waddr <= 37748736;
      else if (M_en)
          M_pipe_flush_waddr <= M_pipe_flush_waddr_nxt;
    end


  assign M_pipe_flush_baddr = {M_pipe_flush_waddr, 2'b00};
  assign M_mem_baddr = M_alu_result[28 : 0];
  assign M_valid = M_valid_from_E;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          av_ld_data_aligned_or_div <= 0;
      else if (1'b1)
          av_ld_data_aligned_or_div <= av_ld_data_aligned_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          av_ld_or_div_done <= 0;
      else if (1'b1)
          av_ld_or_div_done <= av_ld_aligning_data;
    end


  assign M_wr_data_unfiltered = (M_ctrl_mul_lsw)? M_mul_result :
    (M_ctrl_shift_rot)? M_shift_rot_result :
    (av_ld_or_div_done)? av_ld_data_aligned_or_div :
    M_alu_result;

  assign M_fwd_reg_data = M_wr_data_filtered;
  assign W_stall = M_stall;
  assign W_en = ~W_stall;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          W_wr_data <= 0;
      else if (W_en)
          W_wr_data <= M_wr_data_filtered;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          W_wr_dst_reg <= 0;
      else if (W_en)
          W_wr_dst_reg <= M_wr_dst_reg & M_en;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          W_dst_regnum <= 0;
      else if (W_en)
          W_dst_regnum <= M_dst_regnum;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          W_iw <= 0;
      else if (1'b1)
          W_iw <= M_iw;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          W_valid <= 0;
      else if (1'b1)
          W_valid <= M_valid & M_en;
    end


  assign F_pc_nxt = (M_pipe_flush)? M_pipe_flush_waddr :
    (D_refetch)? D_pc :
    ((D_br_pred_taken & D_issue))? D_br_taken_waddr :
    F_pc_plus_one;

//cpu_register_bank_a, which is an e_dpram
cpu_register_bank_a_module cpu_register_bank_a
  (
    .data      (M_wr_data_filtered),
    .q         (D_rf_a),
    .rdaddress (F_ram_iw_a),
    .rdclken   (D_en),
    .rdclock   (clk),
    .wraddress (M_dst_regnum),
    .wrclock   (clk),
    .wren      (M_wr_dst_reg)
  );

//synthesis translate_off
`ifdef NO_PLI
defparam cpu_register_bank_a.lpm_file = "cpu_rf_ram_a.dat";
`else
defparam cpu_register_bank_a.lpm_file = "cpu_rf_ram_a.hex";
`endif
//synthesis translate_on
//synthesis read_comments_as_HDL on
//defparam cpu_register_bank_a.lpm_file = "cpu_rf_ram_a.mif";
//synthesis read_comments_as_HDL off
//cpu_register_bank_b, which is an e_dpram
cpu_register_bank_b_module cpu_register_bank_b
  (
    .data      (M_wr_data_filtered),
    .q         (D_rf_b),
    .rdaddress (F_ram_iw_b),
    .rdclken   (D_en),
    .rdclock   (clk),
    .wraddress (M_dst_regnum),
    .wrclock   (clk),
    .wren      (M_wr_dst_reg)
  );

//synthesis translate_off
`ifdef NO_PLI
defparam cpu_register_bank_b.lpm_file = "cpu_rf_ram_b.dat";
`else
defparam cpu_register_bank_b.lpm_file = "cpu_rf_ram_b.hex";
`endif
//synthesis translate_on
//synthesis read_comments_as_HDL on
//defparam cpu_register_bank_b.lpm_file = "cpu_rf_ram_b.mif";
//synthesis read_comments_as_HDL off
  assign D_regnum_a_cmp_E = (D_iw_a == E_dst_regnum) & E_wr_dst_reg;
  assign D_regnum_a_cmp_M = (D_iw_a == M_dst_regnum) & M_wr_dst_reg;
  assign D_regnum_a_cmp_W = (D_iw_a == W_dst_regnum) & W_wr_dst_reg;
  assign D_regnum_b_cmp_E = (D_iw_b == E_dst_regnum) & E_wr_dst_reg;
  assign D_regnum_b_cmp_M = (D_iw_b == M_dst_regnum) & M_wr_dst_reg;
  assign D_regnum_b_cmp_W = (D_iw_b == W_dst_regnum) & W_wr_dst_reg;
  assign D_ctrl_a_is_src = ~D_ctrl_a_not_src;
  assign D_ctrl_b_is_src = ~D_ctrl_b_not_src;
  assign D_src1_hazard_E = D_regnum_a_cmp_E & D_ctrl_a_is_src;
  assign D_src1_hazard_M = D_regnum_a_cmp_M & D_ctrl_a_is_src;
  assign D_src1_hazard_W = D_regnum_a_cmp_W & D_ctrl_a_is_src;
  assign D_src2_hazard_E = D_regnum_b_cmp_E & D_ctrl_b_is_src;
  assign D_src2_hazard_M = D_regnum_b_cmp_M & D_ctrl_b_is_src;
  assign D_src2_hazard_W = D_regnum_b_cmp_W & D_ctrl_b_is_src;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_src1_hazard_M <= 0;
      else if (E_en)
          E_src1_hazard_M <= D_src1_hazard_E;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_src2_hazard_M <= 0;
      else if (E_en)
          E_src2_hazard_M <= D_src2_hazard_E;
    end


  assign D_dstfield_regnum = D_ctrl_b_is_dst ? D_iw_b : D_iw_c;
  assign D_dst_regnum = D_ctrl_implicit_dst_retaddr ? 5'd31 : 
    D_ctrl_implicit_dst_eretaddr ? 5'd29 : 
    D_dstfield_regnum;

  assign D_wr_dst_reg = (D_dst_regnum != 0) & ~D_ctrl_ignore_dst & D_valid;
  assign D_src1_prelim = (D_src1_hazard_M)? M_fwd_reg_data :
    (D_src1_hazard_W)? W_wr_data :
    D_rf_a;

  assign D_src2_prelim = (D_src2_hazard_M)? M_fwd_reg_data :
    (D_src2_hazard_W)? W_wr_data :
    D_rf_b;

  assign D_src2_imm_sel = {D_ctrl_hi_imm,D_ctrl_unsigned_lo_imm};
  assign D_src2_imm = (D_src2_imm_sel == 2'b00)? {{16 {D_iw_imm16[15]}}, D_iw_imm16} :
    (D_src2_imm_sel == 2'b01)? {{16 {1'b0}}          , D_iw_imm16} :
    (D_src2_imm_sel == 2'b10)? {D_iw_imm16                               , 16'b0     } :
    {{16 {1'b0}}          , 16'b0     };

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_src1_prelim <= 0;
      else if (E_en)
          E_src1_prelim <= D_src1_prelim;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_src2_prelim <= 0;
      else if (E_en)
          E_src2_prelim <= D_src2_prelim;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_src2_imm <= 0;
      else if (E_en)
          E_src2_imm <= D_src2_imm;
    end


  assign E_src1 = E_src1_hazard_M ? M_fwd_reg_data : E_src1_prelim;
  assign E_src2_reg = E_src2_hazard_M ? M_fwd_reg_data : E_src2_prelim;
  assign E_src2 = E_ctrl_src2_choose_imm ? E_src2_imm : E_src2_reg;
  assign D_logic_op = D_op_opx ? D_iw_opx[4 : 3] : 
    D_iw_op[4 : 3];

  assign D_compare_op = D_op_opx ? D_iw_opx[4 : 3] : 
    D_iw_op[4 : 3];

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_logic_op <= 0;
      else if (E_en)
          E_logic_op <= D_logic_op;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_compare_op <= 0;
      else if (E_en)
          E_compare_op <= D_compare_op;
    end


  assign E_arith_src1 = { E_src1[31] ^ E_ctrl_alu_signed_cmp, 
    E_src1[30 : 0]};

  assign E_arith_src2 = { E_src2[31] ^ E_ctrl_alu_signed_cmp, 
    E_src2[30 : 0]};

  assign E_arith_result = E_ctrl_alu_subtract ?
    E_arith_src1 - E_arith_src2 :
    E_arith_src1 + E_arith_src2;

  assign E_mem_baddr = E_arith_result[28 : 0];
  assign E_logic_result = (E_logic_op == 2'b00)? (~(E_src1 | E_src2)) :
    (E_logic_op == 2'b01)? (E_src1 & E_src2) :
    (E_logic_op == 2'b10)? (E_src1 | E_src2) :
    (E_src1 ^ E_src2);

  assign E_eq = E_src1_eq_src2;
  assign E_lt = E_arith_result[32];
  assign E_cmp_result = (E_compare_op == 2'b00)? E_eq :
    (E_compare_op == 2'b01)? ~E_lt :
    (E_compare_op == 2'b10)? E_lt :
    ~E_eq;

  assign E_alu_result = (E_ctrl_dst_data_sel_cmp)? E_cmp_result :
    (E_ctrl_rdctl_inst)? E_control_rd_data :
    (E_ctrl_dst_data_sel_logic_result)? E_logic_result :
    (E_ctrl_dst_data_sel_pc_plus_one)? {E_extra_pc, 2'b00} :
    E_arith_result[31 : 0];

  assign E_stb_data = E_src2_reg[7 : 0];
  assign E_sth_data = E_src2_reg[15 : 0];
  assign E_st_data = (E_mem8)? {E_stb_data, E_stb_data, E_stb_data, E_stb_data} :
    (E_mem16)? {E_sth_data, E_sth_data} :
    E_src2_reg;

  assign E_mem_byte_en = ({E_iw_memsz, E_mem_baddr[1 : 0]} == {2'b00, 2'b00})? 4'b0001 :
    ({E_iw_memsz, E_mem_baddr[1 : 0]} == {2'b00, 2'b01})? 4'b0010 :
    ({E_iw_memsz, E_mem_baddr[1 : 0]} == {2'b00, 2'b10})? 4'b0100 :
    ({E_iw_memsz, E_mem_baddr[1 : 0]} == {2'b00, 2'b11})? 4'b1000 :
    ({E_iw_memsz, E_mem_baddr[1 : 0]} == {2'b01, 2'b00})? 4'b0011 :
    ({E_iw_memsz, E_mem_baddr[1 : 0]} == {2'b01, 2'b01})? 4'b0011 :
    ({E_iw_memsz, E_mem_baddr[1 : 0]} == {2'b01, 2'b10})? 4'b1100 :
    ({E_iw_memsz, E_mem_baddr[1 : 0]} == {2'b01, 2'b11})? 4'b1100 :
    4'b1111;

  assign D_control_rd_data_without_mmu_regs = (D_iw_control_regnum == 3'd0)? M_status_reg :
    (D_iw_control_regnum == 3'd1)? M_estatus_reg :
    (D_iw_control_regnum == 3'd2)? M_bstatus_reg :
    (D_iw_control_regnum == 3'd3)? M_ienable_reg :
    (D_iw_control_regnum == 3'd4)? M_ipending_reg :
    0;

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_control_rd_data_without_mmu_regs <= 0;
      else if (E_en)
          E_control_rd_data_without_mmu_regs <= D_control_rd_data_without_mmu_regs;
    end


  assign E_control_rd_data = E_control_rd_data_without_mmu_regs;
  assign E_wrctl_status = E_ctrl_wrctl_inst & 
    (E_iw_control_regnum == 3'd0);

  assign E_wrctl_estatus = E_ctrl_wrctl_inst & 
    (E_iw_control_regnum == 3'd1);

  assign E_wrctl_bstatus = E_ctrl_wrctl_inst & 
    (E_iw_control_regnum == 3'd2);

  assign E_wrctl_ienable = E_ctrl_wrctl_inst & 
    (E_iw_control_regnum == 3'd3);

  assign iactive = d_irq[31 : 0] & 32'b00000000000000000001110100000011;
  assign M_ienable_reg_nxt = ((E_wrctl_ienable & E_valid) ? 
    E_alu_result[31 : 0] : M_ienable_reg) & 32'b00000000000000000001110100000011;

  assign M_ipending_reg_nxt = iactive & M_ienable_reg & oci_ienable & 32'b00000000000000000001110100000011;
  assign M_status_reg_pie_inst_nxt = (E_ctrl_exception | E_ctrl_break |
    E_ctrl_crst)      ? 1'b0 :
    E_op_eret         ? M_estatus_reg :
    E_op_bret         ? M_bstatus_reg :
    E_wrctl_status    ? E_alu_result[0] :
    M_status_reg_pie;

  assign M_status_reg_pie_nxt = E_valid           ? M_status_reg_pie_inst_nxt : 
    M_status_reg_pie;

  assign M_estatus_reg_inst_nxt = E_ctrl_crst       ? 0 :
    E_ctrl_exception  ? M_status_reg :
    E_wrctl_estatus   ? E_alu_result[0] :
    M_estatus_reg;

  assign M_estatus_reg_nxt = E_valid ? M_estatus_reg_inst_nxt : M_estatus_reg;
  assign M_bstatus_reg_inst_nxt = E_ctrl_break      ? M_status_reg :
    E_wrctl_bstatus   ? E_alu_result[0] :
    M_bstatus_reg;

  assign M_bstatus_reg_nxt = E_valid ? M_bstatus_reg_inst_nxt : M_bstatus_reg;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_status_reg_pie <= 0;
      else if (M_en)
          M_status_reg_pie <= M_status_reg_pie_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_estatus_reg <= 0;
      else if (M_en)
          M_estatus_reg <= M_estatus_reg_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_bstatus_reg <= 0;
      else if (M_en)
          M_bstatus_reg <= M_bstatus_reg_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ienable_reg <= 0;
      else if (M_en)
          M_ienable_reg <= M_ienable_reg_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ipending_reg <= 0;
      else if (1'b1)
          M_ipending_reg <= M_ipending_reg_nxt;
    end


  assign M_status_reg = M_status_reg_pie;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          hbreak_enabled <= 1'b1;
      else if (M_valid & M_en)
          hbreak_enabled <= M_ctrl_break ? 1'b0 : M_op_bret ? 1'b1 : hbreak_enabled;
    end


  assign oci_tb_hbreak_req = oci_hbreak_req;
  assign hbreak_req = (oci_tb_hbreak_req | latched_oci_tb_hbreak_req) 
    & hbreak_enabled   
    & ~(wait_for_one_post_bret_inst);

  assign E_hbreak_req = hbreak_req & 
    ~(E_op_hbreak & E_valid_prior_to_hbreak);

  assign latched_oci_tb_hbreak_req_next = latched_oci_tb_hbreak_req ? hbreak_enabled 
    : (hbreak_req & E_valid_prior_to_hbreak);

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          latched_oci_tb_hbreak_req <= 1'b0;
      else if (1'b1)
          latched_oci_tb_hbreak_req <= latched_oci_tb_hbreak_req_next;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          wait_for_one_post_bret_inst <= 1'b0;
      else if (1'b1)
          wait_for_one_post_bret_inst <= (~hbreak_enabled & oci_single_step_mode) ? 1'b1 
                    : ((E_en & E_valid_prior_to_hbreak) | 
                    (~oci_single_step_mode))             ? 1'b0 
                    : wait_for_one_post_bret_inst;

    end


  assign intr_req = M_status_reg_pie & (M_ipending_reg != 0);
  assign av_ld_req = E_ctrl_ld & E_valid & M_en;
  assign M_ld_stall = M_ctrl_ld & M_valid & ~av_ld_or_div_done;
  assign d_read_nxt = av_ld_req | (d_read & d_waitrequest);
  assign av_st_req = E_ctrl_st & E_valid & M_en;
  assign M_st_stall = d_write & d_waitrequest;
  assign d_write_nxt = av_st_req | (d_write & d_waitrequest);
  assign d_writedata = M_st_data;
  assign d_byteenable = M_mem_byte_en;
  assign d_address = M_mem_baddr;
  assign av_ld_data_transfer = d_read & ~d_waitrequest;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d_write <= 0;
      else if (1'b1)
          d_write <= d_write_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d_read <= 0;
      else if (1'b1)
          d_read <= d_read_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d_readdata_d1 <= 0;
      else if (1'b1)
          d_readdata_d1 <= d_readdata;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          av_ld_aligning_data <= 0;
      else if (1'b1)
          av_ld_aligning_data <= av_ld_data_transfer;
    end


  assign av_sign_bit_16 = M_mem_baddr[1] ? 
    {d_readdata_d1[31], d_readdata_d1[23]} : 
    {d_readdata_d1[15], d_readdata_d1[7]};

  assign av_sign_bit = ((M_mem_baddr[0]) | M_mem16) ? 
    av_sign_bit_16[1] : av_sign_bit_16[0];

  assign av_fill_bit = av_sign_bit & M_ctrl_ld_signed;
  assign M_ld_align_sh16 = ~M_mem32 & M_mem_baddr[1];
  assign M_ld_align_sh8 = M_mem8 & M_mem_baddr[0];
  assign av_ld16_data = M_ld_align_sh16 ? 
    d_readdata_d1[31 : 16] :
    d_readdata_d1[15 : 0];

  assign av_ld_byte0_data = M_ld_align_sh8 ? 
    av_ld16_data[15 : 8] :
    av_ld16_data[7 : 0];

  assign av_ld_byte1_data = M_mem8 ? 
    {8 {av_fill_bit}} : 
    av_ld16_data[15 : 8];

  assign av_ld_byte2_data = ~M_mem32 ? 
    {8 {av_fill_bit}} : 
    d_readdata_d1[23 : 16];

  assign av_ld_byte3_data = ~M_mem32 ? 
    {8 {av_fill_bit}} : 
    d_readdata_d1[31 : 24];

  assign av_ld_data_aligned_nxt = {av_ld_byte3_data, av_ld_byte2_data, 
    av_ld_byte1_data, av_ld_byte0_data};

  assign M_mul_cnt_nxt = M_mul_stall ? 
    M_mul_cnt-1 :
    4;

  assign M_mul_done_nxt = M_mul_cnt_nxt == 0;
  assign M_mul_stall_nxt = ~M_mul_done_nxt & 
    (M_mul_stall |
    (E_ctrl_mul_lsw & E_valid & M_en));

  assign M_mul_src1_nxt = (~M_mul_stall)? E_src1 :
    {M_mul_src1[15 : 0],
    16'b0};

  assign M_mul_src2_nxt = (~M_mul_stall)? E_src2 :
    {16'b0,
    M_mul_src2[31 : 16]};

  assign M_mul_partial_prod_nxt = M_mul_cell_result[31 : 0];
  assign M_mul_result_nxt = M_mul_stall_d3 ?
    M_mul_partial_prod + M_mul_result :
    M_mul_partial_prod;

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_mul_src1 <= 0;
      else if (1'b1)
          M_mul_src1 <= M_mul_src1_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_mul_src2 <= 0;
      else if (1'b1)
          M_mul_src2 <= M_mul_src2_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_mul_partial_prod <= 0;
      else if (1'b1)
          M_mul_partial_prod <= M_mul_partial_prod_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_mul_result <= 0;
      else if (1'b1)
          M_mul_result <= M_mul_result_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_mul_cnt <= 0;
      else if (1'b1)
          M_mul_cnt <= M_mul_cnt_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_mul_stall <= 0;
      else if (1'b1)
          M_mul_stall <= M_mul_stall_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_mul_stall_d1 <= 0;
      else if (1'b1)
          M_mul_stall_d1 <= M_mul_stall;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_mul_stall_d2 <= 0;
      else if (1'b1)
          M_mul_stall_d2 <= M_mul_stall_d1;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_mul_stall_d3 <= 0;
      else if (1'b1)
          M_mul_stall_d3 <= M_mul_stall_d2;
    end


  cpu_mult_cell the_cpu_mult_cell
    (
      .M_mul_cell_result (M_mul_cell_result),
      .M_mul_src1        (M_mul_src1),
      .M_mul_src2        (M_mul_src2),
      .clk               (clk),
      .reset_n           (reset_n)
    );

  assign M_shift_rot_cnt_nxt = M_shift_rot_stall ? 
    M_shift_rot_cnt-1 :
    3;

  assign M_shift_rot_done_nxt = M_shift_rot_cnt_nxt == 0;
  assign M_shift_rot_stall_nxt = ~M_shift_rot_done_nxt & 
    (M_shift_rot_stall |
    (E_ctrl_shift_rot & E_valid & M_en));

  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_shift_rot_cnt <= 0;
      else if (1'b1)
          M_shift_rot_cnt <= M_shift_rot_cnt_nxt;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_shift_rot_stall <= 0;
      else if (1'b1)
          M_shift_rot_stall <= M_shift_rot_stall_nxt;
    end


  assign E_rot_n = E_src2[4 : 0];
  assign E_rot_rn = E_ctrl_shift_rot_right ? -E_rot_n : E_rot_n;
  assign E_rot_fill_bit = E_ctrl_shift_right_arith ? E_src1[31] : 0;
  assign E_rot_left_mask = (E_rot_n[2 : 0] == 3'b000)? 8'b00000000 :
    (E_rot_n[2 : 0] == 3'b001)? 8'b00000001 :
    (E_rot_n[2 : 0] == 3'b010)? 8'b00000011 :
    (E_rot_n[2 : 0] == 3'b011)? 8'b00000111 :
    (E_rot_n[2 : 0] == 3'b100)? 8'b00001111 :
    (E_rot_n[2 : 0] == 3'b101)? 8'b00011111 :
    (E_rot_n[2 : 0] == 3'b110)? 8'b00111111 :
    8'b01111111;

  assign E_rot_right_mask = (E_rot_n[2 : 0] == 3'b000)? 8'b00000000 :
    (E_rot_n[2 : 0] == 3'b001)? 8'b10000000 :
    (E_rot_n[2 : 0] == 3'b010)? 8'b11000000 :
    (E_rot_n[2 : 0] == 3'b011)? 8'b11100000 :
    (E_rot_n[2 : 0] == 3'b100)? 8'b11110000 :
    (E_rot_n[2 : 0] == 3'b101)? 8'b11111000 :
    (E_rot_n[2 : 0] == 3'b110)? 8'b11111100 :
    8'b11111110;

  assign E_rot_mask = E_ctrl_shift_rot_right ? E_rot_right_mask : E_rot_left_mask;
  assign E_rot_pass0 = E_ctrl_rot ||                                              (E_ctrl_shift_rot_right && (E_rot_n < 24));
  assign E_rot_pass1 = E_ctrl_rot || (E_ctrl_shift_rot_left && (E_rot_n <  8)) || (E_ctrl_shift_rot_right && (E_rot_n < 16));
  assign E_rot_pass2 = E_ctrl_rot || (E_ctrl_shift_rot_left && (E_rot_n < 16)) || (E_ctrl_shift_rot_right && (E_rot_n <  8));
  assign E_rot_pass3 = E_ctrl_rot || (E_ctrl_shift_rot_left && (E_rot_n < 24));
  assign E_rot_sel_fill0 = E_ctrl_shift_rot_left && (E_rot_n >=  8);
  assign E_rot_sel_fill1 = (E_ctrl_shift_rot_left && (E_rot_n >= 16)) || (E_ctrl_shift_rot_right && (E_rot_n >= 24));
  assign E_rot_sel_fill2 = (E_ctrl_shift_rot_left && (E_rot_n >= 24)) || (E_ctrl_shift_rot_right && (E_rot_n >= 16));
  assign E_rot_sel_fill3 = E_ctrl_shift_rot_right && (E_rot_n >=  8);
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_fill_bit <= 0;
      else if (M_en)
          M_rot_fill_bit <= E_rot_fill_bit;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_mask <= 0;
      else if (M_en)
          M_rot_mask <= E_rot_mask;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_pass0 <= 0;
      else if (M_en)
          M_rot_pass0 <= E_rot_pass0;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_pass1 <= 0;
      else if (M_en)
          M_rot_pass1 <= E_rot_pass1;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_pass2 <= 0;
      else if (M_en)
          M_rot_pass2 <= E_rot_pass2;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_pass3 <= 0;
      else if (M_en)
          M_rot_pass3 <= E_rot_pass3;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_sel_fill0 <= 0;
      else if (M_en)
          M_rot_sel_fill0 <= E_rot_sel_fill0;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_sel_fill1 <= 0;
      else if (M_en)
          M_rot_sel_fill1 <= E_rot_sel_fill1;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_sel_fill2 <= 0;
      else if (M_en)
          M_rot_sel_fill2 <= E_rot_sel_fill2;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_sel_fill3 <= 0;
      else if (M_en)
          M_rot_sel_fill3 <= E_rot_sel_fill3;
    end


  assign M2_rot_fill_bit = M_rot_fill_bit;
  assign M2_rot_mask = M_rot_mask;
  assign M2_rot_pass0 = M_rot_pass0;
  assign M2_rot_pass1 = M_rot_pass1;
  assign M2_rot_pass2 = M_rot_pass2;
  assign M2_rot_pass3 = M_rot_pass3;
  assign M2_rot_sel_fill0 = M_rot_sel_fill0;
  assign M2_rot_sel_fill1 = M_rot_sel_fill1;
  assign M2_rot_sel_fill2 = M_rot_sel_fill2;
  assign M2_rot_sel_fill3 = M_rot_sel_fill3;
  assign E_rot_prestep1 = E_rot_rn[0] ? {E_src1[30 : 0], E_src1[31]} : E_src1;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_step1 <= 0;
      else if (M_en)
          M_rot_step1 <= E_rot_rn[1] ? {E_rot_prestep1[29 : 0], E_rot_prestep1[31 : 30]} : E_rot_prestep1;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_rot_rn <= 0;
      else if (M_en)
          M_rot_rn <= E_rot_rn;
    end


  assign M_rot_prestep2 = M_rot_rn[2] ? {M_rot_step1[27 : 0], M_rot_step1[31 : 28]} : M_rot_step1;
  always @(negedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Mn_rot_step2 <= 0;
      else if (1'b1)
          Mn_rot_step2 <= M_rot_rn[3] ? {M_rot_prestep2[23 : 0], M_rot_prestep2[31 : 24]} : M_rot_prestep2;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M2_rot <= 0;
      else if (1'b1)
          M2_rot <= M_rot_rn[4] ? 
                    {Mn_rot_step2[15 : 0], Mn_rot_step2[31 : 16]} : 
                    Mn_rot_step2;

    end


  assign M2_rot_lut0 = {8{M2_rot_sel_fill0 & M2_rot_fill_bit}} | (M2_rot_fill_bit ? ({8{~M2_rot_sel_fill0}} & (M2_rot[7 : 0] | M2_rot_mask)) : ({8{~M2_rot_sel_fill0}} & M2_rot[7 : 0] & ~M2_rot_mask));
  assign M2_rot_lut1 = {8{M2_rot_sel_fill1 & M2_rot_fill_bit}} | (M2_rot_fill_bit ? ({8{~M2_rot_sel_fill1}} & (M2_rot[15 : 8] | M2_rot_mask)) : ({8{~M2_rot_sel_fill1}} & M2_rot[15 : 8] & ~M2_rot_mask));
  assign M2_rot_lut2 = {8{M2_rot_sel_fill2 & M2_rot_fill_bit}} | (M2_rot_fill_bit ? ({8{~M2_rot_sel_fill2}} & (M2_rot[23 : 16] | M2_rot_mask)) : ({8{~M2_rot_sel_fill2}} & M2_rot[23 : 16] & ~M2_rot_mask));
  assign M2_rot_lut3 = {8{M2_rot_sel_fill3 & M2_rot_fill_bit}} | (M2_rot_fill_bit ? ({8{~M2_rot_sel_fill3}} & (M2_rot[31 : 24] | M2_rot_mask)) : ({8{~M2_rot_sel_fill3}} & M2_rot[31 : 24] & ~M2_rot_mask));
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_shift_rot_result[7 : 0] <= 0;
      else if (1'b1)
          M_shift_rot_result[7 : 0] <= M2_rot_pass0 ? M2_rot[7 : 0] : M2_rot_lut0;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_shift_rot_result[15 : 8] <= 0;
      else if (1'b1)
          M_shift_rot_result[15 : 8] <= M2_rot_pass1 ? M2_rot[15 : 8] : M2_rot_lut1;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_shift_rot_result[23 : 16] <= 0;
      else if (1'b1)
          M_shift_rot_result[23 : 16] <= M2_rot_pass2 ? M2_rot[23 : 16] : M2_rot_lut2;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_shift_rot_result[31 : 24] <= 0;
      else if (1'b1)
          M_shift_rot_result[31 : 24] <= M2_rot_pass3 ? M2_rot[31 : 24] : M2_rot_lut3;
    end


  cpu_nios2_oci the_cpu_nios2_oci
    (
      .D_en                                  (D_en),
      .E_en                                  (E_en),
      .E_valid                               (E_valid),
      .F_pc                                  (F_pc),
      .M_cmp_result                          (M_cmp_result),
      .M_ctrl_exception                      (M_ctrl_exception),
      .M_ctrl_ld                             (M_ctrl_ld),
      .M_ctrl_st                             (M_ctrl_st),
      .M_en                                  (M_en),
      .M_mem_baddr                           (M_mem_baddr),
      .M_op_beq                              (M_op_beq),
      .M_op_bge                              (M_op_bge),
      .M_op_bgeu                             (M_op_bgeu),
      .M_op_blt                              (M_op_blt),
      .M_op_bltu                             (M_op_bltu),
      .M_op_bne                              (M_op_bne),
      .M_op_br                               (M_op_br),
      .M_op_bret                             (M_op_bret),
      .M_op_call                             (M_op_call),
      .M_op_callr                            (M_op_callr),
      .M_op_eret                             (M_op_eret),
      .M_op_jmp                              (M_op_jmp),
      .M_op_ret                              (M_op_ret),
      .M_pcb                                 (M_pcb),
      .M_st_data                             (M_st_data),
      .M_valid                               (M_valid),
      .M_wr_data_filtered                    (M_wr_data_filtered),
      .address                               (jtag_debug_module_address),
      .begintransfer                         (jtag_debug_module_begintransfer),
      .byteenable                            (jtag_debug_module_byteenable),
      .chipselect                            (jtag_debug_module_select),
      .clk                                   (jtag_debug_module_clk),
      .debugaccess                           (jtag_debug_module_debugaccess),
      .hbreak_enabled                        (hbreak_enabled),
      .jtag_debug_module_debugaccess_to_roms (jtag_debug_module_debugaccess_to_roms),
      .oci_hbreak_req                        (oci_hbreak_req),
      .oci_ienable                           (oci_ienable),
      .oci_single_step_mode                  (oci_single_step_mode),
      .readdata                              (jtag_debug_module_readdata),
      .reset                                 (jtag_debug_module_reset),
      .reset_n                               (reset_n),
      .resetrequest                          (jtag_debug_module_resetrequest),
      .write                                 (jtag_debug_module_write),
      .writedata                             (jtag_debug_module_writedata)
    );

  //jtag_debug_module, which is an e_avalon_slave
  assign D_ctrl_a_not_src = D_op_call | D_op_jmpi;
  assign E_ctrl_a_not_src_nxt = D_ctrl_a_not_src;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_a_not_src <= 0;
      else if (E_en)
          E_ctrl_a_not_src <= E_ctrl_a_not_src_nxt;
    end


  assign D_ctrl_b_not_src = D_op_addi | D_op_muli | D_op_andhi | D_op_orhi | D_op_xorhi | D_op_andi | D_op_ori | D_op_xori | D_op_call | D_op_cmpgei | D_op_cmplti | D_op_cmpnei | D_op_cmpgeui | D_op_cmpltui | D_op_cmpeqi | D_op_rsv56 | D_op_jmpi | D_op_rsv09 | D_op_rsv17 | D_op_rsv25 | D_op_rsv33 | D_op_rsv41 | D_op_rsv49 | D_op_rsv57 | D_op_ldb | D_op_ldh | D_op_rsv31 | D_op_ldw | D_op_ldbio | D_op_ldhio | D_op_ldwio | D_op_rsv63 | D_op_ldbu | D_op_ldhu | D_op_ldbuio | D_op_ldhuio | D_op_initd | D_op_flushd | D_op_flushda;
  assign E_ctrl_b_not_src_nxt = D_ctrl_b_not_src;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_b_not_src <= 0;
      else if (E_en)
          E_ctrl_b_not_src <= E_ctrl_b_not_src_nxt;
    end


  assign D_ctrl_b_is_dst = D_op_addi | D_op_muli | D_op_andhi | D_op_orhi | D_op_xorhi | D_op_andi | D_op_ori | D_op_xori | D_op_call | D_op_cmpgei | D_op_cmplti | D_op_cmpnei | D_op_cmpgeui | D_op_cmpltui | D_op_cmpeqi | D_op_rsv56 | D_op_jmpi | D_op_rsv09 | D_op_rsv17 | D_op_rsv25 | D_op_rsv33 | D_op_rsv41 | D_op_rsv49 | D_op_rsv57 | D_op_ldb | D_op_ldh | D_op_rsv31 | D_op_ldw | D_op_ldbio | D_op_ldhio | D_op_ldwio | D_op_rsv63 | D_op_ldbu | D_op_ldhu | D_op_ldbuio | D_op_ldhuio | D_op_initd | D_op_flushd | D_op_flushda;
  assign E_ctrl_b_is_dst_nxt = D_ctrl_b_is_dst;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_b_is_dst <= 0;
      else if (E_en)
          E_ctrl_b_is_dst <= E_ctrl_b_is_dst_nxt;
    end


  assign D_ctrl_ignore_dst = D_op_br | D_op_bge | D_op_blt | D_op_bne | D_op_beq | D_op_bgeu | D_op_bltu | D_op_rsv62 | D_op_stb | D_op_sth | D_op_stw | D_op_rsv29 | D_op_stbio | D_op_sthio | D_op_stwio | D_op_rsv61 | D_op_jmpi | D_op_rsv09 | D_op_rsv17 | D_op_rsv25 | D_op_rsv33 | D_op_rsv41 | D_op_rsv49 | D_op_rsv57;
  assign E_ctrl_ignore_dst_nxt = D_ctrl_ignore_dst;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_ignore_dst <= 0;
      else if (E_en)
          E_ctrl_ignore_dst <= E_ctrl_ignore_dst_nxt;
    end


  assign D_ctrl_src2_choose_imm = D_op_addi | D_op_muli | D_op_andhi | D_op_orhi | D_op_xorhi | D_op_andi | D_op_ori | D_op_xori | D_op_call | D_op_cmpgei | D_op_cmplti | D_op_cmpnei | D_op_cmpgeui | D_op_cmpltui | D_op_cmpeqi | D_op_rsv56 | D_op_jmpi | D_op_rsv09 | D_op_rsv17 | D_op_rsv25 | D_op_rsv33 | D_op_rsv41 | D_op_rsv49 | D_op_rsv57 | D_op_ldb | D_op_ldh | D_op_rsv31 | D_op_ldw | D_op_ldbio | D_op_ldhio | D_op_ldwio | D_op_rsv63 | D_op_ldbu | D_op_ldhu | D_op_ldbuio | D_op_ldhuio | D_op_initd | D_op_flushd | D_op_flushda | D_op_stb | D_op_sth | D_op_stw | D_op_rsv29 | D_op_stbio | D_op_sthio | D_op_stwio | D_op_rsv61 | D_op_roli | D_op_rsvx10 | D_op_slli | D_op_srli | D_op_rsvx34 | D_op_rsvx42 | D_op_rsvx50 | D_op_srai;
  assign E_ctrl_src2_choose_imm_nxt = D_ctrl_src2_choose_imm;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_src2_choose_imm <= 0;
      else if (E_en)
          E_ctrl_src2_choose_imm <= E_ctrl_src2_choose_imm_nxt;
    end


  assign D_ctrl_br = D_op_br | D_op_bge | D_op_blt | D_op_bne | D_op_beq | D_op_bgeu | D_op_bltu | D_op_rsv62;
  assign E_ctrl_br_nxt = D_ctrl_br;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_br <= 0;
      else if (E_en)
          E_ctrl_br <= E_ctrl_br_nxt;
    end


  assign D_ctrl_br_uncond = D_op_br | D_op_rsv02;
  assign E_ctrl_br_uncond_nxt = D_ctrl_br_uncond;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_br_uncond <= 0;
      else if (E_en)
          E_ctrl_br_uncond <= E_ctrl_br_uncond_nxt;
    end


  assign D_ctrl_br_cond = D_op_bge | D_op_rsv10 | D_op_blt | D_op_bne | D_op_rsv62 | D_op_bgeu | D_op_rsv42 | D_op_bltu | D_op_beq | D_op_rsv34;
  assign E_ctrl_br_cond_nxt = D_ctrl_br_cond;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_br_cond <= 0;
      else if (E_en)
          E_ctrl_br_cond <= E_ctrl_br_cond_nxt;
    end


  assign M_ctrl_br_cond_nxt = E_ctrl_br_cond;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_br_cond <= 0;
      else if (M_en)
          M_ctrl_br_cond <= M_ctrl_br_cond_nxt;
    end


  assign D_ctrl_jmp_indirect = D_op_ret | D_op_jmp | D_op_rsvx21 | D_op_callr | D_op_eret | D_op_bret | D_op_rsvx17 | D_op_rsvx25;
  assign E_ctrl_jmp_indirect_nxt = D_ctrl_jmp_indirect;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_jmp_indirect <= 0;
      else if (E_en)
          E_ctrl_jmp_indirect <= E_ctrl_jmp_indirect_nxt;
    end


  assign D_ctrl_jmp_direct = D_op_call | D_op_jmpi;
  assign E_ctrl_jmp_direct_nxt = D_ctrl_jmp_direct;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_jmp_direct <= 0;
      else if (E_en)
          E_ctrl_jmp_direct <= E_ctrl_jmp_direct_nxt;
    end


  assign D_ctrl_exception = D_op_trap | D_op_rsvx44 | D_op_intr | D_op_rsvx60 | D_op_divu | D_op_div | D_op_mulxuu | D_op_rsvx15 | D_op_mulxsu | D_op_mulxss;
  assign E_ctrl_exception_nxt = D_ctrl_exception;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_exception <= 0;
      else if (E_en)
          E_ctrl_exception <= E_ctrl_exception_nxt;
    end


  assign M_ctrl_exception_nxt = E_ctrl_exception;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_exception <= 0;
      else if (M_en)
          M_ctrl_exception <= M_ctrl_exception_nxt;
    end


  assign D_ctrl_break = D_op_break | D_op_hbreak;
  assign E_ctrl_break_nxt = D_ctrl_break;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_break <= 0;
      else if (E_en)
          E_ctrl_break <= E_ctrl_break_nxt;
    end


  assign M_ctrl_break_nxt = E_ctrl_break;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_break <= 0;
      else if (M_en)
          M_ctrl_break <= M_ctrl_break_nxt;
    end


  assign D_ctrl_crst = 1'b0;
  assign E_ctrl_crst_nxt = 1'b0;
  assign E_ctrl_crst = E_ctrl_crst_nxt;
  assign M_ctrl_crst_nxt = 1'b0;
  assign M_ctrl_crst = M_ctrl_crst_nxt;
  assign W_ctrl_crst_nxt = 1'b0;
  assign W_ctrl_crst = W_ctrl_crst_nxt;
  assign D_ctrl_flush_pipe_always = D_op_flushp | D_op_bret | D_op_initi | D_op_flushi | D_op_call | D_op_jmpi | D_op_ret | D_op_jmp | D_op_rsvx21 | D_op_callr | D_op_eret | D_op_bret | D_op_rsvx17 | D_op_rsvx25 | D_op_wrctl | D_op_bret | D_op_eret | D_op_trap | D_op_rsvx44 | D_op_intr | D_op_rsvx60 | D_op_divu | D_op_div | D_op_mulxuu | D_op_rsvx15 | D_op_mulxsu | D_op_mulxss | D_op_break | D_op_hbreak | D_op_crst;
  assign E_ctrl_flush_pipe_always_nxt = D_ctrl_flush_pipe_always;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_flush_pipe_always <= 0;
      else if (E_en)
          E_ctrl_flush_pipe_always <= E_ctrl_flush_pipe_always_nxt;
    end


  assign E_ctrl_invalidate_i = E_op_initi | E_op_flushi;
  assign M_ctrl_invalidate_i_nxt = E_ctrl_invalidate_i;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_invalidate_i <= 0;
      else if (M_en)
          M_ctrl_invalidate_i <= M_ctrl_invalidate_i_nxt;
    end


  assign D_ctrl_custom_combo = 1'b0;
  assign E_ctrl_custom_combo_nxt = 1'b0;
  assign E_ctrl_custom_combo = E_ctrl_custom_combo_nxt;
  assign D_ctrl_custom_multi = 1'b0;
  assign E_ctrl_custom_multi_nxt = 1'b0;
  assign E_ctrl_custom_multi = E_ctrl_custom_multi_nxt;
  assign M_ctrl_custom_multi_nxt = 1'b0;
  assign M_ctrl_custom_multi = M_ctrl_custom_multi_nxt;
  assign D_ctrl_implicit_dst_retaddr = D_op_call | D_op_rsv02;
  assign E_ctrl_implicit_dst_retaddr_nxt = D_ctrl_implicit_dst_retaddr;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_implicit_dst_retaddr <= 0;
      else if (E_en)
          E_ctrl_implicit_dst_retaddr <= E_ctrl_implicit_dst_retaddr_nxt;
    end


  assign D_ctrl_implicit_dst_eretaddr = D_op_divu | D_op_div | D_op_mulxuu | D_op_rsvx15 | D_op_mulxsu | D_op_mulxss;
  assign E_ctrl_implicit_dst_eretaddr_nxt = D_ctrl_implicit_dst_eretaddr;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_implicit_dst_eretaddr <= 0;
      else if (E_en)
          E_ctrl_implicit_dst_eretaddr <= E_ctrl_implicit_dst_eretaddr_nxt;
    end


  assign D_ctrl_hi_imm = D_op_andhi | D_op_orhi | D_op_xorhi;
  assign E_ctrl_hi_imm_nxt = D_ctrl_hi_imm;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_hi_imm <= 0;
      else if (E_en)
          E_ctrl_hi_imm <= E_ctrl_hi_imm_nxt;
    end


  assign D_ctrl_unsigned_lo_imm = D_op_andi | D_op_ori | D_op_xori | D_op_cmpgeui | D_op_cmpltui | D_op_roli | D_op_rsvx10 | D_op_slli | D_op_srli | D_op_rsvx34 | D_op_rsvx42 | D_op_rsvx50 | D_op_srai;
  assign E_ctrl_unsigned_lo_imm_nxt = D_ctrl_unsigned_lo_imm;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_unsigned_lo_imm <= 0;
      else if (E_en)
          E_ctrl_unsigned_lo_imm <= E_ctrl_unsigned_lo_imm_nxt;
    end


  assign D_ctrl_alu_signed_cmp = D_op_cmpge | D_op_cmpgei | D_op_cmplt | D_op_cmplti | D_op_bge | D_op_blt;
  assign E_ctrl_alu_signed_cmp_nxt = D_ctrl_alu_signed_cmp;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_alu_signed_cmp <= 0;
      else if (E_en)
          E_ctrl_alu_signed_cmp <= E_ctrl_alu_signed_cmp_nxt;
    end


  assign D_ctrl_alu_subtract = D_op_sub | D_op_rsvx25 | D_op_cmplti | D_op_cmpltui | D_op_cmplt | D_op_cmpltu | D_op_blt | D_op_bltu | D_op_cmpgei | D_op_cmpgeui | D_op_cmpge | D_op_cmpgeu | D_op_bge | D_op_rsv10 | D_op_bgeu | D_op_rsv42;
  assign E_ctrl_alu_subtract_nxt = D_ctrl_alu_subtract;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_alu_subtract <= 0;
      else if (E_en)
          E_ctrl_alu_subtract <= E_ctrl_alu_subtract_nxt;
    end


  assign D_ctrl_dst_data_sel_cmp = D_op_cmpgei | D_op_cmplti | D_op_cmpnei | D_op_cmpgeui | D_op_cmpltui | D_op_cmpeqi | D_op_rsvx00 | D_op_cmpge | D_op_cmplt | D_op_cmpne | D_op_cmpgeu | D_op_cmpltu | D_op_cmpeq | D_op_rsvx56;
  assign E_ctrl_dst_data_sel_cmp_nxt = D_ctrl_dst_data_sel_cmp;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_dst_data_sel_cmp <= 0;
      else if (E_en)
          E_ctrl_dst_data_sel_cmp <= E_ctrl_dst_data_sel_cmp_nxt;
    end


  assign D_ctrl_dst_data_sel_logic_result = D_op_and | D_op_or | D_op_xor | D_op_nor | D_op_andhi | D_op_orhi | D_op_xorhi | D_op_andi | D_op_ori | D_op_xori;
  assign E_ctrl_dst_data_sel_logic_result_nxt = D_ctrl_dst_data_sel_logic_result;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_dst_data_sel_logic_result <= 0;
      else if (E_en)
          E_ctrl_dst_data_sel_logic_result <= E_ctrl_dst_data_sel_logic_result_nxt;
    end


  assign D_ctrl_dst_data_sel_pc_plus_one = D_op_call | D_op_rsv02 | D_op_nextpc | D_op_callr | D_op_trap | D_op_rsvx44 | D_op_intr | D_op_rsvx60 | D_op_divu | D_op_div | D_op_mulxuu | D_op_rsvx15 | D_op_mulxsu | D_op_mulxss | D_op_break | D_op_hbreak;
  assign E_ctrl_dst_data_sel_pc_plus_one_nxt = D_ctrl_dst_data_sel_pc_plus_one;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_dst_data_sel_pc_plus_one <= 0;
      else if (E_en)
          E_ctrl_dst_data_sel_pc_plus_one <= E_ctrl_dst_data_sel_pc_plus_one_nxt;
    end


  assign D_ctrl_wrctl_inst = D_op_wrctl;
  assign E_ctrl_wrctl_inst_nxt = D_ctrl_wrctl_inst;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_wrctl_inst <= 0;
      else if (E_en)
          E_ctrl_wrctl_inst <= E_ctrl_wrctl_inst_nxt;
    end


  assign D_ctrl_rdctl_inst = D_op_rdctl;
  assign E_ctrl_rdctl_inst_nxt = D_ctrl_rdctl_inst;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_rdctl_inst <= 0;
      else if (E_en)
          E_ctrl_rdctl_inst <= E_ctrl_rdctl_inst_nxt;
    end


  assign D_ctrl_ld = D_op_ldb | D_op_ldh | D_op_rsv31 | D_op_ldw | D_op_ldbio | D_op_ldhio | D_op_ldwio | D_op_rsv63 | D_op_ldbu | D_op_ldhu | D_op_ldbuio | D_op_ldhuio;
  assign E_ctrl_ld_nxt = D_ctrl_ld;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_ld <= 0;
      else if (E_en)
          E_ctrl_ld <= E_ctrl_ld_nxt;
    end


  assign M_ctrl_ld_nxt = E_ctrl_ld;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld <= 0;
      else if (M_en)
          M_ctrl_ld <= M_ctrl_ld_nxt;
    end


  assign D_ctrl_ld_signed = D_op_ldb | D_op_ldh | D_op_rsv31 | D_op_ldw | D_op_ldbio | D_op_ldhio | D_op_ldwio | D_op_rsv63;
  assign E_ctrl_ld_signed_nxt = D_ctrl_ld_signed;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_ld_signed <= 0;
      else if (E_en)
          E_ctrl_ld_signed <= E_ctrl_ld_signed_nxt;
    end


  assign M_ctrl_ld_signed_nxt = E_ctrl_ld_signed;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld_signed <= 0;
      else if (M_en)
          M_ctrl_ld_signed <= M_ctrl_ld_signed_nxt;
    end


  assign D_ctrl_ld_io = D_op_ldbuio | D_op_ldhuio | D_op_ldbio | D_op_ldhio | D_op_ldwio;
  assign E_ctrl_ld_io_nxt = D_ctrl_ld_io;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_ld_io <= 0;
      else if (E_en)
          E_ctrl_ld_io <= E_ctrl_ld_io_nxt;
    end


  assign M_ctrl_ld_io_nxt = E_ctrl_ld_io;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld_io <= 0;
      else if (M_en)
          M_ctrl_ld_io <= M_ctrl_ld_io_nxt;
    end


  assign D_ctrl_ld_non_io = D_op_ldbu | D_op_ldhu | D_op_rsv19 | D_op_ldb | D_op_ldh | D_op_ldw;
  assign E_ctrl_ld_non_io_nxt = D_ctrl_ld_non_io;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_ld_non_io <= 0;
      else if (E_en)
          E_ctrl_ld_non_io <= E_ctrl_ld_non_io_nxt;
    end


  assign M_ctrl_ld_non_io_nxt = E_ctrl_ld_non_io;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_ld_non_io <= 0;
      else if (M_en)
          M_ctrl_ld_non_io <= M_ctrl_ld_non_io_nxt;
    end


  assign D_ctrl_st = D_op_stb | D_op_sth | D_op_stw | D_op_rsv29 | D_op_stbio | D_op_sthio | D_op_stwio | D_op_rsv61;
  assign E_ctrl_st_nxt = D_ctrl_st;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_st <= 0;
      else if (E_en)
          E_ctrl_st <= E_ctrl_st_nxt;
    end


  assign M_ctrl_st_nxt = E_ctrl_st;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_st <= 0;
      else if (M_en)
          M_ctrl_st <= M_ctrl_st_nxt;
    end


  assign D_ctrl_mul_lsw = D_op_muli | D_op_mul | D_op_rsvx47 | D_op_rsvx55 | D_op_rsvx63;
  assign E_ctrl_mul_lsw_nxt = D_ctrl_mul_lsw;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_mul_lsw <= 0;
      else if (E_en)
          E_ctrl_mul_lsw <= E_ctrl_mul_lsw_nxt;
    end


  assign M_ctrl_mul_lsw_nxt = E_ctrl_mul_lsw;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_mul_lsw <= 0;
      else if (M_en)
          M_ctrl_mul_lsw <= M_ctrl_mul_lsw_nxt;
    end


  assign D_ctrl_rot = D_op_roli | D_op_rsvx34 | D_op_rol | D_op_rsvx35 | D_op_rsvx10 | D_op_ror | D_op_rsvx42 | D_op_rsvx43;
  assign E_ctrl_rot_nxt = D_ctrl_rot;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_rot <= 0;
      else if (E_en)
          E_ctrl_rot <= E_ctrl_rot_nxt;
    end


  assign M_ctrl_rot_nxt = E_ctrl_rot;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_rot <= 0;
      else if (M_en)
          M_ctrl_rot <= M_ctrl_rot_nxt;
    end


  assign D_ctrl_shift_rot = D_op_slli | D_op_rsvx50 | D_op_sll | D_op_rsvx51 | D_op_roli | D_op_rsvx34 | D_op_rol | D_op_rsvx35 | D_op_srli | D_op_srl | D_op_srai | D_op_sra | D_op_rsvx10 | D_op_ror | D_op_rsvx42 | D_op_rsvx43;
  assign E_ctrl_shift_rot_nxt = D_ctrl_shift_rot;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_shift_rot <= 0;
      else if (E_en)
          E_ctrl_shift_rot <= E_ctrl_shift_rot_nxt;
    end


  assign M_ctrl_shift_rot_nxt = E_ctrl_shift_rot;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_shift_rot <= 0;
      else if (M_en)
          M_ctrl_shift_rot <= M_ctrl_shift_rot_nxt;
    end


  assign D_ctrl_shift_rot_left = D_op_slli | D_op_rsvx50 | D_op_sll | D_op_rsvx51 | D_op_roli | D_op_rsvx34 | D_op_rol | D_op_rsvx35;
  assign E_ctrl_shift_rot_left_nxt = D_ctrl_shift_rot_left;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_shift_rot_left <= 0;
      else if (E_en)
          E_ctrl_shift_rot_left <= E_ctrl_shift_rot_left_nxt;
    end


  assign M_ctrl_shift_rot_left_nxt = E_ctrl_shift_rot_left;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_shift_rot_left <= 0;
      else if (M_en)
          M_ctrl_shift_rot_left <= M_ctrl_shift_rot_left_nxt;
    end


  assign D_ctrl_shift_rot_right = D_op_srli | D_op_srl | D_op_srai | D_op_sra | D_op_rsvx10 | D_op_ror | D_op_rsvx42 | D_op_rsvx43;
  assign E_ctrl_shift_rot_right_nxt = D_ctrl_shift_rot_right;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_shift_rot_right <= 0;
      else if (E_en)
          E_ctrl_shift_rot_right <= E_ctrl_shift_rot_right_nxt;
    end


  assign M_ctrl_shift_rot_right_nxt = E_ctrl_shift_rot_right;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_shift_rot_right <= 0;
      else if (M_en)
          M_ctrl_shift_rot_right <= M_ctrl_shift_rot_right_nxt;
    end


  assign D_ctrl_shift_right_arith = D_op_srai | D_op_sra;
  assign E_ctrl_shift_right_arith_nxt = D_ctrl_shift_right_arith;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          E_ctrl_shift_right_arith <= 0;
      else if (E_en)
          E_ctrl_shift_right_arith <= E_ctrl_shift_right_arith_nxt;
    end


  assign M_ctrl_shift_right_arith_nxt = E_ctrl_shift_right_arith;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          M_ctrl_shift_right_arith <= 0;
      else if (M_en)
          M_ctrl_shift_right_arith <= M_ctrl_shift_right_arith_nxt;
    end


  //instruction_master, which is an e_avalon_master
  //data_master, which is an e_avalon_master

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  assign F_inst = ((((F_iw_op[5 : 0] == 2))))? 56'h20207273763032 :
    ((((F_iw_op[5 : 0] == 16))))? 56'h20636d706c7469 :
    ((((F_iw_op[5 : 0] == 18))))? 56'h20207273763138 :
    ((((F_iw_op[5 : 0] == 26))))? 56'h20207273763236 :
    ((((F_iw_op[5 : 0] == 42))))? 56'h20207273763432 :
    ((((F_iw_op[5 : 0] == 39))))? 56'h20206c6462696f :
    ((((F_iw_op[5 : 0] == 3))))? 56'h2020206c646275 :
    ((((F_iw_op[5 : 0] == 52))))? 56'h2020206f726869 :
    ((((F_iw_op[5 : 0] == 31))))? 56'h20207273763331 :
    ((((F_iw_op[5 : 0] == 14))))? 56'h20202020626765 :
    ((((F_iw_op[5 : 0] == 6))))? 56'h20202020206272 :
    ((((F_iw_op[5 : 0] == 47))))? 56'h20206c6468696f :
    ((((F_iw_op[5 : 0] == 41))))? 56'h20207273763431 :
    ((((F_iw_op[5 : 0] == 19))))? 56'h20207273763139 :
    ((((F_iw_op[5 : 0] == 55))))? 56'h20206c6477696f :
    ((((F_iw_op[5 : 0] == 29))))? 56'h20207273763239 :
    ((((F_iw_op[5 : 0] == 61))))? 56'h20207273763631 :
    ((((F_iw_op[5 : 0] == 5))))? 56'h20202020737462 :
    ((((F_iw_op[5 : 0] == 62))))? 56'h20207273763632 :
    ((((F_iw_op[5 : 0] == 54))))? 56'h202020626c7475 :
    ((((F_iw_op[5 : 0] == 50))))? 56'h20637573746f6d :
    ((((F_iw_op[5 : 0] == 36))))? 56'h2020206d756c69 :
    ((((F_iw_op[5 : 0] == 8))))? 56'h20636d70676569 :
    ((((F_iw_op[5 : 0] == 28))))? 56'h202020786f7269 :
    ((((F_iw_op[5 : 0] == 23))))? 56'h202020206c6477 :
    ((((F_iw_op[5 : 0] == 32))))? 56'h20636d70657169 :
    ((((F_iw_op[5 : 0] == 15))))? 56'h202020206c6468 :
    ((((F_iw_op[5 : 0] == 21))))? 56'h20202020737477 :
    ((((F_iw_op[5 : 0] == 9))))? 56'h20207273763039 :
    ((((F_iw_op[5 : 0] == 24))))? 56'h20636d706e6569 :
    ((((F_iw_op[5 : 0] == 7))))? 56'h202020206c6462 :
    ((((F_iw_op[5 : 0] == 46))))? 56'h20202062676575 :
    ((((F_iw_op[5 : 0] == 53))))? 56'h2020737477696f :
    ((((F_iw_op[5 : 0] == 33))))? 56'h20207273763333 :
    ((((F_iw_op[5 : 0] == 44))))? 56'h2020616e646869 :
    ((((F_iw_op[5 : 0] == 35))))? 56'h206c646275696f :
    ((((F_iw_op[5 : 0] == 34))))? 56'h20207273763334 :
    ((((F_iw_op[5 : 0] == 45))))? 56'h2020737468696f :
    ((((F_iw_op[5 : 0] == 40))))? 56'h636d7067657569 :
    ((((F_iw_op[5 : 0] == 37))))? 56'h2020737462696f :
    ((((F_iw_op[5 : 0] == 12))))? 56'h202020616e6469 :
    ((((F_iw_op[5 : 0] == 4))))? 56'h20202061646469 :
    ((((F_iw_op[5 : 0] == 27))))? 56'h666c7573686461 :
    ((((F_iw_op[5 : 0] == 49))))? 56'h20207273763439 :
    ((((F_iw_op[5 : 0] == 1))))? 56'h2020206a6d7069 :
    ((((F_iw_op[5 : 0] == 22))))? 56'h20202020626c74 :
    ((((F_iw_op[5 : 0] == 38))))? 56'h20202020626571 :
    ((((F_iw_op[5 : 0] == 20))))? 56'h202020206f7269 :
    ((((F_iw_op[5 : 0] == 48))))? 56'h636d706c747569 :
    ((((F_iw_op[5 : 0] == 56))))? 56'h20207273763536 :
    ((((F_iw_op[5 : 0] == 60))))? 56'h2020786f726869 :
    ((((F_iw_op[5 : 0] == 43))))? 56'h206c646875696f :
    ((((F_iw_op[5 : 0] == 30))))? 56'h20202020626e65 :
    ((((F_iw_op[5 : 0] == 63))))? 56'h20207273763633 :
    ((((F_iw_op[5 : 0] == 57))))? 56'h20207273763537 :
    ((((F_iw_op[5 : 0] == 0))))? 56'h20202063616c6c :
    ((((F_iw_op[5 : 0] == 11))))? 56'h2020206c646875 :
    ((((F_iw_op[5 : 0] == 59))))? 56'h20666c75736864 :
    ((((F_iw_op[5 : 0] == 51))))? 56'h2020696e697464 :
    ((((F_iw_op[5 : 0] == 10))))? 56'h20207273763130 :
    ((((F_iw_op[5 : 0] == 17))))? 56'h20207273763137 :
    ((((F_iw_op[5 : 0] == 13))))? 56'h20202020737468 :
    ((((F_iw_op[5 : 0] == 25))))? 56'h20207273763235 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 12))))? 56'h20666c75736869 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 7))))? 56'h206d756c787575 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 33))))? 56'h20727376783333 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 46))))? 56'h2020777263746c :
    (((F_op_opx & (F_iw_opx[5 : 0] == 2))))? 56'h202020726f6c69 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 61))))? 56'h202020696e7472 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 43))))? 56'h20727376783433 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 27))))? 56'h2020202073726c :
    (((F_op_opx & (F_iw_opx[5 : 0] == 45))))? 56'h20202074726170 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 17))))? 56'h20727376783137 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 52))))? 56'h2020627265616b :
    (((F_op_opx & (F_iw_opx[5 : 0] == 38))))? 56'h2020726463746c :
    (((F_op_opx & (F_iw_opx[5 : 0] == 48))))? 56'h20636d706c7475 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 29))))? 56'h202063616c6c72 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 8))))? 56'h2020636d706765 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 47))))? 56'h20727376783437 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 14))))? 56'h20202020616e64 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 0))))? 56'h20727376783030 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 56))))? 56'h20727376783536 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 53))))? 56'h2068627265616b :
    (((F_op_opx & (F_iw_opx[5 : 0] == 4))))? 56'h20666c75736870 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 6))))? 56'h202020206e6f72 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 50))))? 56'h20727376783530 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 41))))? 56'h2020696e697469 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 58))))? 56'h20202073726169 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 54))))? 56'h20202073796e63 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 15))))? 56'h20727376783135 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 55))))? 56'h20727376783535 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 62))))? 56'h20202063727374 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 42))))? 56'h20727376783432 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 30))))? 56'h20202020786f72 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 34))))? 56'h20727376783334 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 31))))? 56'h206d756c787373 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 51))))? 56'h20727376783531 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 10))))? 56'h20727376783130 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 1))))? 56'h20202065726574 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 25))))? 56'h20727376783235 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 13))))? 56'h202020206a6d70 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 22))))? 56'h20202020206f72 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 35))))? 56'h20727376783335 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 59))))? 56'h20202020737261 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 20))))? 56'h20727376783230 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 18))))? 56'h202020736c6c69 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 23))))? 56'h206d756c787375 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 21))))? 56'h20727376783231 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 11))))? 56'h20202020726f72 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 26))))? 56'h20202073726c69 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 19))))? 56'h20202020736c6c :
    (((F_op_opx & (F_iw_opx[5 : 0] == 37))))? 56'h20202020646976 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 16))))? 56'h2020636d706c74 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 49))))? 56'h20202020616464 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 44))))? 56'h20727376783434 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 9))))? 56'h20202062726574 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 60))))? 56'h20727376783630 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 63))))? 56'h20727376783633 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 39))))? 56'h202020206d756c :
    (((F_op_opx & (F_iw_opx[5 : 0] == 40))))? 56'h20636d70676575 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 24))))? 56'h2020636d706e65 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 32))))? 56'h2020636d706571 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 5))))? 56'h20202020726574 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 3))))? 56'h20202020726f6c :
    (((F_op_opx & (F_iw_opx[5 : 0] == 57))))? 56'h20202020737562 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 28))))? 56'h206e6578747063 :
    (((F_op_opx & (F_iw_opx[5 : 0] == 36))))? 56'h20202064697675 :
    56'h20202020424144;

  assign D_inst = ((((D_iw_op[5 : 0] == 2))))? 56'h20207273763032 :
    ((((D_iw_op[5 : 0] == 16))))? 56'h20636d706c7469 :
    ((((D_iw_op[5 : 0] == 18))))? 56'h20207273763138 :
    ((((D_iw_op[5 : 0] == 26))))? 56'h20207273763236 :
    ((((D_iw_op[5 : 0] == 42))))? 56'h20207273763432 :
    ((((D_iw_op[5 : 0] == 39))))? 56'h20206c6462696f :
    ((((D_iw_op[5 : 0] == 3))))? 56'h2020206c646275 :
    ((((D_iw_op[5 : 0] == 52))))? 56'h2020206f726869 :
    ((((D_iw_op[5 : 0] == 31))))? 56'h20207273763331 :
    ((((D_iw_op[5 : 0] == 14))))? 56'h20202020626765 :
    ((((D_iw_op[5 : 0] == 6))))? 56'h20202020206272 :
    ((((D_iw_op[5 : 0] == 47))))? 56'h20206c6468696f :
    ((((D_iw_op[5 : 0] == 41))))? 56'h20207273763431 :
    ((((D_iw_op[5 : 0] == 19))))? 56'h20207273763139 :
    ((((D_iw_op[5 : 0] == 55))))? 56'h20206c6477696f :
    ((((D_iw_op[5 : 0] == 29))))? 56'h20207273763239 :
    ((((D_iw_op[5 : 0] == 61))))? 56'h20207273763631 :
    ((((D_iw_op[5 : 0] == 5))))? 56'h20202020737462 :
    ((((D_iw_op[5 : 0] == 62))))? 56'h20207273763632 :
    ((((D_iw_op[5 : 0] == 54))))? 56'h202020626c7475 :
    ((((D_iw_op[5 : 0] == 50))))? 56'h20637573746f6d :
    ((((D_iw_op[5 : 0] == 36))))? 56'h2020206d756c69 :
    ((((D_iw_op[5 : 0] == 28))))? 56'h202020786f7269 :
    ((((D_iw_op[5 : 0] == 8))))? 56'h20636d70676569 :
    ((((D_iw_op[5 : 0] == 23))))? 56'h202020206c6477 :
    ((((D_iw_op[5 : 0] == 32))))? 56'h20636d70657169 :
    ((((D_iw_op[5 : 0] == 15))))? 56'h202020206c6468 :
    ((((D_iw_op[5 : 0] == 21))))? 56'h20202020737477 :
    ((((D_iw_op[5 : 0] == 9))))? 56'h20207273763039 :
    ((((D_iw_op[5 : 0] == 24))))? 56'h20636d706e6569 :
    ((((D_iw_op[5 : 0] == 7))))? 56'h202020206c6462 :
    ((((D_iw_op[5 : 0] == 46))))? 56'h20202062676575 :
    ((((D_iw_op[5 : 0] == 53))))? 56'h2020737477696f :
    ((((D_iw_op[5 : 0] == 33))))? 56'h20207273763333 :
    ((((D_iw_op[5 : 0] == 44))))? 56'h2020616e646869 :
    ((((D_iw_op[5 : 0] == 35))))? 56'h206c646275696f :
    ((((D_iw_op[5 : 0] == 34))))? 56'h20207273763334 :
    ((((D_iw_op[5 : 0] == 45))))? 56'h2020737468696f :
    ((((D_iw_op[5 : 0] == 40))))? 56'h636d7067657569 :
    ((((D_iw_op[5 : 0] == 37))))? 56'h2020737462696f :
    ((((D_iw_op[5 : 0] == 12))))? 56'h202020616e6469 :
    ((((D_iw_op[5 : 0] == 4))))? 56'h20202061646469 :
    ((((D_iw_op[5 : 0] == 27))))? 56'h666c7573686461 :
    ((((D_iw_op[5 : 0] == 49))))? 56'h20207273763439 :
    ((((D_iw_op[5 : 0] == 1))))? 56'h2020206a6d7069 :
    ((((D_iw_op[5 : 0] == 22))))? 56'h20202020626c74 :
    ((((D_iw_op[5 : 0] == 38))))? 56'h20202020626571 :
    ((((D_iw_op[5 : 0] == 20))))? 56'h202020206f7269 :
    ((((D_iw_op[5 : 0] == 48))))? 56'h636d706c747569 :
    ((((D_iw_op[5 : 0] == 60))))? 56'h2020786f726869 :
    ((((D_iw_op[5 : 0] == 56))))? 56'h20207273763536 :
    ((((D_iw_op[5 : 0] == 43))))? 56'h206c646875696f :
    ((((D_iw_op[5 : 0] == 63))))? 56'h20207273763633 :
    ((((D_iw_op[5 : 0] == 30))))? 56'h20202020626e65 :
    ((((D_iw_op[5 : 0] == 57))))? 56'h20207273763537 :
    ((((D_iw_op[5 : 0] == 0))))? 56'h20202063616c6c :
    ((((D_iw_op[5 : 0] == 11))))? 56'h2020206c646875 :
    ((((D_iw_op[5 : 0] == 59))))? 56'h20666c75736864 :
    ((((D_iw_op[5 : 0] == 51))))? 56'h2020696e697464 :
    ((((D_iw_op[5 : 0] == 10))))? 56'h20207273763130 :
    ((((D_iw_op[5 : 0] == 17))))? 56'h20207273763137 :
    ((((D_iw_op[5 : 0] == 13))))? 56'h20202020737468 :
    ((((D_iw_op[5 : 0] == 25))))? 56'h20207273763235 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 12))))? 56'h20666c75736869 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 7))))? 56'h206d756c787575 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 33))))? 56'h20727376783333 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 46))))? 56'h2020777263746c :
    (((D_op_opx & (D_iw_opx[5 : 0] == 2))))? 56'h202020726f6c69 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 61))))? 56'h202020696e7472 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 43))))? 56'h20727376783433 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 27))))? 56'h2020202073726c :
    (((D_op_opx & (D_iw_opx[5 : 0] == 45))))? 56'h20202074726170 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 17))))? 56'h20727376783137 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 52))))? 56'h2020627265616b :
    (((D_op_opx & (D_iw_opx[5 : 0] == 38))))? 56'h2020726463746c :
    (((D_op_opx & (D_iw_opx[5 : 0] == 48))))? 56'h20636d706c7475 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 29))))? 56'h202063616c6c72 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 8))))? 56'h2020636d706765 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 47))))? 56'h20727376783437 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 14))))? 56'h20202020616e64 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 0))))? 56'h20727376783030 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 56))))? 56'h20727376783536 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 53))))? 56'h2068627265616b :
    (((D_op_opx & (D_iw_opx[5 : 0] == 4))))? 56'h20666c75736870 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 6))))? 56'h202020206e6f72 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 50))))? 56'h20727376783530 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 41))))? 56'h2020696e697469 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 58))))? 56'h20202073726169 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 54))))? 56'h20202073796e63 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 15))))? 56'h20727376783135 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 55))))? 56'h20727376783535 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 62))))? 56'h20202063727374 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 42))))? 56'h20727376783432 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 30))))? 56'h20202020786f72 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 34))))? 56'h20727376783334 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 31))))? 56'h206d756c787373 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 51))))? 56'h20727376783531 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 10))))? 56'h20727376783130 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 1))))? 56'h20202065726574 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 25))))? 56'h20727376783235 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 13))))? 56'h202020206a6d70 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 22))))? 56'h20202020206f72 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 35))))? 56'h20727376783335 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 59))))? 56'h20202020737261 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 20))))? 56'h20727376783230 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 18))))? 56'h202020736c6c69 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 23))))? 56'h206d756c787375 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 21))))? 56'h20727376783231 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 11))))? 56'h20202020726f72 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 26))))? 56'h20202073726c69 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 19))))? 56'h20202020736c6c :
    (((D_op_opx & (D_iw_opx[5 : 0] == 37))))? 56'h20202020646976 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 16))))? 56'h2020636d706c74 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 49))))? 56'h20202020616464 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 44))))? 56'h20727376783434 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 9))))? 56'h20202062726574 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 60))))? 56'h20727376783630 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 63))))? 56'h20727376783633 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 39))))? 56'h202020206d756c :
    (((D_op_opx & (D_iw_opx[5 : 0] == 40))))? 56'h20636d70676575 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 24))))? 56'h2020636d706e65 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 32))))? 56'h2020636d706571 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 5))))? 56'h20202020726574 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 3))))? 56'h20202020726f6c :
    (((D_op_opx & (D_iw_opx[5 : 0] == 57))))? 56'h20202020737562 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 28))))? 56'h206e6578747063 :
    (((D_op_opx & (D_iw_opx[5 : 0] == 36))))? 56'h20202064697675 :
    56'h20202020424144;

  assign E_inst = ((((E_iw_op[5 : 0] == 2))))? 56'h20207273763032 :
    ((((E_iw_op[5 : 0] == 16))))? 56'h20636d706c7469 :
    ((((E_iw_op[5 : 0] == 18))))? 56'h20207273763138 :
    ((((E_iw_op[5 : 0] == 26))))? 56'h20207273763236 :
    ((((E_iw_op[5 : 0] == 42))))? 56'h20207273763432 :
    ((((E_iw_op[5 : 0] == 39))))? 56'h20206c6462696f :
    ((((E_iw_op[5 : 0] == 3))))? 56'h2020206c646275 :
    ((((E_iw_op[5 : 0] == 52))))? 56'h2020206f726869 :
    ((((E_iw_op[5 : 0] == 31))))? 56'h20207273763331 :
    ((((E_iw_op[5 : 0] == 14))))? 56'h20202020626765 :
    ((((E_iw_op[5 : 0] == 6))))? 56'h20202020206272 :
    ((((E_iw_op[5 : 0] == 47))))? 56'h20206c6468696f :
    ((((E_iw_op[5 : 0] == 41))))? 56'h20207273763431 :
    ((((E_iw_op[5 : 0] == 19))))? 56'h20207273763139 :
    ((((E_iw_op[5 : 0] == 55))))? 56'h20206c6477696f :
    ((((E_iw_op[5 : 0] == 29))))? 56'h20207273763239 :
    ((((E_iw_op[5 : 0] == 61))))? 56'h20207273763631 :
    ((((E_iw_op[5 : 0] == 5))))? 56'h20202020737462 :
    ((((E_iw_op[5 : 0] == 62))))? 56'h20207273763632 :
    ((((E_iw_op[5 : 0] == 54))))? 56'h202020626c7475 :
    ((((E_iw_op[5 : 0] == 50))))? 56'h20637573746f6d :
    ((((E_iw_op[5 : 0] == 36))))? 56'h2020206d756c69 :
    ((((E_iw_op[5 : 0] == 28))))? 56'h202020786f7269 :
    ((((E_iw_op[5 : 0] == 8))))? 56'h20636d70676569 :
    ((((E_iw_op[5 : 0] == 23))))? 56'h202020206c6477 :
    ((((E_iw_op[5 : 0] == 32))))? 56'h20636d70657169 :
    ((((E_iw_op[5 : 0] == 15))))? 56'h202020206c6468 :
    ((((E_iw_op[5 : 0] == 21))))? 56'h20202020737477 :
    ((((E_iw_op[5 : 0] == 9))))? 56'h20207273763039 :
    ((((E_iw_op[5 : 0] == 24))))? 56'h20636d706e6569 :
    ((((E_iw_op[5 : 0] == 7))))? 56'h202020206c6462 :
    ((((E_iw_op[5 : 0] == 46))))? 56'h20202062676575 :
    ((((E_iw_op[5 : 0] == 53))))? 56'h2020737477696f :
    ((((E_iw_op[5 : 0] == 33))))? 56'h20207273763333 :
    ((((E_iw_op[5 : 0] == 44))))? 56'h2020616e646869 :
    ((((E_iw_op[5 : 0] == 35))))? 56'h206c646275696f :
    ((((E_iw_op[5 : 0] == 34))))? 56'h20207273763334 :
    ((((E_iw_op[5 : 0] == 45))))? 56'h2020737468696f :
    ((((E_iw_op[5 : 0] == 40))))? 56'h636d7067657569 :
    ((((E_iw_op[5 : 0] == 37))))? 56'h2020737462696f :
    ((((E_iw_op[5 : 0] == 12))))? 56'h202020616e6469 :
    ((((E_iw_op[5 : 0] == 4))))? 56'h20202061646469 :
    ((((E_iw_op[5 : 0] == 27))))? 56'h666c7573686461 :
    ((((E_iw_op[5 : 0] == 49))))? 56'h20207273763439 :
    ((((E_iw_op[5 : 0] == 1))))? 56'h2020206a6d7069 :
    ((((E_iw_op[5 : 0] == 22))))? 56'h20202020626c74 :
    ((((E_iw_op[5 : 0] == 38))))? 56'h20202020626571 :
    ((((E_iw_op[5 : 0] == 20))))? 56'h202020206f7269 :
    ((((E_iw_op[5 : 0] == 48))))? 56'h636d706c747569 :
    ((((E_iw_op[5 : 0] == 60))))? 56'h2020786f726869 :
    ((((E_iw_op[5 : 0] == 56))))? 56'h20207273763536 :
    ((((E_iw_op[5 : 0] == 43))))? 56'h206c646875696f :
    ((((E_iw_op[5 : 0] == 63))))? 56'h20207273763633 :
    ((((E_iw_op[5 : 0] == 30))))? 56'h20202020626e65 :
    ((((E_iw_op[5 : 0] == 57))))? 56'h20207273763537 :
    ((((E_iw_op[5 : 0] == 0))))? 56'h20202063616c6c :
    ((((E_iw_op[5 : 0] == 11))))? 56'h2020206c646875 :
    ((((E_iw_op[5 : 0] == 59))))? 56'h20666c75736864 :
    ((((E_iw_op[5 : 0] == 51))))? 56'h2020696e697464 :
    ((((E_iw_op[5 : 0] == 10))))? 56'h20207273763130 :
    ((((E_iw_op[5 : 0] == 17))))? 56'h20207273763137 :
    ((((E_iw_op[5 : 0] == 13))))? 56'h20202020737468 :
    ((((E_iw_op[5 : 0] == 25))))? 56'h20207273763235 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 12))))? 56'h20666c75736869 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 7))))? 56'h206d756c787575 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 33))))? 56'h20727376783333 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 46))))? 56'h2020777263746c :
    (((E_op_opx & (E_iw_opx[5 : 0] == 2))))? 56'h202020726f6c69 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 61))))? 56'h202020696e7472 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 43))))? 56'h20727376783433 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 27))))? 56'h2020202073726c :
    (((E_op_opx & (E_iw_opx[5 : 0] == 45))))? 56'h20202074726170 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 17))))? 56'h20727376783137 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 52))))? 56'h2020627265616b :
    (((E_op_opx & (E_iw_opx[5 : 0] == 38))))? 56'h2020726463746c :
    (((E_op_opx & (E_iw_opx[5 : 0] == 48))))? 56'h20636d706c7475 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 29))))? 56'h202063616c6c72 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 8))))? 56'h2020636d706765 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 47))))? 56'h20727376783437 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 14))))? 56'h20202020616e64 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 0))))? 56'h20727376783030 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 56))))? 56'h20727376783536 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 53))))? 56'h2068627265616b :
    (((E_op_opx & (E_iw_opx[5 : 0] == 4))))? 56'h20666c75736870 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 6))))? 56'h202020206e6f72 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 50))))? 56'h20727376783530 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 41))))? 56'h2020696e697469 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 58))))? 56'h20202073726169 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 54))))? 56'h20202073796e63 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 15))))? 56'h20727376783135 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 55))))? 56'h20727376783535 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 62))))? 56'h20202063727374 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 42))))? 56'h20727376783432 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 30))))? 56'h20202020786f72 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 34))))? 56'h20727376783334 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 31))))? 56'h206d756c787373 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 51))))? 56'h20727376783531 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 10))))? 56'h20727376783130 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 1))))? 56'h20202065726574 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 25))))? 56'h20727376783235 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 13))))? 56'h202020206a6d70 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 22))))? 56'h20202020206f72 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 35))))? 56'h20727376783335 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 59))))? 56'h20202020737261 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 20))))? 56'h20727376783230 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 18))))? 56'h202020736c6c69 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 23))))? 56'h206d756c787375 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 21))))? 56'h20727376783231 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 11))))? 56'h20202020726f72 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 26))))? 56'h20202073726c69 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 19))))? 56'h20202020736c6c :
    (((E_op_opx & (E_iw_opx[5 : 0] == 37))))? 56'h20202020646976 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 16))))? 56'h2020636d706c74 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 49))))? 56'h20202020616464 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 44))))? 56'h20727376783434 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 9))))? 56'h20202062726574 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 60))))? 56'h20727376783630 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 63))))? 56'h20727376783633 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 39))))? 56'h202020206d756c :
    (((E_op_opx & (E_iw_opx[5 : 0] == 40))))? 56'h20636d70676575 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 24))))? 56'h2020636d706e65 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 32))))? 56'h2020636d706571 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 5))))? 56'h20202020726574 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 3))))? 56'h20202020726f6c :
    (((E_op_opx & (E_iw_opx[5 : 0] == 57))))? 56'h20202020737562 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 28))))? 56'h206e6578747063 :
    (((E_op_opx & (E_iw_opx[5 : 0] == 36))))? 56'h20202064697675 :
    56'h20202020424144;

  assign M_inst = ((((M_iw_op[5 : 0] == 2))))? 56'h20207273763032 :
    ((((M_iw_op[5 : 0] == 16))))? 56'h20636d706c7469 :
    ((((M_iw_op[5 : 0] == 18))))? 56'h20207273763138 :
    ((((M_iw_op[5 : 0] == 26))))? 56'h20207273763236 :
    ((((M_iw_op[5 : 0] == 42))))? 56'h20207273763432 :
    ((((M_iw_op[5 : 0] == 39))))? 56'h20206c6462696f :
    ((((M_iw_op[5 : 0] == 3))))? 56'h2020206c646275 :
    ((((M_iw_op[5 : 0] == 52))))? 56'h2020206f726869 :
    ((((M_iw_op[5 : 0] == 31))))? 56'h20207273763331 :
    ((((M_iw_op[5 : 0] == 14))))? 56'h20202020626765 :
    ((((M_iw_op[5 : 0] == 6))))? 56'h20202020206272 :
    ((((M_iw_op[5 : 0] == 47))))? 56'h20206c6468696f :
    ((((M_iw_op[5 : 0] == 41))))? 56'h20207273763431 :
    ((((M_iw_op[5 : 0] == 19))))? 56'h20207273763139 :
    ((((M_iw_op[5 : 0] == 55))))? 56'h20206c6477696f :
    ((((M_iw_op[5 : 0] == 29))))? 56'h20207273763239 :
    ((((M_iw_op[5 : 0] == 61))))? 56'h20207273763631 :
    ((((M_iw_op[5 : 0] == 5))))? 56'h20202020737462 :
    ((((M_iw_op[5 : 0] == 62))))? 56'h20207273763632 :
    ((((M_iw_op[5 : 0] == 54))))? 56'h202020626c7475 :
    ((((M_iw_op[5 : 0] == 50))))? 56'h20637573746f6d :
    ((((M_iw_op[5 : 0] == 36))))? 56'h2020206d756c69 :
    ((((M_iw_op[5 : 0] == 28))))? 56'h202020786f7269 :
    ((((M_iw_op[5 : 0] == 8))))? 56'h20636d70676569 :
    ((((M_iw_op[5 : 0] == 23))))? 56'h202020206c6477 :
    ((((M_iw_op[5 : 0] == 32))))? 56'h20636d70657169 :
    ((((M_iw_op[5 : 0] == 15))))? 56'h202020206c6468 :
    ((((M_iw_op[5 : 0] == 21))))? 56'h20202020737477 :
    ((((M_iw_op[5 : 0] == 9))))? 56'h20207273763039 :
    ((((M_iw_op[5 : 0] == 24))))? 56'h20636d706e6569 :
    ((((M_iw_op[5 : 0] == 7))))? 56'h202020206c6462 :
    ((((M_iw_op[5 : 0] == 46))))? 56'h20202062676575 :
    ((((M_iw_op[5 : 0] == 53))))? 56'h2020737477696f :
    ((((M_iw_op[5 : 0] == 33))))? 56'h20207273763333 :
    ((((M_iw_op[5 : 0] == 44))))? 56'h2020616e646869 :
    ((((M_iw_op[5 : 0] == 35))))? 56'h206c646275696f :
    ((((M_iw_op[5 : 0] == 34))))? 56'h20207273763334 :
    ((((M_iw_op[5 : 0] == 45))))? 56'h2020737468696f :
    ((((M_iw_op[5 : 0] == 40))))? 56'h636d7067657569 :
    ((((M_iw_op[5 : 0] == 37))))? 56'h2020737462696f :
    ((((M_iw_op[5 : 0] == 12))))? 56'h202020616e6469 :
    ((((M_iw_op[5 : 0] == 4))))? 56'h20202061646469 :
    ((((M_iw_op[5 : 0] == 27))))? 56'h666c7573686461 :
    ((((M_iw_op[5 : 0] == 49))))? 56'h20207273763439 :
    ((((M_iw_op[5 : 0] == 1))))? 56'h2020206a6d7069 :
    ((((M_iw_op[5 : 0] == 22))))? 56'h20202020626c74 :
    ((((M_iw_op[5 : 0] == 38))))? 56'h20202020626571 :
    ((((M_iw_op[5 : 0] == 20))))? 56'h202020206f7269 :
    ((((M_iw_op[5 : 0] == 48))))? 56'h636d706c747569 :
    ((((M_iw_op[5 : 0] == 60))))? 56'h2020786f726869 :
    ((((M_iw_op[5 : 0] == 56))))? 56'h20207273763536 :
    ((((M_iw_op[5 : 0] == 43))))? 56'h206c646875696f :
    ((((M_iw_op[5 : 0] == 63))))? 56'h20207273763633 :
    ((((M_iw_op[5 : 0] == 30))))? 56'h20202020626e65 :
    ((((M_iw_op[5 : 0] == 57))))? 56'h20207273763537 :
    ((((M_iw_op[5 : 0] == 0))))? 56'h20202063616c6c :
    ((((M_iw_op[5 : 0] == 11))))? 56'h2020206c646875 :
    ((((M_iw_op[5 : 0] == 59))))? 56'h20666c75736864 :
    ((((M_iw_op[5 : 0] == 51))))? 56'h2020696e697464 :
    ((((M_iw_op[5 : 0] == 10))))? 56'h20207273763130 :
    ((((M_iw_op[5 : 0] == 17))))? 56'h20207273763137 :
    ((((M_iw_op[5 : 0] == 13))))? 56'h20202020737468 :
    ((((M_iw_op[5 : 0] == 25))))? 56'h20207273763235 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 12))))? 56'h20666c75736869 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 7))))? 56'h206d756c787575 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 33))))? 56'h20727376783333 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 46))))? 56'h2020777263746c :
    (((M_op_opx & (M_iw_opx[5 : 0] == 2))))? 56'h202020726f6c69 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 61))))? 56'h202020696e7472 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 43))))? 56'h20727376783433 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 27))))? 56'h2020202073726c :
    (((M_op_opx & (M_iw_opx[5 : 0] == 45))))? 56'h20202074726170 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 17))))? 56'h20727376783137 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 52))))? 56'h2020627265616b :
    (((M_op_opx & (M_iw_opx[5 : 0] == 38))))? 56'h2020726463746c :
    (((M_op_opx & (M_iw_opx[5 : 0] == 48))))? 56'h20636d706c7475 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 29))))? 56'h202063616c6c72 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 8))))? 56'h2020636d706765 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 47))))? 56'h20727376783437 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 14))))? 56'h20202020616e64 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 0))))? 56'h20727376783030 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 56))))? 56'h20727376783536 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 53))))? 56'h2068627265616b :
    (((M_op_opx & (M_iw_opx[5 : 0] == 4))))? 56'h20666c75736870 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 6))))? 56'h202020206e6f72 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 50))))? 56'h20727376783530 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 41))))? 56'h2020696e697469 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 58))))? 56'h20202073726169 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 54))))? 56'h20202073796e63 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 15))))? 56'h20727376783135 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 55))))? 56'h20727376783535 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 62))))? 56'h20202063727374 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 42))))? 56'h20727376783432 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 30))))? 56'h20202020786f72 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 34))))? 56'h20727376783334 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 31))))? 56'h206d756c787373 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 51))))? 56'h20727376783531 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 10))))? 56'h20727376783130 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 1))))? 56'h20202065726574 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 25))))? 56'h20727376783235 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 13))))? 56'h202020206a6d70 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 22))))? 56'h20202020206f72 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 35))))? 56'h20727376783335 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 59))))? 56'h20202020737261 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 20))))? 56'h20727376783230 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 18))))? 56'h202020736c6c69 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 23))))? 56'h206d756c787375 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 21))))? 56'h20727376783231 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 11))))? 56'h20202020726f72 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 26))))? 56'h20202073726c69 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 19))))? 56'h20202020736c6c :
    (((M_op_opx & (M_iw_opx[5 : 0] == 37))))? 56'h20202020646976 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 16))))? 56'h2020636d706c74 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 49))))? 56'h20202020616464 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 44))))? 56'h20727376783434 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 9))))? 56'h20202062726574 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 60))))? 56'h20727376783630 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 63))))? 56'h20727376783633 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 39))))? 56'h202020206d756c :
    (((M_op_opx & (M_iw_opx[5 : 0] == 40))))? 56'h20636d70676575 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 24))))? 56'h2020636d706e65 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 32))))? 56'h2020636d706571 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 5))))? 56'h20202020726574 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 3))))? 56'h20202020726f6c :
    (((M_op_opx & (M_iw_opx[5 : 0] == 57))))? 56'h20202020737562 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 28))))? 56'h206e6578747063 :
    (((M_op_opx & (M_iw_opx[5 : 0] == 36))))? 56'h20202064697675 :
    56'h20202020424144;

  assign W_inst = ((((W_iw_op[5 : 0] == 2))))? 56'h20207273763032 :
    ((((W_iw_op[5 : 0] == 16))))? 56'h20636d706c7469 :
    ((((W_iw_op[5 : 0] == 18))))? 56'h20207273763138 :
    ((((W_iw_op[5 : 0] == 26))))? 56'h20207273763236 :
    ((((W_iw_op[5 : 0] == 42))))? 56'h20207273763432 :
    ((((W_iw_op[5 : 0] == 39))))? 56'h20206c6462696f :
    ((((W_iw_op[5 : 0] == 3))))? 56'h2020206c646275 :
    ((((W_iw_op[5 : 0] == 52))))? 56'h2020206f726869 :
    ((((W_iw_op[5 : 0] == 31))))? 56'h20207273763331 :
    ((((W_iw_op[5 : 0] == 14))))? 56'h20202020626765 :
    ((((W_iw_op[5 : 0] == 6))))? 56'h20202020206272 :
    ((((W_iw_op[5 : 0] == 47))))? 56'h20206c6468696f :
    ((((W_iw_op[5 : 0] == 41))))? 56'h20207273763431 :
    ((((W_iw_op[5 : 0] == 19))))? 56'h20207273763139 :
    ((((W_iw_op[5 : 0] == 55))))? 56'h20206c6477696f :
    ((((W_iw_op[5 : 0] == 29))))? 56'h20207273763239 :
    ((((W_iw_op[5 : 0] == 61))))? 56'h20207273763631 :
    ((((W_iw_op[5 : 0] == 5))))? 56'h20202020737462 :
    ((((W_iw_op[5 : 0] == 62))))? 56'h20207273763632 :
    ((((W_iw_op[5 : 0] == 54))))? 56'h202020626c7475 :
    ((((W_iw_op[5 : 0] == 50))))? 56'h20637573746f6d :
    ((((W_iw_op[5 : 0] == 36))))? 56'h2020206d756c69 :
    ((((W_iw_op[5 : 0] == 28))))? 56'h202020786f7269 :
    ((((W_iw_op[5 : 0] == 8))))? 56'h20636d70676569 :
    ((((W_iw_op[5 : 0] == 23))))? 56'h202020206c6477 :
    ((((W_iw_op[5 : 0] == 32))))? 56'h20636d70657169 :
    ((((W_iw_op[5 : 0] == 15))))? 56'h202020206c6468 :
    ((((W_iw_op[5 : 0] == 21))))? 56'h20202020737477 :
    ((((W_iw_op[5 : 0] == 9))))? 56'h20207273763039 :
    ((((W_iw_op[5 : 0] == 24))))? 56'h20636d706e6569 :
    ((((W_iw_op[5 : 0] == 7))))? 56'h202020206c6462 :
    ((((W_iw_op[5 : 0] == 46))))? 56'h20202062676575 :
    ((((W_iw_op[5 : 0] == 53))))? 56'h2020737477696f :
    ((((W_iw_op[5 : 0] == 33))))? 56'h20207273763333 :
    ((((W_iw_op[5 : 0] == 44))))? 56'h2020616e646869 :
    ((((W_iw_op[5 : 0] == 35))))? 56'h206c646275696f :
    ((((W_iw_op[5 : 0] == 34))))? 56'h20207273763334 :
    ((((W_iw_op[5 : 0] == 45))))? 56'h2020737468696f :
    ((((W_iw_op[5 : 0] == 40))))? 56'h636d7067657569 :
    ((((W_iw_op[5 : 0] == 37))))? 56'h2020737462696f :
    ((((W_iw_op[5 : 0] == 12))))? 56'h202020616e6469 :
    ((((W_iw_op[5 : 0] == 4))))? 56'h20202061646469 :
    ((((W_iw_op[5 : 0] == 27))))? 56'h666c7573686461 :
    ((((W_iw_op[5 : 0] == 49))))? 56'h20207273763439 :
    ((((W_iw_op[5 : 0] == 1))))? 56'h2020206a6d7069 :
    ((((W_iw_op[5 : 0] == 22))))? 56'h20202020626c74 :
    ((((W_iw_op[5 : 0] == 38))))? 56'h20202020626571 :
    ((((W_iw_op[5 : 0] == 20))))? 56'h202020206f7269 :
    ((((W_iw_op[5 : 0] == 48))))? 56'h636d706c747569 :
    ((((W_iw_op[5 : 0] == 60))))? 56'h2020786f726869 :
    ((((W_iw_op[5 : 0] == 56))))? 56'h20207273763536 :
    ((((W_iw_op[5 : 0] == 43))))? 56'h206c646875696f :
    ((((W_iw_op[5 : 0] == 63))))? 56'h20207273763633 :
    ((((W_iw_op[5 : 0] == 30))))? 56'h20202020626e65 :
    ((((W_iw_op[5 : 0] == 57))))? 56'h20207273763537 :
    ((((W_iw_op[5 : 0] == 0))))? 56'h20202063616c6c :
    ((((W_iw_op[5 : 0] == 11))))? 56'h2020206c646875 :
    ((((W_iw_op[5 : 0] == 59))))? 56'h20666c75736864 :
    ((((W_iw_op[5 : 0] == 51))))? 56'h2020696e697464 :
    ((((W_iw_op[5 : 0] == 10))))? 56'h20207273763130 :
    ((((W_iw_op[5 : 0] == 17))))? 56'h20207273763137 :
    ((((W_iw_op[5 : 0] == 13))))? 56'h20202020737468 :
    ((((W_iw_op[5 : 0] == 25))))? 56'h20207273763235 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 12))))? 56'h20666c75736869 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 7))))? 56'h206d756c787575 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 33))))? 56'h20727376783333 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 46))))? 56'h2020777263746c :
    (((W_op_opx & (W_iw_opx[5 : 0] == 2))))? 56'h202020726f6c69 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 61))))? 56'h202020696e7472 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 43))))? 56'h20727376783433 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 27))))? 56'h2020202073726c :
    (((W_op_opx & (W_iw_opx[5 : 0] == 45))))? 56'h20202074726170 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 17))))? 56'h20727376783137 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 52))))? 56'h2020627265616b :
    (((W_op_opx & (W_iw_opx[5 : 0] == 38))))? 56'h2020726463746c :
    (((W_op_opx & (W_iw_opx[5 : 0] == 48))))? 56'h20636d706c7475 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 29))))? 56'h202063616c6c72 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 8))))? 56'h2020636d706765 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 47))))? 56'h20727376783437 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 14))))? 56'h20202020616e64 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 0))))? 56'h20727376783030 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 56))))? 56'h20727376783536 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 53))))? 56'h2068627265616b :
    (((W_op_opx & (W_iw_opx[5 : 0] == 4))))? 56'h20666c75736870 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 6))))? 56'h202020206e6f72 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 50))))? 56'h20727376783530 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 41))))? 56'h2020696e697469 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 58))))? 56'h20202073726169 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 54))))? 56'h20202073796e63 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 15))))? 56'h20727376783135 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 55))))? 56'h20727376783535 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 62))))? 56'h20202063727374 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 42))))? 56'h20727376783432 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 30))))? 56'h20202020786f72 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 34))))? 56'h20727376783334 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 31))))? 56'h206d756c787373 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 51))))? 56'h20727376783531 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 10))))? 56'h20727376783130 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 1))))? 56'h20202065726574 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 25))))? 56'h20727376783235 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 13))))? 56'h202020206a6d70 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 22))))? 56'h20202020206f72 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 35))))? 56'h20727376783335 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 59))))? 56'h20202020737261 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 20))))? 56'h20727376783230 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 18))))? 56'h202020736c6c69 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 23))))? 56'h206d756c787375 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 21))))? 56'h20727376783231 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 11))))? 56'h20202020726f72 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 26))))? 56'h20202073726c69 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 19))))? 56'h20202020736c6c :
    (((W_op_opx & (W_iw_opx[5 : 0] == 37))))? 56'h20202020646976 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 16))))? 56'h2020636d706c74 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 49))))? 56'h20202020616464 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 44))))? 56'h20727376783434 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 9))))? 56'h20202062726574 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 60))))? 56'h20727376783630 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 63))))? 56'h20727376783633 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 39))))? 56'h202020206d756c :
    (((W_op_opx & (W_iw_opx[5 : 0] == 40))))? 56'h20636d70676575 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 24))))? 56'h2020636d706e65 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 32))))? 56'h2020636d706571 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 5))))? 56'h20202020726574 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 3))))? 56'h20202020726f6c :
    (((W_op_opx & (W_iw_opx[5 : 0] == 57))))? 56'h20202020737562 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 28))))? 56'h206e6578747063 :
    (((W_op_opx & (W_iw_opx[5 : 0] == 36))))? 56'h20202064697675 :
    56'h20202020424144;

  assign F_vinst = F_inst_ram_hit ? F_inst : {7{8'h2d}};
  assign D_vinst = D_issue ? D_inst : {7{8'h2d}};
  assign E_vinst = E_valid ? E_inst : {7{8'h2d}};
  assign M_vinst = M_valid ? M_inst : {7{8'h2d}};
  assign W_vinst = W_valid ? W_inst : {7{8'h2d}};
  //Clearing 'X' data bits
  assign D_ic_want_fill_unfiltered_is_x = ^(D_ic_want_fill_unfiltered) === 1'bx;

  assign D_ic_want_fill = D_ic_want_fill_unfiltered_is_x ? 1'b0 : D_ic_want_fill_unfiltered;

//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on
//synthesis read_comments_as_HDL on
//  
//  assign D_ic_want_fill = D_ic_want_fill_unfiltered;
//
//synthesis read_comments_as_HDL off

endmodule

