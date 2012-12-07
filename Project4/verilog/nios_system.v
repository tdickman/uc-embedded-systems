//megafunction wizard: %Altera SOPC Builder%
//GENERATION: STANDARD
//VERSION: WM1.0


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

module Expansion_JP1_avalon_parallel_port_slave_arbitrator (
                                                             // inputs:
                                                              Expansion_JP1_avalon_parallel_port_slave_irq,
                                                              Expansion_JP1_avalon_parallel_port_slave_readdata,
                                                              clk,
                                                              cpu_data_master_address_to_slave,
                                                              cpu_data_master_byteenable,
                                                              cpu_data_master_read,
                                                              cpu_data_master_waitrequest,
                                                              cpu_data_master_write,
                                                              cpu_data_master_writedata,
                                                              reset_n,

                                                             // outputs:
                                                              Expansion_JP1_avalon_parallel_port_slave_address,
                                                              Expansion_JP1_avalon_parallel_port_slave_byteenable,
                                                              Expansion_JP1_avalon_parallel_port_slave_chipselect,
                                                              Expansion_JP1_avalon_parallel_port_slave_irq_from_sa,
                                                              Expansion_JP1_avalon_parallel_port_slave_read,
                                                              Expansion_JP1_avalon_parallel_port_slave_readdata_from_sa,
                                                              Expansion_JP1_avalon_parallel_port_slave_write,
                                                              Expansion_JP1_avalon_parallel_port_slave_writedata,
                                                              cpu_data_master_granted_Expansion_JP1_avalon_parallel_port_slave,
                                                              cpu_data_master_qualified_request_Expansion_JP1_avalon_parallel_port_slave,
                                                              cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave,
                                                              cpu_data_master_requests_Expansion_JP1_avalon_parallel_port_slave,
                                                              d1_Expansion_JP1_avalon_parallel_port_slave_end_xfer,
                                                              registered_cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave
                                                           )
  /* synthesis auto_dissolve = "FALSE" */ ;

  output  [  1: 0] Expansion_JP1_avalon_parallel_port_slave_address;
  output  [  3: 0] Expansion_JP1_avalon_parallel_port_slave_byteenable;
  output           Expansion_JP1_avalon_parallel_port_slave_chipselect;
  output           Expansion_JP1_avalon_parallel_port_slave_irq_from_sa;
  output           Expansion_JP1_avalon_parallel_port_slave_read;
  output  [ 31: 0] Expansion_JP1_avalon_parallel_port_slave_readdata_from_sa;
  output           Expansion_JP1_avalon_parallel_port_slave_write;
  output  [ 31: 0] Expansion_JP1_avalon_parallel_port_slave_writedata;
  output           cpu_data_master_granted_Expansion_JP1_avalon_parallel_port_slave;
  output           cpu_data_master_qualified_request_Expansion_JP1_avalon_parallel_port_slave;
  output           cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave;
  output           cpu_data_master_requests_Expansion_JP1_avalon_parallel_port_slave;
  output           d1_Expansion_JP1_avalon_parallel_port_slave_end_xfer;
  output           registered_cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave;
  input            Expansion_JP1_avalon_parallel_port_slave_irq;
  input   [ 31: 0] Expansion_JP1_avalon_parallel_port_slave_readdata;
  input            clk;
  input   [ 28: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;

  wire    [  1: 0] Expansion_JP1_avalon_parallel_port_slave_address;
  wire             Expansion_JP1_avalon_parallel_port_slave_allgrants;
  wire             Expansion_JP1_avalon_parallel_port_slave_allow_new_arb_cycle;
  wire             Expansion_JP1_avalon_parallel_port_slave_any_bursting_master_saved_grant;
  wire             Expansion_JP1_avalon_parallel_port_slave_any_continuerequest;
  wire             Expansion_JP1_avalon_parallel_port_slave_arb_counter_enable;
  reg     [  1: 0] Expansion_JP1_avalon_parallel_port_slave_arb_share_counter;
  wire    [  1: 0] Expansion_JP1_avalon_parallel_port_slave_arb_share_counter_next_value;
  wire    [  1: 0] Expansion_JP1_avalon_parallel_port_slave_arb_share_set_values;
  wire             Expansion_JP1_avalon_parallel_port_slave_beginbursttransfer_internal;
  wire             Expansion_JP1_avalon_parallel_port_slave_begins_xfer;
  wire    [  3: 0] Expansion_JP1_avalon_parallel_port_slave_byteenable;
  wire             Expansion_JP1_avalon_parallel_port_slave_chipselect;
  wire             Expansion_JP1_avalon_parallel_port_slave_end_xfer;
  wire             Expansion_JP1_avalon_parallel_port_slave_firsttransfer;
  wire             Expansion_JP1_avalon_parallel_port_slave_grant_vector;
  wire             Expansion_JP1_avalon_parallel_port_slave_in_a_read_cycle;
  wire             Expansion_JP1_avalon_parallel_port_slave_in_a_write_cycle;
  wire             Expansion_JP1_avalon_parallel_port_slave_irq_from_sa;
  wire             Expansion_JP1_avalon_parallel_port_slave_master_qreq_vector;
  wire             Expansion_JP1_avalon_parallel_port_slave_non_bursting_master_requests;
  wire             Expansion_JP1_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Expansion_JP1_avalon_parallel_port_slave_readdata_from_sa;
  reg              Expansion_JP1_avalon_parallel_port_slave_reg_firsttransfer;
  reg              Expansion_JP1_avalon_parallel_port_slave_slavearbiterlockenable;
  wire             Expansion_JP1_avalon_parallel_port_slave_slavearbiterlockenable2;
  wire             Expansion_JP1_avalon_parallel_port_slave_unreg_firsttransfer;
  wire             Expansion_JP1_avalon_parallel_port_slave_waits_for_read;
  wire             Expansion_JP1_avalon_parallel_port_slave_waits_for_write;
  wire             Expansion_JP1_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Expansion_JP1_avalon_parallel_port_slave_writedata;
  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_Expansion_JP1_avalon_parallel_port_slave;
  wire             cpu_data_master_qualified_request_Expansion_JP1_avalon_parallel_port_slave;
  wire             cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave;
  reg              cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave_shift_register;
  wire             cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave_shift_register_in;
  wire             cpu_data_master_requests_Expansion_JP1_avalon_parallel_port_slave;
  wire             cpu_data_master_saved_grant_Expansion_JP1_avalon_parallel_port_slave;
  reg              d1_Expansion_JP1_avalon_parallel_port_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_Expansion_JP1_avalon_parallel_port_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             p1_cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave_shift_register;
  wire             registered_cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave;
  wire    [ 28: 0] shifted_address_to_Expansion_JP1_avalon_parallel_port_slave_from_cpu_data_master;
  wire             wait_for_Expansion_JP1_avalon_parallel_port_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else if (1)
          d1_reasons_to_wait <= ~Expansion_JP1_avalon_parallel_port_slave_end_xfer;
    end


  assign Expansion_JP1_avalon_parallel_port_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_Expansion_JP1_avalon_parallel_port_slave));
  //assign Expansion_JP1_avalon_parallel_port_slave_readdata_from_sa = Expansion_JP1_avalon_parallel_port_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Expansion_JP1_avalon_parallel_port_slave_readdata_from_sa = Expansion_JP1_avalon_parallel_port_slave_readdata;

  assign cpu_data_master_requests_Expansion_JP1_avalon_parallel_port_slave = ({cpu_data_master_address_to_slave[28 : 4] , 4'b0} == 29'h10000060) & (cpu_data_master_read | cpu_data_master_write);
  //registered rdv signal_name registered_cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave assignment, which is an e_assign
  assign registered_cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave = cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave_shift_register_in;

  //Expansion_JP1_avalon_parallel_port_slave_arb_share_counter set values, which is an e_mux
  assign Expansion_JP1_avalon_parallel_port_slave_arb_share_set_values = 1;

  //Expansion_JP1_avalon_parallel_port_slave_non_bursting_master_requests mux, which is an e_mux
  assign Expansion_JP1_avalon_parallel_port_slave_non_bursting_master_requests = cpu_data_master_requests_Expansion_JP1_avalon_parallel_port_slave;

  //Expansion_JP1_avalon_parallel_port_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign Expansion_JP1_avalon_parallel_port_slave_any_bursting_master_saved_grant = 0;

  //Expansion_JP1_avalon_parallel_port_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign Expansion_JP1_avalon_parallel_port_slave_arb_share_counter_next_value = Expansion_JP1_avalon_parallel_port_slave_firsttransfer ? (Expansion_JP1_avalon_parallel_port_slave_arb_share_set_values - 1) : |Expansion_JP1_avalon_parallel_port_slave_arb_share_counter ? (Expansion_JP1_avalon_parallel_port_slave_arb_share_counter - 1) : 0;

  //Expansion_JP1_avalon_parallel_port_slave_allgrants all slave grants, which is an e_mux
  assign Expansion_JP1_avalon_parallel_port_slave_allgrants = |Expansion_JP1_avalon_parallel_port_slave_grant_vector;

  //Expansion_JP1_avalon_parallel_port_slave_end_xfer assignment, which is an e_assign
  assign Expansion_JP1_avalon_parallel_port_slave_end_xfer = ~(Expansion_JP1_avalon_parallel_port_slave_waits_for_read | Expansion_JP1_avalon_parallel_port_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_Expansion_JP1_avalon_parallel_port_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_Expansion_JP1_avalon_parallel_port_slave = Expansion_JP1_avalon_parallel_port_slave_end_xfer & (~Expansion_JP1_avalon_parallel_port_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //Expansion_JP1_avalon_parallel_port_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign Expansion_JP1_avalon_parallel_port_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_Expansion_JP1_avalon_parallel_port_slave & Expansion_JP1_avalon_parallel_port_slave_allgrants) | (end_xfer_arb_share_counter_term_Expansion_JP1_avalon_parallel_port_slave & ~Expansion_JP1_avalon_parallel_port_slave_non_bursting_master_requests);

  //Expansion_JP1_avalon_parallel_port_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Expansion_JP1_avalon_parallel_port_slave_arb_share_counter <= 0;
      else if (Expansion_JP1_avalon_parallel_port_slave_arb_counter_enable)
          Expansion_JP1_avalon_parallel_port_slave_arb_share_counter <= Expansion_JP1_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //Expansion_JP1_avalon_parallel_port_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Expansion_JP1_avalon_parallel_port_slave_slavearbiterlockenable <= 0;
      else if ((|Expansion_JP1_avalon_parallel_port_slave_master_qreq_vector & end_xfer_arb_share_counter_term_Expansion_JP1_avalon_parallel_port_slave) | (end_xfer_arb_share_counter_term_Expansion_JP1_avalon_parallel_port_slave & ~Expansion_JP1_avalon_parallel_port_slave_non_bursting_master_requests))
          Expansion_JP1_avalon_parallel_port_slave_slavearbiterlockenable <= |Expansion_JP1_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //cpu/data_master Expansion_JP1/avalon_parallel_port_slave arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = Expansion_JP1_avalon_parallel_port_slave_slavearbiterlockenable & cpu_data_master_continuerequest;

  //Expansion_JP1_avalon_parallel_port_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign Expansion_JP1_avalon_parallel_port_slave_slavearbiterlockenable2 = |Expansion_JP1_avalon_parallel_port_slave_arb_share_counter_next_value;

  //cpu/data_master Expansion_JP1/avalon_parallel_port_slave arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = Expansion_JP1_avalon_parallel_port_slave_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //Expansion_JP1_avalon_parallel_port_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign Expansion_JP1_avalon_parallel_port_slave_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_Expansion_JP1_avalon_parallel_port_slave = cpu_data_master_requests_Expansion_JP1_avalon_parallel_port_slave & ~((cpu_data_master_read & ((|cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave_shift_register))) | ((~cpu_data_master_waitrequest) & cpu_data_master_write));
  //cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave_shift_register_in = cpu_data_master_granted_Expansion_JP1_avalon_parallel_port_slave & cpu_data_master_read & ~Expansion_JP1_avalon_parallel_port_slave_waits_for_read & ~(|cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave_shift_register);

  //shift register p1 cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave_shift_register = {cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave_shift_register, cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave_shift_register_in};

  //cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave_shift_register <= 0;
      else if (1)
          cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave_shift_register <= p1_cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave_shift_register;
    end


  //local readdatavalid cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave, which is an e_mux
  assign cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave = cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave_shift_register;

  //Expansion_JP1_avalon_parallel_port_slave_writedata mux, which is an e_mux
  assign Expansion_JP1_avalon_parallel_port_slave_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_Expansion_JP1_avalon_parallel_port_slave = cpu_data_master_qualified_request_Expansion_JP1_avalon_parallel_port_slave;

  //cpu/data_master saved-grant Expansion_JP1/avalon_parallel_port_slave, which is an e_assign
  assign cpu_data_master_saved_grant_Expansion_JP1_avalon_parallel_port_slave = cpu_data_master_requests_Expansion_JP1_avalon_parallel_port_slave;

  //allow new arb cycle for Expansion_JP1/avalon_parallel_port_slave, which is an e_assign
  assign Expansion_JP1_avalon_parallel_port_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign Expansion_JP1_avalon_parallel_port_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign Expansion_JP1_avalon_parallel_port_slave_master_qreq_vector = 1;

  assign Expansion_JP1_avalon_parallel_port_slave_chipselect = cpu_data_master_granted_Expansion_JP1_avalon_parallel_port_slave;
  //Expansion_JP1_avalon_parallel_port_slave_firsttransfer first transaction, which is an e_assign
  assign Expansion_JP1_avalon_parallel_port_slave_firsttransfer = Expansion_JP1_avalon_parallel_port_slave_begins_xfer ? Expansion_JP1_avalon_parallel_port_slave_unreg_firsttransfer : Expansion_JP1_avalon_parallel_port_slave_reg_firsttransfer;

  //Expansion_JP1_avalon_parallel_port_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign Expansion_JP1_avalon_parallel_port_slave_unreg_firsttransfer = ~(Expansion_JP1_avalon_parallel_port_slave_slavearbiterlockenable & Expansion_JP1_avalon_parallel_port_slave_any_continuerequest);

  //Expansion_JP1_avalon_parallel_port_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Expansion_JP1_avalon_parallel_port_slave_reg_firsttransfer <= 1'b1;
      else if (Expansion_JP1_avalon_parallel_port_slave_begins_xfer)
          Expansion_JP1_avalon_parallel_port_slave_reg_firsttransfer <= Expansion_JP1_avalon_parallel_port_slave_unreg_firsttransfer;
    end


  //Expansion_JP1_avalon_parallel_port_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign Expansion_JP1_avalon_parallel_port_slave_beginbursttransfer_internal = Expansion_JP1_avalon_parallel_port_slave_begins_xfer;

  //Expansion_JP1_avalon_parallel_port_slave_read assignment, which is an e_mux
  assign Expansion_JP1_avalon_parallel_port_slave_read = cpu_data_master_granted_Expansion_JP1_avalon_parallel_port_slave & cpu_data_master_read;

  //Expansion_JP1_avalon_parallel_port_slave_write assignment, which is an e_mux
  assign Expansion_JP1_avalon_parallel_port_slave_write = cpu_data_master_granted_Expansion_JP1_avalon_parallel_port_slave & cpu_data_master_write;

  assign shifted_address_to_Expansion_JP1_avalon_parallel_port_slave_from_cpu_data_master = cpu_data_master_address_to_slave;
  //Expansion_JP1_avalon_parallel_port_slave_address mux, which is an e_mux
  assign Expansion_JP1_avalon_parallel_port_slave_address = shifted_address_to_Expansion_JP1_avalon_parallel_port_slave_from_cpu_data_master >> 2;

  //d1_Expansion_JP1_avalon_parallel_port_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_Expansion_JP1_avalon_parallel_port_slave_end_xfer <= 1;
      else if (1)
          d1_Expansion_JP1_avalon_parallel_port_slave_end_xfer <= Expansion_JP1_avalon_parallel_port_slave_end_xfer;
    end


  //Expansion_JP1_avalon_parallel_port_slave_waits_for_read in a cycle, which is an e_mux
  assign Expansion_JP1_avalon_parallel_port_slave_waits_for_read = Expansion_JP1_avalon_parallel_port_slave_in_a_read_cycle & 0;

  //Expansion_JP1_avalon_parallel_port_slave_in_a_read_cycle assignment, which is an e_assign
  assign Expansion_JP1_avalon_parallel_port_slave_in_a_read_cycle = cpu_data_master_granted_Expansion_JP1_avalon_parallel_port_slave & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = Expansion_JP1_avalon_parallel_port_slave_in_a_read_cycle;

  //Expansion_JP1_avalon_parallel_port_slave_waits_for_write in a cycle, which is an e_mux
  assign Expansion_JP1_avalon_parallel_port_slave_waits_for_write = Expansion_JP1_avalon_parallel_port_slave_in_a_write_cycle & 0;

  //Expansion_JP1_avalon_parallel_port_slave_in_a_write_cycle assignment, which is an e_assign
  assign Expansion_JP1_avalon_parallel_port_slave_in_a_write_cycle = cpu_data_master_granted_Expansion_JP1_avalon_parallel_port_slave & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = Expansion_JP1_avalon_parallel_port_slave_in_a_write_cycle;

  assign wait_for_Expansion_JP1_avalon_parallel_port_slave_counter = 0;
  //Expansion_JP1_avalon_parallel_port_slave_byteenable byte enable port mux, which is an e_mux
  assign Expansion_JP1_avalon_parallel_port_slave_byteenable = (cpu_data_master_granted_Expansion_JP1_avalon_parallel_port_slave)? cpu_data_master_byteenable :
    -1;

  //assign Expansion_JP1_avalon_parallel_port_slave_irq_from_sa = Expansion_JP1_avalon_parallel_port_slave_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Expansion_JP1_avalon_parallel_port_slave_irq_from_sa = Expansion_JP1_avalon_parallel_port_slave_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //Expansion_JP1/avalon_parallel_port_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else if (1)
          enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module nios_system_reset_clk_domain_synch_module (
                                                   // inputs:
                                                    clk,
                                                    data_in,
                                                    reset_n,

                                                   // outputs:
                                                    data_out
                                                 )
;

  output           data_out;
  input            clk;
  input            data_in;
  input            reset_n;

  reg              data_in_d1 /* synthesis ALTERA_ATTRIBUTE = "MAX_DELAY=\"100ns\" ; PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  reg              data_out /* synthesis ALTERA_ATTRIBUTE = "PRESERVE_REGISTER=ON ; SUPPRESS_DA_RULE_INTERNAL=R101"  */;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_in_d1 <= 0;
      else if (1)
          data_in_d1 <= data_in;
    end


  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          data_out <= 0;
      else if (1)
          data_out <= data_in_d1;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module Expansion_JP2_avalon_parallel_port_slave_arbitrator (
                                                             // inputs:
                                                              Expansion_JP2_avalon_parallel_port_slave_irq,
                                                              Expansion_JP2_avalon_parallel_port_slave_readdata,
                                                              clk,
                                                              cpu_data_master_address_to_slave,
                                                              cpu_data_master_byteenable,
                                                              cpu_data_master_read,
                                                              cpu_data_master_waitrequest,
                                                              cpu_data_master_write,
                                                              cpu_data_master_writedata,
                                                              reset_n,

                                                             // outputs:
                                                              Expansion_JP2_avalon_parallel_port_slave_address,
                                                              Expansion_JP2_avalon_parallel_port_slave_byteenable,
                                                              Expansion_JP2_avalon_parallel_port_slave_chipselect,
                                                              Expansion_JP2_avalon_parallel_port_slave_irq_from_sa,
                                                              Expansion_JP2_avalon_parallel_port_slave_read,
                                                              Expansion_JP2_avalon_parallel_port_slave_readdata_from_sa,
                                                              Expansion_JP2_avalon_parallel_port_slave_write,
                                                              Expansion_JP2_avalon_parallel_port_slave_writedata,
                                                              cpu_data_master_granted_Expansion_JP2_avalon_parallel_port_slave,
                                                              cpu_data_master_qualified_request_Expansion_JP2_avalon_parallel_port_slave,
                                                              cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave,
                                                              cpu_data_master_requests_Expansion_JP2_avalon_parallel_port_slave,
                                                              d1_Expansion_JP2_avalon_parallel_port_slave_end_xfer,
                                                              registered_cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave
                                                           )
  /* synthesis auto_dissolve = "FALSE" */ ;

  output  [  1: 0] Expansion_JP2_avalon_parallel_port_slave_address;
  output  [  3: 0] Expansion_JP2_avalon_parallel_port_slave_byteenable;
  output           Expansion_JP2_avalon_parallel_port_slave_chipselect;
  output           Expansion_JP2_avalon_parallel_port_slave_irq_from_sa;
  output           Expansion_JP2_avalon_parallel_port_slave_read;
  output  [ 31: 0] Expansion_JP2_avalon_parallel_port_slave_readdata_from_sa;
  output           Expansion_JP2_avalon_parallel_port_slave_write;
  output  [ 31: 0] Expansion_JP2_avalon_parallel_port_slave_writedata;
  output           cpu_data_master_granted_Expansion_JP2_avalon_parallel_port_slave;
  output           cpu_data_master_qualified_request_Expansion_JP2_avalon_parallel_port_slave;
  output           cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave;
  output           cpu_data_master_requests_Expansion_JP2_avalon_parallel_port_slave;
  output           d1_Expansion_JP2_avalon_parallel_port_slave_end_xfer;
  output           registered_cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave;
  input            Expansion_JP2_avalon_parallel_port_slave_irq;
  input   [ 31: 0] Expansion_JP2_avalon_parallel_port_slave_readdata;
  input            clk;
  input   [ 28: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;

  wire    [  1: 0] Expansion_JP2_avalon_parallel_port_slave_address;
  wire             Expansion_JP2_avalon_parallel_port_slave_allgrants;
  wire             Expansion_JP2_avalon_parallel_port_slave_allow_new_arb_cycle;
  wire             Expansion_JP2_avalon_parallel_port_slave_any_bursting_master_saved_grant;
  wire             Expansion_JP2_avalon_parallel_port_slave_any_continuerequest;
  wire             Expansion_JP2_avalon_parallel_port_slave_arb_counter_enable;
  reg     [  1: 0] Expansion_JP2_avalon_parallel_port_slave_arb_share_counter;
  wire    [  1: 0] Expansion_JP2_avalon_parallel_port_slave_arb_share_counter_next_value;
  wire    [  1: 0] Expansion_JP2_avalon_parallel_port_slave_arb_share_set_values;
  wire             Expansion_JP2_avalon_parallel_port_slave_beginbursttransfer_internal;
  wire             Expansion_JP2_avalon_parallel_port_slave_begins_xfer;
  wire    [  3: 0] Expansion_JP2_avalon_parallel_port_slave_byteenable;
  wire             Expansion_JP2_avalon_parallel_port_slave_chipselect;
  wire             Expansion_JP2_avalon_parallel_port_slave_end_xfer;
  wire             Expansion_JP2_avalon_parallel_port_slave_firsttransfer;
  wire             Expansion_JP2_avalon_parallel_port_slave_grant_vector;
  wire             Expansion_JP2_avalon_parallel_port_slave_in_a_read_cycle;
  wire             Expansion_JP2_avalon_parallel_port_slave_in_a_write_cycle;
  wire             Expansion_JP2_avalon_parallel_port_slave_irq_from_sa;
  wire             Expansion_JP2_avalon_parallel_port_slave_master_qreq_vector;
  wire             Expansion_JP2_avalon_parallel_port_slave_non_bursting_master_requests;
  wire             Expansion_JP2_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Expansion_JP2_avalon_parallel_port_slave_readdata_from_sa;
  reg              Expansion_JP2_avalon_parallel_port_slave_reg_firsttransfer;
  reg              Expansion_JP2_avalon_parallel_port_slave_slavearbiterlockenable;
  wire             Expansion_JP2_avalon_parallel_port_slave_slavearbiterlockenable2;
  wire             Expansion_JP2_avalon_parallel_port_slave_unreg_firsttransfer;
  wire             Expansion_JP2_avalon_parallel_port_slave_waits_for_read;
  wire             Expansion_JP2_avalon_parallel_port_slave_waits_for_write;
  wire             Expansion_JP2_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Expansion_JP2_avalon_parallel_port_slave_writedata;
  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_Expansion_JP2_avalon_parallel_port_slave;
  wire             cpu_data_master_qualified_request_Expansion_JP2_avalon_parallel_port_slave;
  wire             cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave;
  reg              cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave_shift_register;
  wire             cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave_shift_register_in;
  wire             cpu_data_master_requests_Expansion_JP2_avalon_parallel_port_slave;
  wire             cpu_data_master_saved_grant_Expansion_JP2_avalon_parallel_port_slave;
  reg              d1_Expansion_JP2_avalon_parallel_port_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_Expansion_JP2_avalon_parallel_port_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             p1_cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave_shift_register;
  wire             registered_cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave;
  wire    [ 28: 0] shifted_address_to_Expansion_JP2_avalon_parallel_port_slave_from_cpu_data_master;
  wire             wait_for_Expansion_JP2_avalon_parallel_port_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else if (1)
          d1_reasons_to_wait <= ~Expansion_JP2_avalon_parallel_port_slave_end_xfer;
    end


  assign Expansion_JP2_avalon_parallel_port_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_Expansion_JP2_avalon_parallel_port_slave));
  //assign Expansion_JP2_avalon_parallel_port_slave_readdata_from_sa = Expansion_JP2_avalon_parallel_port_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Expansion_JP2_avalon_parallel_port_slave_readdata_from_sa = Expansion_JP2_avalon_parallel_port_slave_readdata;

  assign cpu_data_master_requests_Expansion_JP2_avalon_parallel_port_slave = ({cpu_data_master_address_to_slave[28 : 4] , 4'b0} == 29'h10000070) & (cpu_data_master_read | cpu_data_master_write);
  //registered rdv signal_name registered_cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave assignment, which is an e_assign
  assign registered_cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave = cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave_shift_register_in;

  //Expansion_JP2_avalon_parallel_port_slave_arb_share_counter set values, which is an e_mux
  assign Expansion_JP2_avalon_parallel_port_slave_arb_share_set_values = 1;

  //Expansion_JP2_avalon_parallel_port_slave_non_bursting_master_requests mux, which is an e_mux
  assign Expansion_JP2_avalon_parallel_port_slave_non_bursting_master_requests = cpu_data_master_requests_Expansion_JP2_avalon_parallel_port_slave;

  //Expansion_JP2_avalon_parallel_port_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign Expansion_JP2_avalon_parallel_port_slave_any_bursting_master_saved_grant = 0;

  //Expansion_JP2_avalon_parallel_port_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign Expansion_JP2_avalon_parallel_port_slave_arb_share_counter_next_value = Expansion_JP2_avalon_parallel_port_slave_firsttransfer ? (Expansion_JP2_avalon_parallel_port_slave_arb_share_set_values - 1) : |Expansion_JP2_avalon_parallel_port_slave_arb_share_counter ? (Expansion_JP2_avalon_parallel_port_slave_arb_share_counter - 1) : 0;

  //Expansion_JP2_avalon_parallel_port_slave_allgrants all slave grants, which is an e_mux
  assign Expansion_JP2_avalon_parallel_port_slave_allgrants = |Expansion_JP2_avalon_parallel_port_slave_grant_vector;

  //Expansion_JP2_avalon_parallel_port_slave_end_xfer assignment, which is an e_assign
  assign Expansion_JP2_avalon_parallel_port_slave_end_xfer = ~(Expansion_JP2_avalon_parallel_port_slave_waits_for_read | Expansion_JP2_avalon_parallel_port_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_Expansion_JP2_avalon_parallel_port_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_Expansion_JP2_avalon_parallel_port_slave = Expansion_JP2_avalon_parallel_port_slave_end_xfer & (~Expansion_JP2_avalon_parallel_port_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //Expansion_JP2_avalon_parallel_port_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign Expansion_JP2_avalon_parallel_port_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_Expansion_JP2_avalon_parallel_port_slave & Expansion_JP2_avalon_parallel_port_slave_allgrants) | (end_xfer_arb_share_counter_term_Expansion_JP2_avalon_parallel_port_slave & ~Expansion_JP2_avalon_parallel_port_slave_non_bursting_master_requests);

  //Expansion_JP2_avalon_parallel_port_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Expansion_JP2_avalon_parallel_port_slave_arb_share_counter <= 0;
      else if (Expansion_JP2_avalon_parallel_port_slave_arb_counter_enable)
          Expansion_JP2_avalon_parallel_port_slave_arb_share_counter <= Expansion_JP2_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //Expansion_JP2_avalon_parallel_port_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Expansion_JP2_avalon_parallel_port_slave_slavearbiterlockenable <= 0;
      else if ((|Expansion_JP2_avalon_parallel_port_slave_master_qreq_vector & end_xfer_arb_share_counter_term_Expansion_JP2_avalon_parallel_port_slave) | (end_xfer_arb_share_counter_term_Expansion_JP2_avalon_parallel_port_slave & ~Expansion_JP2_avalon_parallel_port_slave_non_bursting_master_requests))
          Expansion_JP2_avalon_parallel_port_slave_slavearbiterlockenable <= |Expansion_JP2_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //cpu/data_master Expansion_JP2/avalon_parallel_port_slave arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = Expansion_JP2_avalon_parallel_port_slave_slavearbiterlockenable & cpu_data_master_continuerequest;

  //Expansion_JP2_avalon_parallel_port_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign Expansion_JP2_avalon_parallel_port_slave_slavearbiterlockenable2 = |Expansion_JP2_avalon_parallel_port_slave_arb_share_counter_next_value;

  //cpu/data_master Expansion_JP2/avalon_parallel_port_slave arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = Expansion_JP2_avalon_parallel_port_slave_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //Expansion_JP2_avalon_parallel_port_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign Expansion_JP2_avalon_parallel_port_slave_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_Expansion_JP2_avalon_parallel_port_slave = cpu_data_master_requests_Expansion_JP2_avalon_parallel_port_slave & ~((cpu_data_master_read & ((|cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave_shift_register))) | ((~cpu_data_master_waitrequest) & cpu_data_master_write));
  //cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave_shift_register_in = cpu_data_master_granted_Expansion_JP2_avalon_parallel_port_slave & cpu_data_master_read & ~Expansion_JP2_avalon_parallel_port_slave_waits_for_read & ~(|cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave_shift_register);

  //shift register p1 cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave_shift_register = {cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave_shift_register, cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave_shift_register_in};

  //cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave_shift_register <= 0;
      else if (1)
          cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave_shift_register <= p1_cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave_shift_register;
    end


  //local readdatavalid cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave, which is an e_mux
  assign cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave = cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave_shift_register;

  //Expansion_JP2_avalon_parallel_port_slave_writedata mux, which is an e_mux
  assign Expansion_JP2_avalon_parallel_port_slave_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_Expansion_JP2_avalon_parallel_port_slave = cpu_data_master_qualified_request_Expansion_JP2_avalon_parallel_port_slave;

  //cpu/data_master saved-grant Expansion_JP2/avalon_parallel_port_slave, which is an e_assign
  assign cpu_data_master_saved_grant_Expansion_JP2_avalon_parallel_port_slave = cpu_data_master_requests_Expansion_JP2_avalon_parallel_port_slave;

  //allow new arb cycle for Expansion_JP2/avalon_parallel_port_slave, which is an e_assign
  assign Expansion_JP2_avalon_parallel_port_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign Expansion_JP2_avalon_parallel_port_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign Expansion_JP2_avalon_parallel_port_slave_master_qreq_vector = 1;

  assign Expansion_JP2_avalon_parallel_port_slave_chipselect = cpu_data_master_granted_Expansion_JP2_avalon_parallel_port_slave;
  //Expansion_JP2_avalon_parallel_port_slave_firsttransfer first transaction, which is an e_assign
  assign Expansion_JP2_avalon_parallel_port_slave_firsttransfer = Expansion_JP2_avalon_parallel_port_slave_begins_xfer ? Expansion_JP2_avalon_parallel_port_slave_unreg_firsttransfer : Expansion_JP2_avalon_parallel_port_slave_reg_firsttransfer;

  //Expansion_JP2_avalon_parallel_port_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign Expansion_JP2_avalon_parallel_port_slave_unreg_firsttransfer = ~(Expansion_JP2_avalon_parallel_port_slave_slavearbiterlockenable & Expansion_JP2_avalon_parallel_port_slave_any_continuerequest);

  //Expansion_JP2_avalon_parallel_port_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Expansion_JP2_avalon_parallel_port_slave_reg_firsttransfer <= 1'b1;
      else if (Expansion_JP2_avalon_parallel_port_slave_begins_xfer)
          Expansion_JP2_avalon_parallel_port_slave_reg_firsttransfer <= Expansion_JP2_avalon_parallel_port_slave_unreg_firsttransfer;
    end


  //Expansion_JP2_avalon_parallel_port_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign Expansion_JP2_avalon_parallel_port_slave_beginbursttransfer_internal = Expansion_JP2_avalon_parallel_port_slave_begins_xfer;

  //Expansion_JP2_avalon_parallel_port_slave_read assignment, which is an e_mux
  assign Expansion_JP2_avalon_parallel_port_slave_read = cpu_data_master_granted_Expansion_JP2_avalon_parallel_port_slave & cpu_data_master_read;

  //Expansion_JP2_avalon_parallel_port_slave_write assignment, which is an e_mux
  assign Expansion_JP2_avalon_parallel_port_slave_write = cpu_data_master_granted_Expansion_JP2_avalon_parallel_port_slave & cpu_data_master_write;

  assign shifted_address_to_Expansion_JP2_avalon_parallel_port_slave_from_cpu_data_master = cpu_data_master_address_to_slave;
  //Expansion_JP2_avalon_parallel_port_slave_address mux, which is an e_mux
  assign Expansion_JP2_avalon_parallel_port_slave_address = shifted_address_to_Expansion_JP2_avalon_parallel_port_slave_from_cpu_data_master >> 2;

  //d1_Expansion_JP2_avalon_parallel_port_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_Expansion_JP2_avalon_parallel_port_slave_end_xfer <= 1;
      else if (1)
          d1_Expansion_JP2_avalon_parallel_port_slave_end_xfer <= Expansion_JP2_avalon_parallel_port_slave_end_xfer;
    end


  //Expansion_JP2_avalon_parallel_port_slave_waits_for_read in a cycle, which is an e_mux
  assign Expansion_JP2_avalon_parallel_port_slave_waits_for_read = Expansion_JP2_avalon_parallel_port_slave_in_a_read_cycle & 0;

  //Expansion_JP2_avalon_parallel_port_slave_in_a_read_cycle assignment, which is an e_assign
  assign Expansion_JP2_avalon_parallel_port_slave_in_a_read_cycle = cpu_data_master_granted_Expansion_JP2_avalon_parallel_port_slave & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = Expansion_JP2_avalon_parallel_port_slave_in_a_read_cycle;

  //Expansion_JP2_avalon_parallel_port_slave_waits_for_write in a cycle, which is an e_mux
  assign Expansion_JP2_avalon_parallel_port_slave_waits_for_write = Expansion_JP2_avalon_parallel_port_slave_in_a_write_cycle & 0;

  //Expansion_JP2_avalon_parallel_port_slave_in_a_write_cycle assignment, which is an e_assign
  assign Expansion_JP2_avalon_parallel_port_slave_in_a_write_cycle = cpu_data_master_granted_Expansion_JP2_avalon_parallel_port_slave & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = Expansion_JP2_avalon_parallel_port_slave_in_a_write_cycle;

  assign wait_for_Expansion_JP2_avalon_parallel_port_slave_counter = 0;
  //Expansion_JP2_avalon_parallel_port_slave_byteenable byte enable port mux, which is an e_mux
  assign Expansion_JP2_avalon_parallel_port_slave_byteenable = (cpu_data_master_granted_Expansion_JP2_avalon_parallel_port_slave)? cpu_data_master_byteenable :
    -1;

  //assign Expansion_JP2_avalon_parallel_port_slave_irq_from_sa = Expansion_JP2_avalon_parallel_port_slave_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Expansion_JP2_avalon_parallel_port_slave_irq_from_sa = Expansion_JP2_avalon_parallel_port_slave_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //Expansion_JP2/avalon_parallel_port_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else if (1)
          enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module Green_LEDs_avalon_parallel_port_slave_arbitrator (
                                                          // inputs:
                                                           Green_LEDs_avalon_parallel_port_slave_readdata,
                                                           clk,
                                                           cpu_data_master_address_to_slave,
                                                           cpu_data_master_byteenable,
                                                           cpu_data_master_read,
                                                           cpu_data_master_waitrequest,
                                                           cpu_data_master_write,
                                                           cpu_data_master_writedata,
                                                           reset_n,

                                                          // outputs:
                                                           Green_LEDs_avalon_parallel_port_slave_address,
                                                           Green_LEDs_avalon_parallel_port_slave_byteenable,
                                                           Green_LEDs_avalon_parallel_port_slave_chipselect,
                                                           Green_LEDs_avalon_parallel_port_slave_read,
                                                           Green_LEDs_avalon_parallel_port_slave_readdata_from_sa,
                                                           Green_LEDs_avalon_parallel_port_slave_write,
                                                           Green_LEDs_avalon_parallel_port_slave_writedata,
                                                           cpu_data_master_granted_Green_LEDs_avalon_parallel_port_slave,
                                                           cpu_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave,
                                                           cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave,
                                                           cpu_data_master_requests_Green_LEDs_avalon_parallel_port_slave,
                                                           d1_Green_LEDs_avalon_parallel_port_slave_end_xfer,
                                                           registered_cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave
                                                        )
  /* synthesis auto_dissolve = "FALSE" */ ;

  output  [  1: 0] Green_LEDs_avalon_parallel_port_slave_address;
  output  [  3: 0] Green_LEDs_avalon_parallel_port_slave_byteenable;
  output           Green_LEDs_avalon_parallel_port_slave_chipselect;
  output           Green_LEDs_avalon_parallel_port_slave_read;
  output  [ 31: 0] Green_LEDs_avalon_parallel_port_slave_readdata_from_sa;
  output           Green_LEDs_avalon_parallel_port_slave_write;
  output  [ 31: 0] Green_LEDs_avalon_parallel_port_slave_writedata;
  output           cpu_data_master_granted_Green_LEDs_avalon_parallel_port_slave;
  output           cpu_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave;
  output           cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave;
  output           cpu_data_master_requests_Green_LEDs_avalon_parallel_port_slave;
  output           d1_Green_LEDs_avalon_parallel_port_slave_end_xfer;
  output           registered_cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave;
  input   [ 31: 0] Green_LEDs_avalon_parallel_port_slave_readdata;
  input            clk;
  input   [ 28: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;

  wire    [  1: 0] Green_LEDs_avalon_parallel_port_slave_address;
  wire             Green_LEDs_avalon_parallel_port_slave_allgrants;
  wire             Green_LEDs_avalon_parallel_port_slave_allow_new_arb_cycle;
  wire             Green_LEDs_avalon_parallel_port_slave_any_bursting_master_saved_grant;
  wire             Green_LEDs_avalon_parallel_port_slave_any_continuerequest;
  wire             Green_LEDs_avalon_parallel_port_slave_arb_counter_enable;
  reg     [  1: 0] Green_LEDs_avalon_parallel_port_slave_arb_share_counter;
  wire    [  1: 0] Green_LEDs_avalon_parallel_port_slave_arb_share_counter_next_value;
  wire    [  1: 0] Green_LEDs_avalon_parallel_port_slave_arb_share_set_values;
  wire             Green_LEDs_avalon_parallel_port_slave_beginbursttransfer_internal;
  wire             Green_LEDs_avalon_parallel_port_slave_begins_xfer;
  wire    [  3: 0] Green_LEDs_avalon_parallel_port_slave_byteenable;
  wire             Green_LEDs_avalon_parallel_port_slave_chipselect;
  wire             Green_LEDs_avalon_parallel_port_slave_end_xfer;
  wire             Green_LEDs_avalon_parallel_port_slave_firsttransfer;
  wire             Green_LEDs_avalon_parallel_port_slave_grant_vector;
  wire             Green_LEDs_avalon_parallel_port_slave_in_a_read_cycle;
  wire             Green_LEDs_avalon_parallel_port_slave_in_a_write_cycle;
  wire             Green_LEDs_avalon_parallel_port_slave_master_qreq_vector;
  wire             Green_LEDs_avalon_parallel_port_slave_non_bursting_master_requests;
  wire             Green_LEDs_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Green_LEDs_avalon_parallel_port_slave_readdata_from_sa;
  reg              Green_LEDs_avalon_parallel_port_slave_reg_firsttransfer;
  reg              Green_LEDs_avalon_parallel_port_slave_slavearbiterlockenable;
  wire             Green_LEDs_avalon_parallel_port_slave_slavearbiterlockenable2;
  wire             Green_LEDs_avalon_parallel_port_slave_unreg_firsttransfer;
  wire             Green_LEDs_avalon_parallel_port_slave_waits_for_read;
  wire             Green_LEDs_avalon_parallel_port_slave_waits_for_write;
  wire             Green_LEDs_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Green_LEDs_avalon_parallel_port_slave_writedata;
  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_Green_LEDs_avalon_parallel_port_slave;
  wire             cpu_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave;
  wire             cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave;
  reg              cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register;
  wire             cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register_in;
  wire             cpu_data_master_requests_Green_LEDs_avalon_parallel_port_slave;
  wire             cpu_data_master_saved_grant_Green_LEDs_avalon_parallel_port_slave;
  reg              d1_Green_LEDs_avalon_parallel_port_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_Green_LEDs_avalon_parallel_port_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             p1_cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register;
  wire             registered_cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave;
  wire    [ 28: 0] shifted_address_to_Green_LEDs_avalon_parallel_port_slave_from_cpu_data_master;
  wire             wait_for_Green_LEDs_avalon_parallel_port_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else if (1)
          d1_reasons_to_wait <= ~Green_LEDs_avalon_parallel_port_slave_end_xfer;
    end


  assign Green_LEDs_avalon_parallel_port_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave));
  //assign Green_LEDs_avalon_parallel_port_slave_readdata_from_sa = Green_LEDs_avalon_parallel_port_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_readdata_from_sa = Green_LEDs_avalon_parallel_port_slave_readdata;

  assign cpu_data_master_requests_Green_LEDs_avalon_parallel_port_slave = ({cpu_data_master_address_to_slave[28 : 4] , 4'b0} == 29'h10000010) & (cpu_data_master_read | cpu_data_master_write);
  //registered rdv signal_name registered_cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave assignment, which is an e_assign
  assign registered_cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave = cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register_in;

  //Green_LEDs_avalon_parallel_port_slave_arb_share_counter set values, which is an e_mux
  assign Green_LEDs_avalon_parallel_port_slave_arb_share_set_values = 1;

  //Green_LEDs_avalon_parallel_port_slave_non_bursting_master_requests mux, which is an e_mux
  assign Green_LEDs_avalon_parallel_port_slave_non_bursting_master_requests = cpu_data_master_requests_Green_LEDs_avalon_parallel_port_slave;

  //Green_LEDs_avalon_parallel_port_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign Green_LEDs_avalon_parallel_port_slave_any_bursting_master_saved_grant = 0;

  //Green_LEDs_avalon_parallel_port_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_arb_share_counter_next_value = Green_LEDs_avalon_parallel_port_slave_firsttransfer ? (Green_LEDs_avalon_parallel_port_slave_arb_share_set_values - 1) : |Green_LEDs_avalon_parallel_port_slave_arb_share_counter ? (Green_LEDs_avalon_parallel_port_slave_arb_share_counter - 1) : 0;

  //Green_LEDs_avalon_parallel_port_slave_allgrants all slave grants, which is an e_mux
  assign Green_LEDs_avalon_parallel_port_slave_allgrants = |Green_LEDs_avalon_parallel_port_slave_grant_vector;

  //Green_LEDs_avalon_parallel_port_slave_end_xfer assignment, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_end_xfer = ~(Green_LEDs_avalon_parallel_port_slave_waits_for_read | Green_LEDs_avalon_parallel_port_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_Green_LEDs_avalon_parallel_port_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_Green_LEDs_avalon_parallel_port_slave = Green_LEDs_avalon_parallel_port_slave_end_xfer & (~Green_LEDs_avalon_parallel_port_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //Green_LEDs_avalon_parallel_port_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_Green_LEDs_avalon_parallel_port_slave & Green_LEDs_avalon_parallel_port_slave_allgrants) | (end_xfer_arb_share_counter_term_Green_LEDs_avalon_parallel_port_slave & ~Green_LEDs_avalon_parallel_port_slave_non_bursting_master_requests);

  //Green_LEDs_avalon_parallel_port_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Green_LEDs_avalon_parallel_port_slave_arb_share_counter <= 0;
      else if (Green_LEDs_avalon_parallel_port_slave_arb_counter_enable)
          Green_LEDs_avalon_parallel_port_slave_arb_share_counter <= Green_LEDs_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //Green_LEDs_avalon_parallel_port_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Green_LEDs_avalon_parallel_port_slave_slavearbiterlockenable <= 0;
      else if ((|Green_LEDs_avalon_parallel_port_slave_master_qreq_vector & end_xfer_arb_share_counter_term_Green_LEDs_avalon_parallel_port_slave) | (end_xfer_arb_share_counter_term_Green_LEDs_avalon_parallel_port_slave & ~Green_LEDs_avalon_parallel_port_slave_non_bursting_master_requests))
          Green_LEDs_avalon_parallel_port_slave_slavearbiterlockenable <= |Green_LEDs_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //cpu/data_master Green_LEDs/avalon_parallel_port_slave arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = Green_LEDs_avalon_parallel_port_slave_slavearbiterlockenable & cpu_data_master_continuerequest;

  //Green_LEDs_avalon_parallel_port_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_slavearbiterlockenable2 = |Green_LEDs_avalon_parallel_port_slave_arb_share_counter_next_value;

  //cpu/data_master Green_LEDs/avalon_parallel_port_slave arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = Green_LEDs_avalon_parallel_port_slave_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //Green_LEDs_avalon_parallel_port_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave = cpu_data_master_requests_Green_LEDs_avalon_parallel_port_slave & ~((cpu_data_master_read & ((|cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register))) | ((~cpu_data_master_waitrequest) & cpu_data_master_write));
  //cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register_in = cpu_data_master_granted_Green_LEDs_avalon_parallel_port_slave & cpu_data_master_read & ~Green_LEDs_avalon_parallel_port_slave_waits_for_read & ~(|cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register);

  //shift register p1 cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register = {cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register, cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register_in};

  //cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register <= 0;
      else if (1)
          cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register <= p1_cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register;
    end


  //local readdatavalid cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave, which is an e_mux
  assign cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave = cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave_shift_register;

  //Green_LEDs_avalon_parallel_port_slave_writedata mux, which is an e_mux
  assign Green_LEDs_avalon_parallel_port_slave_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_Green_LEDs_avalon_parallel_port_slave = cpu_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave;

  //cpu/data_master saved-grant Green_LEDs/avalon_parallel_port_slave, which is an e_assign
  assign cpu_data_master_saved_grant_Green_LEDs_avalon_parallel_port_slave = cpu_data_master_requests_Green_LEDs_avalon_parallel_port_slave;

  //allow new arb cycle for Green_LEDs/avalon_parallel_port_slave, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign Green_LEDs_avalon_parallel_port_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign Green_LEDs_avalon_parallel_port_slave_master_qreq_vector = 1;

  assign Green_LEDs_avalon_parallel_port_slave_chipselect = cpu_data_master_granted_Green_LEDs_avalon_parallel_port_slave;
  //Green_LEDs_avalon_parallel_port_slave_firsttransfer first transaction, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_firsttransfer = Green_LEDs_avalon_parallel_port_slave_begins_xfer ? Green_LEDs_avalon_parallel_port_slave_unreg_firsttransfer : Green_LEDs_avalon_parallel_port_slave_reg_firsttransfer;

  //Green_LEDs_avalon_parallel_port_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_unreg_firsttransfer = ~(Green_LEDs_avalon_parallel_port_slave_slavearbiterlockenable & Green_LEDs_avalon_parallel_port_slave_any_continuerequest);

  //Green_LEDs_avalon_parallel_port_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Green_LEDs_avalon_parallel_port_slave_reg_firsttransfer <= 1'b1;
      else if (Green_LEDs_avalon_parallel_port_slave_begins_xfer)
          Green_LEDs_avalon_parallel_port_slave_reg_firsttransfer <= Green_LEDs_avalon_parallel_port_slave_unreg_firsttransfer;
    end


  //Green_LEDs_avalon_parallel_port_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_beginbursttransfer_internal = Green_LEDs_avalon_parallel_port_slave_begins_xfer;

  //Green_LEDs_avalon_parallel_port_slave_read assignment, which is an e_mux
  assign Green_LEDs_avalon_parallel_port_slave_read = cpu_data_master_granted_Green_LEDs_avalon_parallel_port_slave & cpu_data_master_read;

  //Green_LEDs_avalon_parallel_port_slave_write assignment, which is an e_mux
  assign Green_LEDs_avalon_parallel_port_slave_write = cpu_data_master_granted_Green_LEDs_avalon_parallel_port_slave & cpu_data_master_write;

  assign shifted_address_to_Green_LEDs_avalon_parallel_port_slave_from_cpu_data_master = cpu_data_master_address_to_slave;
  //Green_LEDs_avalon_parallel_port_slave_address mux, which is an e_mux
  assign Green_LEDs_avalon_parallel_port_slave_address = shifted_address_to_Green_LEDs_avalon_parallel_port_slave_from_cpu_data_master >> 2;

  //d1_Green_LEDs_avalon_parallel_port_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_Green_LEDs_avalon_parallel_port_slave_end_xfer <= 1;
      else if (1)
          d1_Green_LEDs_avalon_parallel_port_slave_end_xfer <= Green_LEDs_avalon_parallel_port_slave_end_xfer;
    end


  //Green_LEDs_avalon_parallel_port_slave_waits_for_read in a cycle, which is an e_mux
  assign Green_LEDs_avalon_parallel_port_slave_waits_for_read = Green_LEDs_avalon_parallel_port_slave_in_a_read_cycle & 0;

  //Green_LEDs_avalon_parallel_port_slave_in_a_read_cycle assignment, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_in_a_read_cycle = cpu_data_master_granted_Green_LEDs_avalon_parallel_port_slave & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = Green_LEDs_avalon_parallel_port_slave_in_a_read_cycle;

  //Green_LEDs_avalon_parallel_port_slave_waits_for_write in a cycle, which is an e_mux
  assign Green_LEDs_avalon_parallel_port_slave_waits_for_write = Green_LEDs_avalon_parallel_port_slave_in_a_write_cycle & 0;

  //Green_LEDs_avalon_parallel_port_slave_in_a_write_cycle assignment, which is an e_assign
  assign Green_LEDs_avalon_parallel_port_slave_in_a_write_cycle = cpu_data_master_granted_Green_LEDs_avalon_parallel_port_slave & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = Green_LEDs_avalon_parallel_port_slave_in_a_write_cycle;

  assign wait_for_Green_LEDs_avalon_parallel_port_slave_counter = 0;
  //Green_LEDs_avalon_parallel_port_slave_byteenable byte enable port mux, which is an e_mux
  assign Green_LEDs_avalon_parallel_port_slave_byteenable = (cpu_data_master_granted_Green_LEDs_avalon_parallel_port_slave)? cpu_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //Green_LEDs/avalon_parallel_port_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else if (1)
          enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module HEX3_HEX0_avalon_parallel_port_slave_arbitrator (
                                                         // inputs:
                                                          HEX3_HEX0_avalon_parallel_port_slave_readdata,
                                                          clk,
                                                          cpu_data_master_address_to_slave,
                                                          cpu_data_master_byteenable,
                                                          cpu_data_master_read,
                                                          cpu_data_master_waitrequest,
                                                          cpu_data_master_write,
                                                          cpu_data_master_writedata,
                                                          reset_n,

                                                         // outputs:
                                                          HEX3_HEX0_avalon_parallel_port_slave_address,
                                                          HEX3_HEX0_avalon_parallel_port_slave_byteenable,
                                                          HEX3_HEX0_avalon_parallel_port_slave_chipselect,
                                                          HEX3_HEX0_avalon_parallel_port_slave_read,
                                                          HEX3_HEX0_avalon_parallel_port_slave_readdata_from_sa,
                                                          HEX3_HEX0_avalon_parallel_port_slave_write,
                                                          HEX3_HEX0_avalon_parallel_port_slave_writedata,
                                                          cpu_data_master_granted_HEX3_HEX0_avalon_parallel_port_slave,
                                                          cpu_data_master_qualified_request_HEX3_HEX0_avalon_parallel_port_slave,
                                                          cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave,
                                                          cpu_data_master_requests_HEX3_HEX0_avalon_parallel_port_slave,
                                                          d1_HEX3_HEX0_avalon_parallel_port_slave_end_xfer,
                                                          registered_cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave
                                                       )
  /* synthesis auto_dissolve = "FALSE" */ ;

  output  [  1: 0] HEX3_HEX0_avalon_parallel_port_slave_address;
  output  [  3: 0] HEX3_HEX0_avalon_parallel_port_slave_byteenable;
  output           HEX3_HEX0_avalon_parallel_port_slave_chipselect;
  output           HEX3_HEX0_avalon_parallel_port_slave_read;
  output  [ 31: 0] HEX3_HEX0_avalon_parallel_port_slave_readdata_from_sa;
  output           HEX3_HEX0_avalon_parallel_port_slave_write;
  output  [ 31: 0] HEX3_HEX0_avalon_parallel_port_slave_writedata;
  output           cpu_data_master_granted_HEX3_HEX0_avalon_parallel_port_slave;
  output           cpu_data_master_qualified_request_HEX3_HEX0_avalon_parallel_port_slave;
  output           cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave;
  output           cpu_data_master_requests_HEX3_HEX0_avalon_parallel_port_slave;
  output           d1_HEX3_HEX0_avalon_parallel_port_slave_end_xfer;
  output           registered_cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave;
  input   [ 31: 0] HEX3_HEX0_avalon_parallel_port_slave_readdata;
  input            clk;
  input   [ 28: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;

  wire    [  1: 0] HEX3_HEX0_avalon_parallel_port_slave_address;
  wire             HEX3_HEX0_avalon_parallel_port_slave_allgrants;
  wire             HEX3_HEX0_avalon_parallel_port_slave_allow_new_arb_cycle;
  wire             HEX3_HEX0_avalon_parallel_port_slave_any_bursting_master_saved_grant;
  wire             HEX3_HEX0_avalon_parallel_port_slave_any_continuerequest;
  wire             HEX3_HEX0_avalon_parallel_port_slave_arb_counter_enable;
  reg     [  1: 0] HEX3_HEX0_avalon_parallel_port_slave_arb_share_counter;
  wire    [  1: 0] HEX3_HEX0_avalon_parallel_port_slave_arb_share_counter_next_value;
  wire    [  1: 0] HEX3_HEX0_avalon_parallel_port_slave_arb_share_set_values;
  wire             HEX3_HEX0_avalon_parallel_port_slave_beginbursttransfer_internal;
  wire             HEX3_HEX0_avalon_parallel_port_slave_begins_xfer;
  wire    [  3: 0] HEX3_HEX0_avalon_parallel_port_slave_byteenable;
  wire             HEX3_HEX0_avalon_parallel_port_slave_chipselect;
  wire             HEX3_HEX0_avalon_parallel_port_slave_end_xfer;
  wire             HEX3_HEX0_avalon_parallel_port_slave_firsttransfer;
  wire             HEX3_HEX0_avalon_parallel_port_slave_grant_vector;
  wire             HEX3_HEX0_avalon_parallel_port_slave_in_a_read_cycle;
  wire             HEX3_HEX0_avalon_parallel_port_slave_in_a_write_cycle;
  wire             HEX3_HEX0_avalon_parallel_port_slave_master_qreq_vector;
  wire             HEX3_HEX0_avalon_parallel_port_slave_non_bursting_master_requests;
  wire             HEX3_HEX0_avalon_parallel_port_slave_read;
  wire    [ 31: 0] HEX3_HEX0_avalon_parallel_port_slave_readdata_from_sa;
  reg              HEX3_HEX0_avalon_parallel_port_slave_reg_firsttransfer;
  reg              HEX3_HEX0_avalon_parallel_port_slave_slavearbiterlockenable;
  wire             HEX3_HEX0_avalon_parallel_port_slave_slavearbiterlockenable2;
  wire             HEX3_HEX0_avalon_parallel_port_slave_unreg_firsttransfer;
  wire             HEX3_HEX0_avalon_parallel_port_slave_waits_for_read;
  wire             HEX3_HEX0_avalon_parallel_port_slave_waits_for_write;
  wire             HEX3_HEX0_avalon_parallel_port_slave_write;
  wire    [ 31: 0] HEX3_HEX0_avalon_parallel_port_slave_writedata;
  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_HEX3_HEX0_avalon_parallel_port_slave;
  wire             cpu_data_master_qualified_request_HEX3_HEX0_avalon_parallel_port_slave;
  wire             cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave;
  reg              cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave_shift_register;
  wire             cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave_shift_register_in;
  wire             cpu_data_master_requests_HEX3_HEX0_avalon_parallel_port_slave;
  wire             cpu_data_master_saved_grant_HEX3_HEX0_avalon_parallel_port_slave;
  reg              d1_HEX3_HEX0_avalon_parallel_port_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_HEX3_HEX0_avalon_parallel_port_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             p1_cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave_shift_register;
  wire             registered_cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave;
  wire    [ 28: 0] shifted_address_to_HEX3_HEX0_avalon_parallel_port_slave_from_cpu_data_master;
  wire             wait_for_HEX3_HEX0_avalon_parallel_port_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else if (1)
          d1_reasons_to_wait <= ~HEX3_HEX0_avalon_parallel_port_slave_end_xfer;
    end


  assign HEX3_HEX0_avalon_parallel_port_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_HEX3_HEX0_avalon_parallel_port_slave));
  //assign HEX3_HEX0_avalon_parallel_port_slave_readdata_from_sa = HEX3_HEX0_avalon_parallel_port_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign HEX3_HEX0_avalon_parallel_port_slave_readdata_from_sa = HEX3_HEX0_avalon_parallel_port_slave_readdata;

  assign cpu_data_master_requests_HEX3_HEX0_avalon_parallel_port_slave = ({cpu_data_master_address_to_slave[28 : 4] , 4'b0} == 29'h10000020) & (cpu_data_master_read | cpu_data_master_write);
  //registered rdv signal_name registered_cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave assignment, which is an e_assign
  assign registered_cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave = cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave_shift_register_in;

  //HEX3_HEX0_avalon_parallel_port_slave_arb_share_counter set values, which is an e_mux
  assign HEX3_HEX0_avalon_parallel_port_slave_arb_share_set_values = 1;

  //HEX3_HEX0_avalon_parallel_port_slave_non_bursting_master_requests mux, which is an e_mux
  assign HEX3_HEX0_avalon_parallel_port_slave_non_bursting_master_requests = cpu_data_master_requests_HEX3_HEX0_avalon_parallel_port_slave;

  //HEX3_HEX0_avalon_parallel_port_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign HEX3_HEX0_avalon_parallel_port_slave_any_bursting_master_saved_grant = 0;

  //HEX3_HEX0_avalon_parallel_port_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign HEX3_HEX0_avalon_parallel_port_slave_arb_share_counter_next_value = HEX3_HEX0_avalon_parallel_port_slave_firsttransfer ? (HEX3_HEX0_avalon_parallel_port_slave_arb_share_set_values - 1) : |HEX3_HEX0_avalon_parallel_port_slave_arb_share_counter ? (HEX3_HEX0_avalon_parallel_port_slave_arb_share_counter - 1) : 0;

  //HEX3_HEX0_avalon_parallel_port_slave_allgrants all slave grants, which is an e_mux
  assign HEX3_HEX0_avalon_parallel_port_slave_allgrants = |HEX3_HEX0_avalon_parallel_port_slave_grant_vector;

  //HEX3_HEX0_avalon_parallel_port_slave_end_xfer assignment, which is an e_assign
  assign HEX3_HEX0_avalon_parallel_port_slave_end_xfer = ~(HEX3_HEX0_avalon_parallel_port_slave_waits_for_read | HEX3_HEX0_avalon_parallel_port_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_HEX3_HEX0_avalon_parallel_port_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_HEX3_HEX0_avalon_parallel_port_slave = HEX3_HEX0_avalon_parallel_port_slave_end_xfer & (~HEX3_HEX0_avalon_parallel_port_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //HEX3_HEX0_avalon_parallel_port_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign HEX3_HEX0_avalon_parallel_port_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_HEX3_HEX0_avalon_parallel_port_slave & HEX3_HEX0_avalon_parallel_port_slave_allgrants) | (end_xfer_arb_share_counter_term_HEX3_HEX0_avalon_parallel_port_slave & ~HEX3_HEX0_avalon_parallel_port_slave_non_bursting_master_requests);

  //HEX3_HEX0_avalon_parallel_port_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          HEX3_HEX0_avalon_parallel_port_slave_arb_share_counter <= 0;
      else if (HEX3_HEX0_avalon_parallel_port_slave_arb_counter_enable)
          HEX3_HEX0_avalon_parallel_port_slave_arb_share_counter <= HEX3_HEX0_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //HEX3_HEX0_avalon_parallel_port_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          HEX3_HEX0_avalon_parallel_port_slave_slavearbiterlockenable <= 0;
      else if ((|HEX3_HEX0_avalon_parallel_port_slave_master_qreq_vector & end_xfer_arb_share_counter_term_HEX3_HEX0_avalon_parallel_port_slave) | (end_xfer_arb_share_counter_term_HEX3_HEX0_avalon_parallel_port_slave & ~HEX3_HEX0_avalon_parallel_port_slave_non_bursting_master_requests))
          HEX3_HEX0_avalon_parallel_port_slave_slavearbiterlockenable <= |HEX3_HEX0_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //cpu/data_master HEX3_HEX0/avalon_parallel_port_slave arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = HEX3_HEX0_avalon_parallel_port_slave_slavearbiterlockenable & cpu_data_master_continuerequest;

  //HEX3_HEX0_avalon_parallel_port_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign HEX3_HEX0_avalon_parallel_port_slave_slavearbiterlockenable2 = |HEX3_HEX0_avalon_parallel_port_slave_arb_share_counter_next_value;

  //cpu/data_master HEX3_HEX0/avalon_parallel_port_slave arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = HEX3_HEX0_avalon_parallel_port_slave_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //HEX3_HEX0_avalon_parallel_port_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign HEX3_HEX0_avalon_parallel_port_slave_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_HEX3_HEX0_avalon_parallel_port_slave = cpu_data_master_requests_HEX3_HEX0_avalon_parallel_port_slave & ~((cpu_data_master_read & ((|cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave_shift_register))) | ((~cpu_data_master_waitrequest) & cpu_data_master_write));
  //cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave_shift_register_in = cpu_data_master_granted_HEX3_HEX0_avalon_parallel_port_slave & cpu_data_master_read & ~HEX3_HEX0_avalon_parallel_port_slave_waits_for_read & ~(|cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave_shift_register);

  //shift register p1 cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave_shift_register = {cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave_shift_register, cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave_shift_register_in};

  //cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave_shift_register <= 0;
      else if (1)
          cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave_shift_register <= p1_cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave_shift_register;
    end


  //local readdatavalid cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave, which is an e_mux
  assign cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave = cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave_shift_register;

  //HEX3_HEX0_avalon_parallel_port_slave_writedata mux, which is an e_mux
  assign HEX3_HEX0_avalon_parallel_port_slave_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_HEX3_HEX0_avalon_parallel_port_slave = cpu_data_master_qualified_request_HEX3_HEX0_avalon_parallel_port_slave;

  //cpu/data_master saved-grant HEX3_HEX0/avalon_parallel_port_slave, which is an e_assign
  assign cpu_data_master_saved_grant_HEX3_HEX0_avalon_parallel_port_slave = cpu_data_master_requests_HEX3_HEX0_avalon_parallel_port_slave;

  //allow new arb cycle for HEX3_HEX0/avalon_parallel_port_slave, which is an e_assign
  assign HEX3_HEX0_avalon_parallel_port_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign HEX3_HEX0_avalon_parallel_port_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign HEX3_HEX0_avalon_parallel_port_slave_master_qreq_vector = 1;

  assign HEX3_HEX0_avalon_parallel_port_slave_chipselect = cpu_data_master_granted_HEX3_HEX0_avalon_parallel_port_slave;
  //HEX3_HEX0_avalon_parallel_port_slave_firsttransfer first transaction, which is an e_assign
  assign HEX3_HEX0_avalon_parallel_port_slave_firsttransfer = HEX3_HEX0_avalon_parallel_port_slave_begins_xfer ? HEX3_HEX0_avalon_parallel_port_slave_unreg_firsttransfer : HEX3_HEX0_avalon_parallel_port_slave_reg_firsttransfer;

  //HEX3_HEX0_avalon_parallel_port_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign HEX3_HEX0_avalon_parallel_port_slave_unreg_firsttransfer = ~(HEX3_HEX0_avalon_parallel_port_slave_slavearbiterlockenable & HEX3_HEX0_avalon_parallel_port_slave_any_continuerequest);

  //HEX3_HEX0_avalon_parallel_port_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          HEX3_HEX0_avalon_parallel_port_slave_reg_firsttransfer <= 1'b1;
      else if (HEX3_HEX0_avalon_parallel_port_slave_begins_xfer)
          HEX3_HEX0_avalon_parallel_port_slave_reg_firsttransfer <= HEX3_HEX0_avalon_parallel_port_slave_unreg_firsttransfer;
    end


  //HEX3_HEX0_avalon_parallel_port_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign HEX3_HEX0_avalon_parallel_port_slave_beginbursttransfer_internal = HEX3_HEX0_avalon_parallel_port_slave_begins_xfer;

  //HEX3_HEX0_avalon_parallel_port_slave_read assignment, which is an e_mux
  assign HEX3_HEX0_avalon_parallel_port_slave_read = cpu_data_master_granted_HEX3_HEX0_avalon_parallel_port_slave & cpu_data_master_read;

  //HEX3_HEX0_avalon_parallel_port_slave_write assignment, which is an e_mux
  assign HEX3_HEX0_avalon_parallel_port_slave_write = cpu_data_master_granted_HEX3_HEX0_avalon_parallel_port_slave & cpu_data_master_write;

  assign shifted_address_to_HEX3_HEX0_avalon_parallel_port_slave_from_cpu_data_master = cpu_data_master_address_to_slave;
  //HEX3_HEX0_avalon_parallel_port_slave_address mux, which is an e_mux
  assign HEX3_HEX0_avalon_parallel_port_slave_address = shifted_address_to_HEX3_HEX0_avalon_parallel_port_slave_from_cpu_data_master >> 2;

  //d1_HEX3_HEX0_avalon_parallel_port_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_HEX3_HEX0_avalon_parallel_port_slave_end_xfer <= 1;
      else if (1)
          d1_HEX3_HEX0_avalon_parallel_port_slave_end_xfer <= HEX3_HEX0_avalon_parallel_port_slave_end_xfer;
    end


  //HEX3_HEX0_avalon_parallel_port_slave_waits_for_read in a cycle, which is an e_mux
  assign HEX3_HEX0_avalon_parallel_port_slave_waits_for_read = HEX3_HEX0_avalon_parallel_port_slave_in_a_read_cycle & 0;

  //HEX3_HEX0_avalon_parallel_port_slave_in_a_read_cycle assignment, which is an e_assign
  assign HEX3_HEX0_avalon_parallel_port_slave_in_a_read_cycle = cpu_data_master_granted_HEX3_HEX0_avalon_parallel_port_slave & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = HEX3_HEX0_avalon_parallel_port_slave_in_a_read_cycle;

  //HEX3_HEX0_avalon_parallel_port_slave_waits_for_write in a cycle, which is an e_mux
  assign HEX3_HEX0_avalon_parallel_port_slave_waits_for_write = HEX3_HEX0_avalon_parallel_port_slave_in_a_write_cycle & 0;

  //HEX3_HEX0_avalon_parallel_port_slave_in_a_write_cycle assignment, which is an e_assign
  assign HEX3_HEX0_avalon_parallel_port_slave_in_a_write_cycle = cpu_data_master_granted_HEX3_HEX0_avalon_parallel_port_slave & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = HEX3_HEX0_avalon_parallel_port_slave_in_a_write_cycle;

  assign wait_for_HEX3_HEX0_avalon_parallel_port_slave_counter = 0;
  //HEX3_HEX0_avalon_parallel_port_slave_byteenable byte enable port mux, which is an e_mux
  assign HEX3_HEX0_avalon_parallel_port_slave_byteenable = (cpu_data_master_granted_HEX3_HEX0_avalon_parallel_port_slave)? cpu_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //HEX3_HEX0/avalon_parallel_port_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else if (1)
          enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module Interval_timer_s1_arbitrator (
                                      // inputs:
                                       Interval_timer_s1_irq,
                                       Interval_timer_s1_readdata,
                                       clk,
                                       cpu_data_master_address_to_slave,
                                       cpu_data_master_read,
                                       cpu_data_master_waitrequest,
                                       cpu_data_master_write,
                                       cpu_data_master_writedata,
                                       reset_n,

                                      // outputs:
                                       Interval_timer_s1_address,
                                       Interval_timer_s1_chipselect,
                                       Interval_timer_s1_irq_from_sa,
                                       Interval_timer_s1_readdata_from_sa,
                                       Interval_timer_s1_reset_n,
                                       Interval_timer_s1_write_n,
                                       Interval_timer_s1_writedata,
                                       cpu_data_master_granted_Interval_timer_s1,
                                       cpu_data_master_qualified_request_Interval_timer_s1,
                                       cpu_data_master_read_data_valid_Interval_timer_s1,
                                       cpu_data_master_requests_Interval_timer_s1,
                                       d1_Interval_timer_s1_end_xfer
                                    )
  /* synthesis auto_dissolve = "FALSE" */ ;

  output  [  2: 0] Interval_timer_s1_address;
  output           Interval_timer_s1_chipselect;
  output           Interval_timer_s1_irq_from_sa;
  output  [ 15: 0] Interval_timer_s1_readdata_from_sa;
  output           Interval_timer_s1_reset_n;
  output           Interval_timer_s1_write_n;
  output  [ 15: 0] Interval_timer_s1_writedata;
  output           cpu_data_master_granted_Interval_timer_s1;
  output           cpu_data_master_qualified_request_Interval_timer_s1;
  output           cpu_data_master_read_data_valid_Interval_timer_s1;
  output           cpu_data_master_requests_Interval_timer_s1;
  output           d1_Interval_timer_s1_end_xfer;
  input            Interval_timer_s1_irq;
  input   [ 15: 0] Interval_timer_s1_readdata;
  input            clk;
  input   [ 28: 0] cpu_data_master_address_to_slave;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;

  wire    [  2: 0] Interval_timer_s1_address;
  wire             Interval_timer_s1_allgrants;
  wire             Interval_timer_s1_allow_new_arb_cycle;
  wire             Interval_timer_s1_any_bursting_master_saved_grant;
  wire             Interval_timer_s1_any_continuerequest;
  wire             Interval_timer_s1_arb_counter_enable;
  reg     [  1: 0] Interval_timer_s1_arb_share_counter;
  wire    [  1: 0] Interval_timer_s1_arb_share_counter_next_value;
  wire    [  1: 0] Interval_timer_s1_arb_share_set_values;
  wire             Interval_timer_s1_beginbursttransfer_internal;
  wire             Interval_timer_s1_begins_xfer;
  wire             Interval_timer_s1_chipselect;
  wire             Interval_timer_s1_end_xfer;
  wire             Interval_timer_s1_firsttransfer;
  wire             Interval_timer_s1_grant_vector;
  wire             Interval_timer_s1_in_a_read_cycle;
  wire             Interval_timer_s1_in_a_write_cycle;
  wire             Interval_timer_s1_irq_from_sa;
  wire             Interval_timer_s1_master_qreq_vector;
  wire             Interval_timer_s1_non_bursting_master_requests;
  wire    [ 15: 0] Interval_timer_s1_readdata_from_sa;
  reg              Interval_timer_s1_reg_firsttransfer;
  wire             Interval_timer_s1_reset_n;
  reg              Interval_timer_s1_slavearbiterlockenable;
  wire             Interval_timer_s1_slavearbiterlockenable2;
  wire             Interval_timer_s1_unreg_firsttransfer;
  wire             Interval_timer_s1_waits_for_read;
  wire             Interval_timer_s1_waits_for_write;
  wire             Interval_timer_s1_write_n;
  wire    [ 15: 0] Interval_timer_s1_writedata;
  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_Interval_timer_s1;
  wire             cpu_data_master_qualified_request_Interval_timer_s1;
  wire             cpu_data_master_read_data_valid_Interval_timer_s1;
  wire             cpu_data_master_requests_Interval_timer_s1;
  wire             cpu_data_master_saved_grant_Interval_timer_s1;
  reg              d1_Interval_timer_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_Interval_timer_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 28: 0] shifted_address_to_Interval_timer_s1_from_cpu_data_master;
  wire             wait_for_Interval_timer_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else if (1)
          d1_reasons_to_wait <= ~Interval_timer_s1_end_xfer;
    end


  assign Interval_timer_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_Interval_timer_s1));
  //assign Interval_timer_s1_readdata_from_sa = Interval_timer_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Interval_timer_s1_readdata_from_sa = Interval_timer_s1_readdata;

  assign cpu_data_master_requests_Interval_timer_s1 = ({cpu_data_master_address_to_slave[28 : 5] , 5'b0} == 29'h10002000) & (cpu_data_master_read | cpu_data_master_write);
  //Interval_timer_s1_arb_share_counter set values, which is an e_mux
  assign Interval_timer_s1_arb_share_set_values = 1;

  //Interval_timer_s1_non_bursting_master_requests mux, which is an e_mux
  assign Interval_timer_s1_non_bursting_master_requests = cpu_data_master_requests_Interval_timer_s1;

  //Interval_timer_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign Interval_timer_s1_any_bursting_master_saved_grant = 0;

  //Interval_timer_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign Interval_timer_s1_arb_share_counter_next_value = Interval_timer_s1_firsttransfer ? (Interval_timer_s1_arb_share_set_values - 1) : |Interval_timer_s1_arb_share_counter ? (Interval_timer_s1_arb_share_counter - 1) : 0;

  //Interval_timer_s1_allgrants all slave grants, which is an e_mux
  assign Interval_timer_s1_allgrants = |Interval_timer_s1_grant_vector;

  //Interval_timer_s1_end_xfer assignment, which is an e_assign
  assign Interval_timer_s1_end_xfer = ~(Interval_timer_s1_waits_for_read | Interval_timer_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_Interval_timer_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_Interval_timer_s1 = Interval_timer_s1_end_xfer & (~Interval_timer_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //Interval_timer_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign Interval_timer_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_Interval_timer_s1 & Interval_timer_s1_allgrants) | (end_xfer_arb_share_counter_term_Interval_timer_s1 & ~Interval_timer_s1_non_bursting_master_requests);

  //Interval_timer_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Interval_timer_s1_arb_share_counter <= 0;
      else if (Interval_timer_s1_arb_counter_enable)
          Interval_timer_s1_arb_share_counter <= Interval_timer_s1_arb_share_counter_next_value;
    end


  //Interval_timer_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Interval_timer_s1_slavearbiterlockenable <= 0;
      else if ((|Interval_timer_s1_master_qreq_vector & end_xfer_arb_share_counter_term_Interval_timer_s1) | (end_xfer_arb_share_counter_term_Interval_timer_s1 & ~Interval_timer_s1_non_bursting_master_requests))
          Interval_timer_s1_slavearbiterlockenable <= |Interval_timer_s1_arb_share_counter_next_value;
    end


  //cpu/data_master Interval_timer/s1 arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = Interval_timer_s1_slavearbiterlockenable & cpu_data_master_continuerequest;

  //Interval_timer_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign Interval_timer_s1_slavearbiterlockenable2 = |Interval_timer_s1_arb_share_counter_next_value;

  //cpu/data_master Interval_timer/s1 arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = Interval_timer_s1_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //Interval_timer_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign Interval_timer_s1_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_Interval_timer_s1 = cpu_data_master_requests_Interval_timer_s1 & ~(((~cpu_data_master_waitrequest) & cpu_data_master_write));
  //Interval_timer_s1_writedata mux, which is an e_mux
  assign Interval_timer_s1_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_Interval_timer_s1 = cpu_data_master_qualified_request_Interval_timer_s1;

  //cpu/data_master saved-grant Interval_timer/s1, which is an e_assign
  assign cpu_data_master_saved_grant_Interval_timer_s1 = cpu_data_master_requests_Interval_timer_s1;

  //allow new arb cycle for Interval_timer/s1, which is an e_assign
  assign Interval_timer_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign Interval_timer_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign Interval_timer_s1_master_qreq_vector = 1;

  //Interval_timer_s1_reset_n assignment, which is an e_assign
  assign Interval_timer_s1_reset_n = reset_n;

  assign Interval_timer_s1_chipselect = cpu_data_master_granted_Interval_timer_s1;
  //Interval_timer_s1_firsttransfer first transaction, which is an e_assign
  assign Interval_timer_s1_firsttransfer = Interval_timer_s1_begins_xfer ? Interval_timer_s1_unreg_firsttransfer : Interval_timer_s1_reg_firsttransfer;

  //Interval_timer_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign Interval_timer_s1_unreg_firsttransfer = ~(Interval_timer_s1_slavearbiterlockenable & Interval_timer_s1_any_continuerequest);

  //Interval_timer_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Interval_timer_s1_reg_firsttransfer <= 1'b1;
      else if (Interval_timer_s1_begins_xfer)
          Interval_timer_s1_reg_firsttransfer <= Interval_timer_s1_unreg_firsttransfer;
    end


  //Interval_timer_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign Interval_timer_s1_beginbursttransfer_internal = Interval_timer_s1_begins_xfer;

  //~Interval_timer_s1_write_n assignment, which is an e_mux
  assign Interval_timer_s1_write_n = ~(cpu_data_master_granted_Interval_timer_s1 & cpu_data_master_write);

  assign shifted_address_to_Interval_timer_s1_from_cpu_data_master = cpu_data_master_address_to_slave;
  //Interval_timer_s1_address mux, which is an e_mux
  assign Interval_timer_s1_address = shifted_address_to_Interval_timer_s1_from_cpu_data_master >> 2;

  //d1_Interval_timer_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_Interval_timer_s1_end_xfer <= 1;
      else if (1)
          d1_Interval_timer_s1_end_xfer <= Interval_timer_s1_end_xfer;
    end


  //Interval_timer_s1_waits_for_read in a cycle, which is an e_mux
  assign Interval_timer_s1_waits_for_read = Interval_timer_s1_in_a_read_cycle & Interval_timer_s1_begins_xfer;

  //Interval_timer_s1_in_a_read_cycle assignment, which is an e_assign
  assign Interval_timer_s1_in_a_read_cycle = cpu_data_master_granted_Interval_timer_s1 & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = Interval_timer_s1_in_a_read_cycle;

  //Interval_timer_s1_waits_for_write in a cycle, which is an e_mux
  assign Interval_timer_s1_waits_for_write = Interval_timer_s1_in_a_write_cycle & 0;

  //Interval_timer_s1_in_a_write_cycle assignment, which is an e_assign
  assign Interval_timer_s1_in_a_write_cycle = cpu_data_master_granted_Interval_timer_s1 & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = Interval_timer_s1_in_a_write_cycle;

  assign wait_for_Interval_timer_s1_counter = 0;
  //assign Interval_timer_s1_irq_from_sa = Interval_timer_s1_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Interval_timer_s1_irq_from_sa = Interval_timer_s1_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //Interval_timer/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else if (1)
          enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module JTAG_UART_avalon_jtag_slave_arbitrator (
                                                // inputs:
                                                 JTAG_UART_avalon_jtag_slave_dataavailable,
                                                 JTAG_UART_avalon_jtag_slave_irq,
                                                 JTAG_UART_avalon_jtag_slave_readdata,
                                                 JTAG_UART_avalon_jtag_slave_readyfordata,
                                                 JTAG_UART_avalon_jtag_slave_waitrequest,
                                                 clk,
                                                 cpu_data_master_address_to_slave,
                                                 cpu_data_master_read,
                                                 cpu_data_master_waitrequest,
                                                 cpu_data_master_write,
                                                 cpu_data_master_writedata,
                                                 reset_n,

                                                // outputs:
                                                 JTAG_UART_avalon_jtag_slave_address,
                                                 JTAG_UART_avalon_jtag_slave_chipselect,
                                                 JTAG_UART_avalon_jtag_slave_dataavailable_from_sa,
                                                 JTAG_UART_avalon_jtag_slave_irq_from_sa,
                                                 JTAG_UART_avalon_jtag_slave_read_n,
                                                 JTAG_UART_avalon_jtag_slave_readdata_from_sa,
                                                 JTAG_UART_avalon_jtag_slave_readyfordata_from_sa,
                                                 JTAG_UART_avalon_jtag_slave_reset_n,
                                                 JTAG_UART_avalon_jtag_slave_waitrequest_from_sa,
                                                 JTAG_UART_avalon_jtag_slave_write_n,
                                                 JTAG_UART_avalon_jtag_slave_writedata,
                                                 cpu_data_master_granted_JTAG_UART_avalon_jtag_slave,
                                                 cpu_data_master_qualified_request_JTAG_UART_avalon_jtag_slave,
                                                 cpu_data_master_read_data_valid_JTAG_UART_avalon_jtag_slave,
                                                 cpu_data_master_requests_JTAG_UART_avalon_jtag_slave,
                                                 d1_JTAG_UART_avalon_jtag_slave_end_xfer
                                              )
  /* synthesis auto_dissolve = "FALSE" */ ;

  output           JTAG_UART_avalon_jtag_slave_address;
  output           JTAG_UART_avalon_jtag_slave_chipselect;
  output           JTAG_UART_avalon_jtag_slave_dataavailable_from_sa;
  output           JTAG_UART_avalon_jtag_slave_irq_from_sa;
  output           JTAG_UART_avalon_jtag_slave_read_n;
  output  [ 31: 0] JTAG_UART_avalon_jtag_slave_readdata_from_sa;
  output           JTAG_UART_avalon_jtag_slave_readyfordata_from_sa;
  output           JTAG_UART_avalon_jtag_slave_reset_n;
  output           JTAG_UART_avalon_jtag_slave_waitrequest_from_sa;
  output           JTAG_UART_avalon_jtag_slave_write_n;
  output  [ 31: 0] JTAG_UART_avalon_jtag_slave_writedata;
  output           cpu_data_master_granted_JTAG_UART_avalon_jtag_slave;
  output           cpu_data_master_qualified_request_JTAG_UART_avalon_jtag_slave;
  output           cpu_data_master_read_data_valid_JTAG_UART_avalon_jtag_slave;
  output           cpu_data_master_requests_JTAG_UART_avalon_jtag_slave;
  output           d1_JTAG_UART_avalon_jtag_slave_end_xfer;
  input            JTAG_UART_avalon_jtag_slave_dataavailable;
  input            JTAG_UART_avalon_jtag_slave_irq;
  input   [ 31: 0] JTAG_UART_avalon_jtag_slave_readdata;
  input            JTAG_UART_avalon_jtag_slave_readyfordata;
  input            JTAG_UART_avalon_jtag_slave_waitrequest;
  input            clk;
  input   [ 28: 0] cpu_data_master_address_to_slave;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;

  wire             JTAG_UART_avalon_jtag_slave_address;
  wire             JTAG_UART_avalon_jtag_slave_allgrants;
  wire             JTAG_UART_avalon_jtag_slave_allow_new_arb_cycle;
  wire             JTAG_UART_avalon_jtag_slave_any_bursting_master_saved_grant;
  wire             JTAG_UART_avalon_jtag_slave_any_continuerequest;
  wire             JTAG_UART_avalon_jtag_slave_arb_counter_enable;
  reg     [  1: 0] JTAG_UART_avalon_jtag_slave_arb_share_counter;
  wire    [  1: 0] JTAG_UART_avalon_jtag_slave_arb_share_counter_next_value;
  wire    [  1: 0] JTAG_UART_avalon_jtag_slave_arb_share_set_values;
  wire             JTAG_UART_avalon_jtag_slave_beginbursttransfer_internal;
  wire             JTAG_UART_avalon_jtag_slave_begins_xfer;
  wire             JTAG_UART_avalon_jtag_slave_chipselect;
  wire             JTAG_UART_avalon_jtag_slave_dataavailable_from_sa;
  wire             JTAG_UART_avalon_jtag_slave_end_xfer;
  wire             JTAG_UART_avalon_jtag_slave_firsttransfer;
  wire             JTAG_UART_avalon_jtag_slave_grant_vector;
  wire             JTAG_UART_avalon_jtag_slave_in_a_read_cycle;
  wire             JTAG_UART_avalon_jtag_slave_in_a_write_cycle;
  wire             JTAG_UART_avalon_jtag_slave_irq_from_sa;
  wire             JTAG_UART_avalon_jtag_slave_master_qreq_vector;
  wire             JTAG_UART_avalon_jtag_slave_non_bursting_master_requests;
  wire             JTAG_UART_avalon_jtag_slave_read_n;
  wire    [ 31: 0] JTAG_UART_avalon_jtag_slave_readdata_from_sa;
  wire             JTAG_UART_avalon_jtag_slave_readyfordata_from_sa;
  reg              JTAG_UART_avalon_jtag_slave_reg_firsttransfer;
  wire             JTAG_UART_avalon_jtag_slave_reset_n;
  reg              JTAG_UART_avalon_jtag_slave_slavearbiterlockenable;
  wire             JTAG_UART_avalon_jtag_slave_slavearbiterlockenable2;
  wire             JTAG_UART_avalon_jtag_slave_unreg_firsttransfer;
  wire             JTAG_UART_avalon_jtag_slave_waitrequest_from_sa;
  wire             JTAG_UART_avalon_jtag_slave_waits_for_read;
  wire             JTAG_UART_avalon_jtag_slave_waits_for_write;
  wire             JTAG_UART_avalon_jtag_slave_write_n;
  wire    [ 31: 0] JTAG_UART_avalon_jtag_slave_writedata;
  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_JTAG_UART_avalon_jtag_slave;
  wire             cpu_data_master_qualified_request_JTAG_UART_avalon_jtag_slave;
  wire             cpu_data_master_read_data_valid_JTAG_UART_avalon_jtag_slave;
  wire             cpu_data_master_requests_JTAG_UART_avalon_jtag_slave;
  wire             cpu_data_master_saved_grant_JTAG_UART_avalon_jtag_slave;
  reg              d1_JTAG_UART_avalon_jtag_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_JTAG_UART_avalon_jtag_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 28: 0] shifted_address_to_JTAG_UART_avalon_jtag_slave_from_cpu_data_master;
  wire             wait_for_JTAG_UART_avalon_jtag_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else if (1)
          d1_reasons_to_wait <= ~JTAG_UART_avalon_jtag_slave_end_xfer;
    end


  assign JTAG_UART_avalon_jtag_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_JTAG_UART_avalon_jtag_slave));
  //assign JTAG_UART_avalon_jtag_slave_readdata_from_sa = JTAG_UART_avalon_jtag_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_readdata_from_sa = JTAG_UART_avalon_jtag_slave_readdata;

  assign cpu_data_master_requests_JTAG_UART_avalon_jtag_slave = ({cpu_data_master_address_to_slave[28 : 3] , 3'b0} == 29'h10001000) & (cpu_data_master_read | cpu_data_master_write);
  //assign JTAG_UART_avalon_jtag_slave_dataavailable_from_sa = JTAG_UART_avalon_jtag_slave_dataavailable so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_dataavailable_from_sa = JTAG_UART_avalon_jtag_slave_dataavailable;

  //assign JTAG_UART_avalon_jtag_slave_readyfordata_from_sa = JTAG_UART_avalon_jtag_slave_readyfordata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_readyfordata_from_sa = JTAG_UART_avalon_jtag_slave_readyfordata;

  //assign JTAG_UART_avalon_jtag_slave_waitrequest_from_sa = JTAG_UART_avalon_jtag_slave_waitrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_waitrequest_from_sa = JTAG_UART_avalon_jtag_slave_waitrequest;

  //JTAG_UART_avalon_jtag_slave_arb_share_counter set values, which is an e_mux
  assign JTAG_UART_avalon_jtag_slave_arb_share_set_values = 1;

  //JTAG_UART_avalon_jtag_slave_non_bursting_master_requests mux, which is an e_mux
  assign JTAG_UART_avalon_jtag_slave_non_bursting_master_requests = cpu_data_master_requests_JTAG_UART_avalon_jtag_slave;

  //JTAG_UART_avalon_jtag_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign JTAG_UART_avalon_jtag_slave_any_bursting_master_saved_grant = 0;

  //JTAG_UART_avalon_jtag_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_arb_share_counter_next_value = JTAG_UART_avalon_jtag_slave_firsttransfer ? (JTAG_UART_avalon_jtag_slave_arb_share_set_values - 1) : |JTAG_UART_avalon_jtag_slave_arb_share_counter ? (JTAG_UART_avalon_jtag_slave_arb_share_counter - 1) : 0;

  //JTAG_UART_avalon_jtag_slave_allgrants all slave grants, which is an e_mux
  assign JTAG_UART_avalon_jtag_slave_allgrants = |JTAG_UART_avalon_jtag_slave_grant_vector;

  //JTAG_UART_avalon_jtag_slave_end_xfer assignment, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_end_xfer = ~(JTAG_UART_avalon_jtag_slave_waits_for_read | JTAG_UART_avalon_jtag_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_JTAG_UART_avalon_jtag_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_JTAG_UART_avalon_jtag_slave = JTAG_UART_avalon_jtag_slave_end_xfer & (~JTAG_UART_avalon_jtag_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //JTAG_UART_avalon_jtag_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_JTAG_UART_avalon_jtag_slave & JTAG_UART_avalon_jtag_slave_allgrants) | (end_xfer_arb_share_counter_term_JTAG_UART_avalon_jtag_slave & ~JTAG_UART_avalon_jtag_slave_non_bursting_master_requests);

  //JTAG_UART_avalon_jtag_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          JTAG_UART_avalon_jtag_slave_arb_share_counter <= 0;
      else if (JTAG_UART_avalon_jtag_slave_arb_counter_enable)
          JTAG_UART_avalon_jtag_slave_arb_share_counter <= JTAG_UART_avalon_jtag_slave_arb_share_counter_next_value;
    end


  //JTAG_UART_avalon_jtag_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          JTAG_UART_avalon_jtag_slave_slavearbiterlockenable <= 0;
      else if ((|JTAG_UART_avalon_jtag_slave_master_qreq_vector & end_xfer_arb_share_counter_term_JTAG_UART_avalon_jtag_slave) | (end_xfer_arb_share_counter_term_JTAG_UART_avalon_jtag_slave & ~JTAG_UART_avalon_jtag_slave_non_bursting_master_requests))
          JTAG_UART_avalon_jtag_slave_slavearbiterlockenable <= |JTAG_UART_avalon_jtag_slave_arb_share_counter_next_value;
    end


  //cpu/data_master JTAG_UART/avalon_jtag_slave arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = JTAG_UART_avalon_jtag_slave_slavearbiterlockenable & cpu_data_master_continuerequest;

  //JTAG_UART_avalon_jtag_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_slavearbiterlockenable2 = |JTAG_UART_avalon_jtag_slave_arb_share_counter_next_value;

  //cpu/data_master JTAG_UART/avalon_jtag_slave arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = JTAG_UART_avalon_jtag_slave_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //JTAG_UART_avalon_jtag_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_JTAG_UART_avalon_jtag_slave = cpu_data_master_requests_JTAG_UART_avalon_jtag_slave & ~((cpu_data_master_read & (~cpu_data_master_waitrequest)) | ((~cpu_data_master_waitrequest) & cpu_data_master_write));
  //JTAG_UART_avalon_jtag_slave_writedata mux, which is an e_mux
  assign JTAG_UART_avalon_jtag_slave_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_JTAG_UART_avalon_jtag_slave = cpu_data_master_qualified_request_JTAG_UART_avalon_jtag_slave;

  //cpu/data_master saved-grant JTAG_UART/avalon_jtag_slave, which is an e_assign
  assign cpu_data_master_saved_grant_JTAG_UART_avalon_jtag_slave = cpu_data_master_requests_JTAG_UART_avalon_jtag_slave;

  //allow new arb cycle for JTAG_UART/avalon_jtag_slave, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign JTAG_UART_avalon_jtag_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign JTAG_UART_avalon_jtag_slave_master_qreq_vector = 1;

  //JTAG_UART_avalon_jtag_slave_reset_n assignment, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_reset_n = reset_n;

  assign JTAG_UART_avalon_jtag_slave_chipselect = cpu_data_master_granted_JTAG_UART_avalon_jtag_slave;
  //JTAG_UART_avalon_jtag_slave_firsttransfer first transaction, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_firsttransfer = JTAG_UART_avalon_jtag_slave_begins_xfer ? JTAG_UART_avalon_jtag_slave_unreg_firsttransfer : JTAG_UART_avalon_jtag_slave_reg_firsttransfer;

  //JTAG_UART_avalon_jtag_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_unreg_firsttransfer = ~(JTAG_UART_avalon_jtag_slave_slavearbiterlockenable & JTAG_UART_avalon_jtag_slave_any_continuerequest);

  //JTAG_UART_avalon_jtag_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          JTAG_UART_avalon_jtag_slave_reg_firsttransfer <= 1'b1;
      else if (JTAG_UART_avalon_jtag_slave_begins_xfer)
          JTAG_UART_avalon_jtag_slave_reg_firsttransfer <= JTAG_UART_avalon_jtag_slave_unreg_firsttransfer;
    end


  //JTAG_UART_avalon_jtag_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_beginbursttransfer_internal = JTAG_UART_avalon_jtag_slave_begins_xfer;

  //~JTAG_UART_avalon_jtag_slave_read_n assignment, which is an e_mux
  assign JTAG_UART_avalon_jtag_slave_read_n = ~(cpu_data_master_granted_JTAG_UART_avalon_jtag_slave & cpu_data_master_read);

  //~JTAG_UART_avalon_jtag_slave_write_n assignment, which is an e_mux
  assign JTAG_UART_avalon_jtag_slave_write_n = ~(cpu_data_master_granted_JTAG_UART_avalon_jtag_slave & cpu_data_master_write);

  assign shifted_address_to_JTAG_UART_avalon_jtag_slave_from_cpu_data_master = cpu_data_master_address_to_slave;
  //JTAG_UART_avalon_jtag_slave_address mux, which is an e_mux
  assign JTAG_UART_avalon_jtag_slave_address = shifted_address_to_JTAG_UART_avalon_jtag_slave_from_cpu_data_master >> 2;

  //d1_JTAG_UART_avalon_jtag_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_JTAG_UART_avalon_jtag_slave_end_xfer <= 1;
      else if (1)
          d1_JTAG_UART_avalon_jtag_slave_end_xfer <= JTAG_UART_avalon_jtag_slave_end_xfer;
    end


  //JTAG_UART_avalon_jtag_slave_waits_for_read in a cycle, which is an e_mux
  assign JTAG_UART_avalon_jtag_slave_waits_for_read = JTAG_UART_avalon_jtag_slave_in_a_read_cycle & JTAG_UART_avalon_jtag_slave_waitrequest_from_sa;

  //JTAG_UART_avalon_jtag_slave_in_a_read_cycle assignment, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_in_a_read_cycle = cpu_data_master_granted_JTAG_UART_avalon_jtag_slave & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = JTAG_UART_avalon_jtag_slave_in_a_read_cycle;

  //JTAG_UART_avalon_jtag_slave_waits_for_write in a cycle, which is an e_mux
  assign JTAG_UART_avalon_jtag_slave_waits_for_write = JTAG_UART_avalon_jtag_slave_in_a_write_cycle & JTAG_UART_avalon_jtag_slave_waitrequest_from_sa;

  //JTAG_UART_avalon_jtag_slave_in_a_write_cycle assignment, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_in_a_write_cycle = cpu_data_master_granted_JTAG_UART_avalon_jtag_slave & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = JTAG_UART_avalon_jtag_slave_in_a_write_cycle;

  assign wait_for_JTAG_UART_avalon_jtag_slave_counter = 0;
  //assign JTAG_UART_avalon_jtag_slave_irq_from_sa = JTAG_UART_avalon_jtag_slave_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign JTAG_UART_avalon_jtag_slave_irq_from_sa = JTAG_UART_avalon_jtag_slave_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //JTAG_UART/avalon_jtag_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else if (1)
          enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module Onchip_memory_s1_arbitrator (
                                     // inputs:
                                      Onchip_memory_s1_readdata,
                                      clk,
                                      cpu_instruction_master_address_to_slave,
                                      cpu_instruction_master_latency_counter,
                                      cpu_instruction_master_read,
                                      reset_n,

                                     // outputs:
                                      Onchip_memory_s1_address,
                                      Onchip_memory_s1_byteenable,
                                      Onchip_memory_s1_chipselect,
                                      Onchip_memory_s1_clken,
                                      Onchip_memory_s1_readdata_from_sa,
                                      Onchip_memory_s1_write,
                                      Onchip_memory_s1_writedata,
                                      cpu_instruction_master_granted_Onchip_memory_s1,
                                      cpu_instruction_master_qualified_request_Onchip_memory_s1,
                                      cpu_instruction_master_read_data_valid_Onchip_memory_s1,
                                      cpu_instruction_master_requests_Onchip_memory_s1,
                                      d1_Onchip_memory_s1_end_xfer
                                   )
  /* synthesis auto_dissolve = "FALSE" */ ;

  output  [ 11: 0] Onchip_memory_s1_address;
  output  [  3: 0] Onchip_memory_s1_byteenable;
  output           Onchip_memory_s1_chipselect;
  output           Onchip_memory_s1_clken;
  output  [ 31: 0] Onchip_memory_s1_readdata_from_sa;
  output           Onchip_memory_s1_write;
  output  [ 31: 0] Onchip_memory_s1_writedata;
  output           cpu_instruction_master_granted_Onchip_memory_s1;
  output           cpu_instruction_master_qualified_request_Onchip_memory_s1;
  output           cpu_instruction_master_read_data_valid_Onchip_memory_s1;
  output           cpu_instruction_master_requests_Onchip_memory_s1;
  output           d1_Onchip_memory_s1_end_xfer;
  input   [ 31: 0] Onchip_memory_s1_readdata;
  input            clk;
  input   [ 27: 0] cpu_instruction_master_address_to_slave;
  input   [  1: 0] cpu_instruction_master_latency_counter;
  input            cpu_instruction_master_read;
  input            reset_n;

  wire    [ 11: 0] Onchip_memory_s1_address;
  wire             Onchip_memory_s1_allgrants;
  wire             Onchip_memory_s1_allow_new_arb_cycle;
  wire             Onchip_memory_s1_any_bursting_master_saved_grant;
  wire             Onchip_memory_s1_any_continuerequest;
  wire             Onchip_memory_s1_arb_counter_enable;
  reg     [  1: 0] Onchip_memory_s1_arb_share_counter;
  wire    [  1: 0] Onchip_memory_s1_arb_share_counter_next_value;
  wire    [  1: 0] Onchip_memory_s1_arb_share_set_values;
  wire             Onchip_memory_s1_beginbursttransfer_internal;
  wire             Onchip_memory_s1_begins_xfer;
  wire    [  3: 0] Onchip_memory_s1_byteenable;
  wire             Onchip_memory_s1_chipselect;
  wire             Onchip_memory_s1_clken;
  wire             Onchip_memory_s1_end_xfer;
  wire             Onchip_memory_s1_firsttransfer;
  wire             Onchip_memory_s1_grant_vector;
  wire             Onchip_memory_s1_in_a_read_cycle;
  wire             Onchip_memory_s1_in_a_write_cycle;
  wire             Onchip_memory_s1_master_qreq_vector;
  wire             Onchip_memory_s1_non_bursting_master_requests;
  wire    [ 31: 0] Onchip_memory_s1_readdata_from_sa;
  reg              Onchip_memory_s1_reg_firsttransfer;
  reg              Onchip_memory_s1_slavearbiterlockenable;
  wire             Onchip_memory_s1_slavearbiterlockenable2;
  wire             Onchip_memory_s1_unreg_firsttransfer;
  wire             Onchip_memory_s1_waits_for_read;
  wire             Onchip_memory_s1_waits_for_write;
  wire             Onchip_memory_s1_write;
  wire    [ 31: 0] Onchip_memory_s1_writedata;
  wire             cpu_instruction_master_arbiterlock;
  wire             cpu_instruction_master_arbiterlock2;
  wire             cpu_instruction_master_continuerequest;
  wire             cpu_instruction_master_granted_Onchip_memory_s1;
  wire             cpu_instruction_master_qualified_request_Onchip_memory_s1;
  wire             cpu_instruction_master_read_data_valid_Onchip_memory_s1;
  reg              cpu_instruction_master_read_data_valid_Onchip_memory_s1_shift_register;
  wire             cpu_instruction_master_read_data_valid_Onchip_memory_s1_shift_register_in;
  wire             cpu_instruction_master_requests_Onchip_memory_s1;
  wire             cpu_instruction_master_saved_grant_Onchip_memory_s1;
  reg              d1_Onchip_memory_s1_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_Onchip_memory_s1;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             p1_cpu_instruction_master_read_data_valid_Onchip_memory_s1_shift_register;
  wire    [ 27: 0] shifted_address_to_Onchip_memory_s1_from_cpu_instruction_master;
  wire             wait_for_Onchip_memory_s1_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else if (1)
          d1_reasons_to_wait <= ~Onchip_memory_s1_end_xfer;
    end


  assign Onchip_memory_s1_begins_xfer = ~d1_reasons_to_wait & ((cpu_instruction_master_qualified_request_Onchip_memory_s1));
  //assign Onchip_memory_s1_readdata_from_sa = Onchip_memory_s1_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Onchip_memory_s1_readdata_from_sa = Onchip_memory_s1_readdata;

  assign cpu_instruction_master_requests_Onchip_memory_s1 = (({cpu_instruction_master_address_to_slave[27 : 14] , 14'b0} == 28'h9000000) & (cpu_instruction_master_read)) & cpu_instruction_master_read;
  //Onchip_memory_s1_arb_share_counter set values, which is an e_mux
  assign Onchip_memory_s1_arb_share_set_values = 1;

  //Onchip_memory_s1_non_bursting_master_requests mux, which is an e_mux
  assign Onchip_memory_s1_non_bursting_master_requests = cpu_instruction_master_requests_Onchip_memory_s1;

  //Onchip_memory_s1_any_bursting_master_saved_grant mux, which is an e_mux
  assign Onchip_memory_s1_any_bursting_master_saved_grant = 0;

  //Onchip_memory_s1_arb_share_counter_next_value assignment, which is an e_assign
  assign Onchip_memory_s1_arb_share_counter_next_value = Onchip_memory_s1_firsttransfer ? (Onchip_memory_s1_arb_share_set_values - 1) : |Onchip_memory_s1_arb_share_counter ? (Onchip_memory_s1_arb_share_counter - 1) : 0;

  //Onchip_memory_s1_allgrants all slave grants, which is an e_mux
  assign Onchip_memory_s1_allgrants = |Onchip_memory_s1_grant_vector;

  //Onchip_memory_s1_end_xfer assignment, which is an e_assign
  assign Onchip_memory_s1_end_xfer = ~(Onchip_memory_s1_waits_for_read | Onchip_memory_s1_waits_for_write);

  //end_xfer_arb_share_counter_term_Onchip_memory_s1 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_Onchip_memory_s1 = Onchip_memory_s1_end_xfer & (~Onchip_memory_s1_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //Onchip_memory_s1_arb_share_counter arbitration counter enable, which is an e_assign
  assign Onchip_memory_s1_arb_counter_enable = (end_xfer_arb_share_counter_term_Onchip_memory_s1 & Onchip_memory_s1_allgrants) | (end_xfer_arb_share_counter_term_Onchip_memory_s1 & ~Onchip_memory_s1_non_bursting_master_requests);

  //Onchip_memory_s1_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Onchip_memory_s1_arb_share_counter <= 0;
      else if (Onchip_memory_s1_arb_counter_enable)
          Onchip_memory_s1_arb_share_counter <= Onchip_memory_s1_arb_share_counter_next_value;
    end


  //Onchip_memory_s1_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Onchip_memory_s1_slavearbiterlockenable <= 0;
      else if ((|Onchip_memory_s1_master_qreq_vector & end_xfer_arb_share_counter_term_Onchip_memory_s1) | (end_xfer_arb_share_counter_term_Onchip_memory_s1 & ~Onchip_memory_s1_non_bursting_master_requests))
          Onchip_memory_s1_slavearbiterlockenable <= |Onchip_memory_s1_arb_share_counter_next_value;
    end


  //cpu/instruction_master Onchip_memory/s1 arbiterlock, which is an e_assign
  assign cpu_instruction_master_arbiterlock = Onchip_memory_s1_slavearbiterlockenable & cpu_instruction_master_continuerequest;

  //Onchip_memory_s1_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign Onchip_memory_s1_slavearbiterlockenable2 = |Onchip_memory_s1_arb_share_counter_next_value;

  //cpu/instruction_master Onchip_memory/s1 arbiterlock2, which is an e_assign
  assign cpu_instruction_master_arbiterlock2 = Onchip_memory_s1_slavearbiterlockenable2 & cpu_instruction_master_continuerequest;

  //Onchip_memory_s1_any_continuerequest at least one master continues requesting, which is an e_assign
  assign Onchip_memory_s1_any_continuerequest = 1;

  //cpu_instruction_master_continuerequest continued request, which is an e_assign
  assign cpu_instruction_master_continuerequest = 1;

  assign cpu_instruction_master_qualified_request_Onchip_memory_s1 = cpu_instruction_master_requests_Onchip_memory_s1 & ~((cpu_instruction_master_read & ((1 < cpu_instruction_master_latency_counter))));
  //cpu_instruction_master_read_data_valid_Onchip_memory_s1_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_instruction_master_read_data_valid_Onchip_memory_s1_shift_register_in = cpu_instruction_master_granted_Onchip_memory_s1 & cpu_instruction_master_read & ~Onchip_memory_s1_waits_for_read;

  //shift register p1 cpu_instruction_master_read_data_valid_Onchip_memory_s1_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_instruction_master_read_data_valid_Onchip_memory_s1_shift_register = {cpu_instruction_master_read_data_valid_Onchip_memory_s1_shift_register, cpu_instruction_master_read_data_valid_Onchip_memory_s1_shift_register_in};

  //cpu_instruction_master_read_data_valid_Onchip_memory_s1_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_read_data_valid_Onchip_memory_s1_shift_register <= 0;
      else if (1)
          cpu_instruction_master_read_data_valid_Onchip_memory_s1_shift_register <= p1_cpu_instruction_master_read_data_valid_Onchip_memory_s1_shift_register;
    end


  //local readdatavalid cpu_instruction_master_read_data_valid_Onchip_memory_s1, which is an e_mux
  assign cpu_instruction_master_read_data_valid_Onchip_memory_s1 = cpu_instruction_master_read_data_valid_Onchip_memory_s1_shift_register;

  //mux Onchip_memory_s1_clken, which is an e_mux
  assign Onchip_memory_s1_clken = 1'b1;

  //master is always granted when requested
  assign cpu_instruction_master_granted_Onchip_memory_s1 = cpu_instruction_master_qualified_request_Onchip_memory_s1;

  //cpu/instruction_master saved-grant Onchip_memory/s1, which is an e_assign
  assign cpu_instruction_master_saved_grant_Onchip_memory_s1 = cpu_instruction_master_requests_Onchip_memory_s1;

  //allow new arb cycle for Onchip_memory/s1, which is an e_assign
  assign Onchip_memory_s1_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign Onchip_memory_s1_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign Onchip_memory_s1_master_qreq_vector = 1;

  assign Onchip_memory_s1_chipselect = cpu_instruction_master_granted_Onchip_memory_s1;
  //Onchip_memory_s1_firsttransfer first transaction, which is an e_assign
  assign Onchip_memory_s1_firsttransfer = Onchip_memory_s1_begins_xfer ? Onchip_memory_s1_unreg_firsttransfer : Onchip_memory_s1_reg_firsttransfer;

  //Onchip_memory_s1_unreg_firsttransfer first transaction, which is an e_assign
  assign Onchip_memory_s1_unreg_firsttransfer = ~(Onchip_memory_s1_slavearbiterlockenable & Onchip_memory_s1_any_continuerequest);

  //Onchip_memory_s1_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Onchip_memory_s1_reg_firsttransfer <= 1'b1;
      else if (Onchip_memory_s1_begins_xfer)
          Onchip_memory_s1_reg_firsttransfer <= Onchip_memory_s1_unreg_firsttransfer;
    end


  //Onchip_memory_s1_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign Onchip_memory_s1_beginbursttransfer_internal = Onchip_memory_s1_begins_xfer;

  //Onchip_memory_s1_write assignment, which is an e_mux
  assign Onchip_memory_s1_write = 0;

  assign shifted_address_to_Onchip_memory_s1_from_cpu_instruction_master = cpu_instruction_master_address_to_slave;
  //Onchip_memory_s1_address mux, which is an e_mux
  assign Onchip_memory_s1_address = shifted_address_to_Onchip_memory_s1_from_cpu_instruction_master >> 2;

  //d1_Onchip_memory_s1_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_Onchip_memory_s1_end_xfer <= 1;
      else if (1)
          d1_Onchip_memory_s1_end_xfer <= Onchip_memory_s1_end_xfer;
    end


  //Onchip_memory_s1_waits_for_read in a cycle, which is an e_mux
  assign Onchip_memory_s1_waits_for_read = Onchip_memory_s1_in_a_read_cycle & 0;

  //Onchip_memory_s1_in_a_read_cycle assignment, which is an e_assign
  assign Onchip_memory_s1_in_a_read_cycle = cpu_instruction_master_granted_Onchip_memory_s1 & cpu_instruction_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = Onchip_memory_s1_in_a_read_cycle;

  //Onchip_memory_s1_waits_for_write in a cycle, which is an e_mux
  assign Onchip_memory_s1_waits_for_write = Onchip_memory_s1_in_a_write_cycle & 0;

  //Onchip_memory_s1_in_a_write_cycle assignment, which is an e_assign
  assign Onchip_memory_s1_in_a_write_cycle = 0;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = Onchip_memory_s1_in_a_write_cycle;

  assign wait_for_Onchip_memory_s1_counter = 0;
  //Onchip_memory_s1_byteenable byte enable port mux, which is an e_mux
  assign Onchip_memory_s1_byteenable = -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //Onchip_memory/s1 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else if (1)
          enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module Onchip_memory_s2_arbitrator (
                                     // inputs:
                                      Onchip_memory_s2_readdata,
                                      clk,
                                      cpu_data_master_address_to_slave,
                                      cpu_data_master_byteenable,
                                      cpu_data_master_read,
                                      cpu_data_master_waitrequest,
                                      cpu_data_master_write,
                                      cpu_data_master_writedata,
                                      reset_n,

                                     // outputs:
                                      Onchip_memory_s2_address,
                                      Onchip_memory_s2_byteenable,
                                      Onchip_memory_s2_chipselect,
                                      Onchip_memory_s2_clken,
                                      Onchip_memory_s2_readdata_from_sa,
                                      Onchip_memory_s2_write,
                                      Onchip_memory_s2_writedata,
                                      cpu_data_master_granted_Onchip_memory_s2,
                                      cpu_data_master_qualified_request_Onchip_memory_s2,
                                      cpu_data_master_read_data_valid_Onchip_memory_s2,
                                      cpu_data_master_requests_Onchip_memory_s2,
                                      d1_Onchip_memory_s2_end_xfer,
                                      registered_cpu_data_master_read_data_valid_Onchip_memory_s2
                                   )
  /* synthesis auto_dissolve = "FALSE" */ ;

  output  [ 11: 0] Onchip_memory_s2_address;
  output  [  3: 0] Onchip_memory_s2_byteenable;
  output           Onchip_memory_s2_chipselect;
  output           Onchip_memory_s2_clken;
  output  [ 31: 0] Onchip_memory_s2_readdata_from_sa;
  output           Onchip_memory_s2_write;
  output  [ 31: 0] Onchip_memory_s2_writedata;
  output           cpu_data_master_granted_Onchip_memory_s2;
  output           cpu_data_master_qualified_request_Onchip_memory_s2;
  output           cpu_data_master_read_data_valid_Onchip_memory_s2;
  output           cpu_data_master_requests_Onchip_memory_s2;
  output           d1_Onchip_memory_s2_end_xfer;
  output           registered_cpu_data_master_read_data_valid_Onchip_memory_s2;
  input   [ 31: 0] Onchip_memory_s2_readdata;
  input            clk;
  input   [ 28: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;

  wire    [ 11: 0] Onchip_memory_s2_address;
  wire             Onchip_memory_s2_allgrants;
  wire             Onchip_memory_s2_allow_new_arb_cycle;
  wire             Onchip_memory_s2_any_bursting_master_saved_grant;
  wire             Onchip_memory_s2_any_continuerequest;
  wire             Onchip_memory_s2_arb_counter_enable;
  reg     [  1: 0] Onchip_memory_s2_arb_share_counter;
  wire    [  1: 0] Onchip_memory_s2_arb_share_counter_next_value;
  wire    [  1: 0] Onchip_memory_s2_arb_share_set_values;
  wire             Onchip_memory_s2_beginbursttransfer_internal;
  wire             Onchip_memory_s2_begins_xfer;
  wire    [  3: 0] Onchip_memory_s2_byteenable;
  wire             Onchip_memory_s2_chipselect;
  wire             Onchip_memory_s2_clken;
  wire             Onchip_memory_s2_end_xfer;
  wire             Onchip_memory_s2_firsttransfer;
  wire             Onchip_memory_s2_grant_vector;
  wire             Onchip_memory_s2_in_a_read_cycle;
  wire             Onchip_memory_s2_in_a_write_cycle;
  wire             Onchip_memory_s2_master_qreq_vector;
  wire             Onchip_memory_s2_non_bursting_master_requests;
  wire    [ 31: 0] Onchip_memory_s2_readdata_from_sa;
  reg              Onchip_memory_s2_reg_firsttransfer;
  reg              Onchip_memory_s2_slavearbiterlockenable;
  wire             Onchip_memory_s2_slavearbiterlockenable2;
  wire             Onchip_memory_s2_unreg_firsttransfer;
  wire             Onchip_memory_s2_waits_for_read;
  wire             Onchip_memory_s2_waits_for_write;
  wire             Onchip_memory_s2_write;
  wire    [ 31: 0] Onchip_memory_s2_writedata;
  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_Onchip_memory_s2;
  wire             cpu_data_master_qualified_request_Onchip_memory_s2;
  wire             cpu_data_master_read_data_valid_Onchip_memory_s2;
  reg              cpu_data_master_read_data_valid_Onchip_memory_s2_shift_register;
  wire             cpu_data_master_read_data_valid_Onchip_memory_s2_shift_register_in;
  wire             cpu_data_master_requests_Onchip_memory_s2;
  wire             cpu_data_master_saved_grant_Onchip_memory_s2;
  reg              d1_Onchip_memory_s2_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_Onchip_memory_s2;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             p1_cpu_data_master_read_data_valid_Onchip_memory_s2_shift_register;
  wire             registered_cpu_data_master_read_data_valid_Onchip_memory_s2;
  wire    [ 28: 0] shifted_address_to_Onchip_memory_s2_from_cpu_data_master;
  wire             wait_for_Onchip_memory_s2_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else if (1)
          d1_reasons_to_wait <= ~Onchip_memory_s2_end_xfer;
    end


  assign Onchip_memory_s2_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_Onchip_memory_s2));
  //assign Onchip_memory_s2_readdata_from_sa = Onchip_memory_s2_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Onchip_memory_s2_readdata_from_sa = Onchip_memory_s2_readdata;

  assign cpu_data_master_requests_Onchip_memory_s2 = ({cpu_data_master_address_to_slave[28 : 14] , 14'b0} == 29'h9000000) & (cpu_data_master_read | cpu_data_master_write);
  //registered rdv signal_name registered_cpu_data_master_read_data_valid_Onchip_memory_s2 assignment, which is an e_assign
  assign registered_cpu_data_master_read_data_valid_Onchip_memory_s2 = cpu_data_master_read_data_valid_Onchip_memory_s2_shift_register_in;

  //Onchip_memory_s2_arb_share_counter set values, which is an e_mux
  assign Onchip_memory_s2_arb_share_set_values = 1;

  //Onchip_memory_s2_non_bursting_master_requests mux, which is an e_mux
  assign Onchip_memory_s2_non_bursting_master_requests = cpu_data_master_requests_Onchip_memory_s2;

  //Onchip_memory_s2_any_bursting_master_saved_grant mux, which is an e_mux
  assign Onchip_memory_s2_any_bursting_master_saved_grant = 0;

  //Onchip_memory_s2_arb_share_counter_next_value assignment, which is an e_assign
  assign Onchip_memory_s2_arb_share_counter_next_value = Onchip_memory_s2_firsttransfer ? (Onchip_memory_s2_arb_share_set_values - 1) : |Onchip_memory_s2_arb_share_counter ? (Onchip_memory_s2_arb_share_counter - 1) : 0;

  //Onchip_memory_s2_allgrants all slave grants, which is an e_mux
  assign Onchip_memory_s2_allgrants = |Onchip_memory_s2_grant_vector;

  //Onchip_memory_s2_end_xfer assignment, which is an e_assign
  assign Onchip_memory_s2_end_xfer = ~(Onchip_memory_s2_waits_for_read | Onchip_memory_s2_waits_for_write);

  //end_xfer_arb_share_counter_term_Onchip_memory_s2 arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_Onchip_memory_s2 = Onchip_memory_s2_end_xfer & (~Onchip_memory_s2_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //Onchip_memory_s2_arb_share_counter arbitration counter enable, which is an e_assign
  assign Onchip_memory_s2_arb_counter_enable = (end_xfer_arb_share_counter_term_Onchip_memory_s2 & Onchip_memory_s2_allgrants) | (end_xfer_arb_share_counter_term_Onchip_memory_s2 & ~Onchip_memory_s2_non_bursting_master_requests);

  //Onchip_memory_s2_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Onchip_memory_s2_arb_share_counter <= 0;
      else if (Onchip_memory_s2_arb_counter_enable)
          Onchip_memory_s2_arb_share_counter <= Onchip_memory_s2_arb_share_counter_next_value;
    end


  //Onchip_memory_s2_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Onchip_memory_s2_slavearbiterlockenable <= 0;
      else if ((|Onchip_memory_s2_master_qreq_vector & end_xfer_arb_share_counter_term_Onchip_memory_s2) | (end_xfer_arb_share_counter_term_Onchip_memory_s2 & ~Onchip_memory_s2_non_bursting_master_requests))
          Onchip_memory_s2_slavearbiterlockenable <= |Onchip_memory_s2_arb_share_counter_next_value;
    end


  //cpu/data_master Onchip_memory/s2 arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = Onchip_memory_s2_slavearbiterlockenable & cpu_data_master_continuerequest;

  //Onchip_memory_s2_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign Onchip_memory_s2_slavearbiterlockenable2 = |Onchip_memory_s2_arb_share_counter_next_value;

  //cpu/data_master Onchip_memory/s2 arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = Onchip_memory_s2_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //Onchip_memory_s2_any_continuerequest at least one master continues requesting, which is an e_assign
  assign Onchip_memory_s2_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_Onchip_memory_s2 = cpu_data_master_requests_Onchip_memory_s2 & ~((cpu_data_master_read & ((|cpu_data_master_read_data_valid_Onchip_memory_s2_shift_register))) | ((~cpu_data_master_waitrequest) & cpu_data_master_write));
  //cpu_data_master_read_data_valid_Onchip_memory_s2_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_data_master_read_data_valid_Onchip_memory_s2_shift_register_in = cpu_data_master_granted_Onchip_memory_s2 & cpu_data_master_read & ~Onchip_memory_s2_waits_for_read & ~(|cpu_data_master_read_data_valid_Onchip_memory_s2_shift_register);

  //shift register p1 cpu_data_master_read_data_valid_Onchip_memory_s2_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_data_master_read_data_valid_Onchip_memory_s2_shift_register = {cpu_data_master_read_data_valid_Onchip_memory_s2_shift_register, cpu_data_master_read_data_valid_Onchip_memory_s2_shift_register_in};

  //cpu_data_master_read_data_valid_Onchip_memory_s2_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_read_data_valid_Onchip_memory_s2_shift_register <= 0;
      else if (1)
          cpu_data_master_read_data_valid_Onchip_memory_s2_shift_register <= p1_cpu_data_master_read_data_valid_Onchip_memory_s2_shift_register;
    end


  //local readdatavalid cpu_data_master_read_data_valid_Onchip_memory_s2, which is an e_mux
  assign cpu_data_master_read_data_valid_Onchip_memory_s2 = cpu_data_master_read_data_valid_Onchip_memory_s2_shift_register;

  //Onchip_memory_s2_writedata mux, which is an e_mux
  assign Onchip_memory_s2_writedata = cpu_data_master_writedata;

  //mux Onchip_memory_s2_clken, which is an e_mux
  assign Onchip_memory_s2_clken = 1'b1;

  //master is always granted when requested
  assign cpu_data_master_granted_Onchip_memory_s2 = cpu_data_master_qualified_request_Onchip_memory_s2;

  //cpu/data_master saved-grant Onchip_memory/s2, which is an e_assign
  assign cpu_data_master_saved_grant_Onchip_memory_s2 = cpu_data_master_requests_Onchip_memory_s2;

  //allow new arb cycle for Onchip_memory/s2, which is an e_assign
  assign Onchip_memory_s2_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign Onchip_memory_s2_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign Onchip_memory_s2_master_qreq_vector = 1;

  assign Onchip_memory_s2_chipselect = cpu_data_master_granted_Onchip_memory_s2;
  //Onchip_memory_s2_firsttransfer first transaction, which is an e_assign
  assign Onchip_memory_s2_firsttransfer = Onchip_memory_s2_begins_xfer ? Onchip_memory_s2_unreg_firsttransfer : Onchip_memory_s2_reg_firsttransfer;

  //Onchip_memory_s2_unreg_firsttransfer first transaction, which is an e_assign
  assign Onchip_memory_s2_unreg_firsttransfer = ~(Onchip_memory_s2_slavearbiterlockenable & Onchip_memory_s2_any_continuerequest);

  //Onchip_memory_s2_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Onchip_memory_s2_reg_firsttransfer <= 1'b1;
      else if (Onchip_memory_s2_begins_xfer)
          Onchip_memory_s2_reg_firsttransfer <= Onchip_memory_s2_unreg_firsttransfer;
    end


  //Onchip_memory_s2_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign Onchip_memory_s2_beginbursttransfer_internal = Onchip_memory_s2_begins_xfer;

  //Onchip_memory_s2_write assignment, which is an e_mux
  assign Onchip_memory_s2_write = cpu_data_master_granted_Onchip_memory_s2 & cpu_data_master_write;

  assign shifted_address_to_Onchip_memory_s2_from_cpu_data_master = cpu_data_master_address_to_slave;
  //Onchip_memory_s2_address mux, which is an e_mux
  assign Onchip_memory_s2_address = shifted_address_to_Onchip_memory_s2_from_cpu_data_master >> 2;

  //d1_Onchip_memory_s2_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_Onchip_memory_s2_end_xfer <= 1;
      else if (1)
          d1_Onchip_memory_s2_end_xfer <= Onchip_memory_s2_end_xfer;
    end


  //Onchip_memory_s2_waits_for_read in a cycle, which is an e_mux
  assign Onchip_memory_s2_waits_for_read = Onchip_memory_s2_in_a_read_cycle & 0;

  //Onchip_memory_s2_in_a_read_cycle assignment, which is an e_assign
  assign Onchip_memory_s2_in_a_read_cycle = cpu_data_master_granted_Onchip_memory_s2 & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = Onchip_memory_s2_in_a_read_cycle;

  //Onchip_memory_s2_waits_for_write in a cycle, which is an e_mux
  assign Onchip_memory_s2_waits_for_write = Onchip_memory_s2_in_a_write_cycle & 0;

  //Onchip_memory_s2_in_a_write_cycle assignment, which is an e_assign
  assign Onchip_memory_s2_in_a_write_cycle = cpu_data_master_granted_Onchip_memory_s2 & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = Onchip_memory_s2_in_a_write_cycle;

  assign wait_for_Onchip_memory_s2_counter = 0;
  //Onchip_memory_s2_byteenable byte enable port mux, which is an e_mux
  assign Onchip_memory_s2_byteenable = (cpu_data_master_granted_Onchip_memory_s2)? cpu_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //Onchip_memory/s2 enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else if (1)
          enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module Pushbuttons_avalon_parallel_port_slave_arbitrator (
                                                           // inputs:
                                                            Pushbuttons_avalon_parallel_port_slave_irq,
                                                            Pushbuttons_avalon_parallel_port_slave_readdata,
                                                            clk,
                                                            cpu_data_master_address_to_slave,
                                                            cpu_data_master_byteenable,
                                                            cpu_data_master_read,
                                                            cpu_data_master_waitrequest,
                                                            cpu_data_master_write,
                                                            cpu_data_master_writedata,
                                                            reset_n,

                                                           // outputs:
                                                            Pushbuttons_avalon_parallel_port_slave_address,
                                                            Pushbuttons_avalon_parallel_port_slave_byteenable,
                                                            Pushbuttons_avalon_parallel_port_slave_chipselect,
                                                            Pushbuttons_avalon_parallel_port_slave_irq_from_sa,
                                                            Pushbuttons_avalon_parallel_port_slave_read,
                                                            Pushbuttons_avalon_parallel_port_slave_readdata_from_sa,
                                                            Pushbuttons_avalon_parallel_port_slave_write,
                                                            Pushbuttons_avalon_parallel_port_slave_writedata,
                                                            cpu_data_master_granted_Pushbuttons_avalon_parallel_port_slave,
                                                            cpu_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave,
                                                            cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave,
                                                            cpu_data_master_requests_Pushbuttons_avalon_parallel_port_slave,
                                                            d1_Pushbuttons_avalon_parallel_port_slave_end_xfer,
                                                            registered_cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave
                                                         )
  /* synthesis auto_dissolve = "FALSE" */ ;

  output  [  1: 0] Pushbuttons_avalon_parallel_port_slave_address;
  output  [  3: 0] Pushbuttons_avalon_parallel_port_slave_byteenable;
  output           Pushbuttons_avalon_parallel_port_slave_chipselect;
  output           Pushbuttons_avalon_parallel_port_slave_irq_from_sa;
  output           Pushbuttons_avalon_parallel_port_slave_read;
  output  [ 31: 0] Pushbuttons_avalon_parallel_port_slave_readdata_from_sa;
  output           Pushbuttons_avalon_parallel_port_slave_write;
  output  [ 31: 0] Pushbuttons_avalon_parallel_port_slave_writedata;
  output           cpu_data_master_granted_Pushbuttons_avalon_parallel_port_slave;
  output           cpu_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave;
  output           cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave;
  output           cpu_data_master_requests_Pushbuttons_avalon_parallel_port_slave;
  output           d1_Pushbuttons_avalon_parallel_port_slave_end_xfer;
  output           registered_cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave;
  input            Pushbuttons_avalon_parallel_port_slave_irq;
  input   [ 31: 0] Pushbuttons_avalon_parallel_port_slave_readdata;
  input            clk;
  input   [ 28: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;

  wire    [  1: 0] Pushbuttons_avalon_parallel_port_slave_address;
  wire             Pushbuttons_avalon_parallel_port_slave_allgrants;
  wire             Pushbuttons_avalon_parallel_port_slave_allow_new_arb_cycle;
  wire             Pushbuttons_avalon_parallel_port_slave_any_bursting_master_saved_grant;
  wire             Pushbuttons_avalon_parallel_port_slave_any_continuerequest;
  wire             Pushbuttons_avalon_parallel_port_slave_arb_counter_enable;
  reg     [  1: 0] Pushbuttons_avalon_parallel_port_slave_arb_share_counter;
  wire    [  1: 0] Pushbuttons_avalon_parallel_port_slave_arb_share_counter_next_value;
  wire    [  1: 0] Pushbuttons_avalon_parallel_port_slave_arb_share_set_values;
  wire             Pushbuttons_avalon_parallel_port_slave_beginbursttransfer_internal;
  wire             Pushbuttons_avalon_parallel_port_slave_begins_xfer;
  wire    [  3: 0] Pushbuttons_avalon_parallel_port_slave_byteenable;
  wire             Pushbuttons_avalon_parallel_port_slave_chipselect;
  wire             Pushbuttons_avalon_parallel_port_slave_end_xfer;
  wire             Pushbuttons_avalon_parallel_port_slave_firsttransfer;
  wire             Pushbuttons_avalon_parallel_port_slave_grant_vector;
  wire             Pushbuttons_avalon_parallel_port_slave_in_a_read_cycle;
  wire             Pushbuttons_avalon_parallel_port_slave_in_a_write_cycle;
  wire             Pushbuttons_avalon_parallel_port_slave_irq_from_sa;
  wire             Pushbuttons_avalon_parallel_port_slave_master_qreq_vector;
  wire             Pushbuttons_avalon_parallel_port_slave_non_bursting_master_requests;
  wire             Pushbuttons_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Pushbuttons_avalon_parallel_port_slave_readdata_from_sa;
  reg              Pushbuttons_avalon_parallel_port_slave_reg_firsttransfer;
  reg              Pushbuttons_avalon_parallel_port_slave_slavearbiterlockenable;
  wire             Pushbuttons_avalon_parallel_port_slave_slavearbiterlockenable2;
  wire             Pushbuttons_avalon_parallel_port_slave_unreg_firsttransfer;
  wire             Pushbuttons_avalon_parallel_port_slave_waits_for_read;
  wire             Pushbuttons_avalon_parallel_port_slave_waits_for_write;
  wire             Pushbuttons_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Pushbuttons_avalon_parallel_port_slave_writedata;
  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_Pushbuttons_avalon_parallel_port_slave;
  wire             cpu_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave;
  wire             cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave;
  reg              cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register;
  wire             cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register_in;
  wire             cpu_data_master_requests_Pushbuttons_avalon_parallel_port_slave;
  wire             cpu_data_master_saved_grant_Pushbuttons_avalon_parallel_port_slave;
  reg              d1_Pushbuttons_avalon_parallel_port_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_Pushbuttons_avalon_parallel_port_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             p1_cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register;
  wire             registered_cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave;
  wire    [ 28: 0] shifted_address_to_Pushbuttons_avalon_parallel_port_slave_from_cpu_data_master;
  wire             wait_for_Pushbuttons_avalon_parallel_port_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else if (1)
          d1_reasons_to_wait <= ~Pushbuttons_avalon_parallel_port_slave_end_xfer;
    end


  assign Pushbuttons_avalon_parallel_port_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave));
  //assign Pushbuttons_avalon_parallel_port_slave_readdata_from_sa = Pushbuttons_avalon_parallel_port_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_readdata_from_sa = Pushbuttons_avalon_parallel_port_slave_readdata;

  assign cpu_data_master_requests_Pushbuttons_avalon_parallel_port_slave = ({cpu_data_master_address_to_slave[28 : 4] , 4'b0} == 29'h10000050) & (cpu_data_master_read | cpu_data_master_write);
  //registered rdv signal_name registered_cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave assignment, which is an e_assign
  assign registered_cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave = cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register_in;

  //Pushbuttons_avalon_parallel_port_slave_arb_share_counter set values, which is an e_mux
  assign Pushbuttons_avalon_parallel_port_slave_arb_share_set_values = 1;

  //Pushbuttons_avalon_parallel_port_slave_non_bursting_master_requests mux, which is an e_mux
  assign Pushbuttons_avalon_parallel_port_slave_non_bursting_master_requests = cpu_data_master_requests_Pushbuttons_avalon_parallel_port_slave;

  //Pushbuttons_avalon_parallel_port_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign Pushbuttons_avalon_parallel_port_slave_any_bursting_master_saved_grant = 0;

  //Pushbuttons_avalon_parallel_port_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_arb_share_counter_next_value = Pushbuttons_avalon_parallel_port_slave_firsttransfer ? (Pushbuttons_avalon_parallel_port_slave_arb_share_set_values - 1) : |Pushbuttons_avalon_parallel_port_slave_arb_share_counter ? (Pushbuttons_avalon_parallel_port_slave_arb_share_counter - 1) : 0;

  //Pushbuttons_avalon_parallel_port_slave_allgrants all slave grants, which is an e_mux
  assign Pushbuttons_avalon_parallel_port_slave_allgrants = |Pushbuttons_avalon_parallel_port_slave_grant_vector;

  //Pushbuttons_avalon_parallel_port_slave_end_xfer assignment, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_end_xfer = ~(Pushbuttons_avalon_parallel_port_slave_waits_for_read | Pushbuttons_avalon_parallel_port_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_Pushbuttons_avalon_parallel_port_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_Pushbuttons_avalon_parallel_port_slave = Pushbuttons_avalon_parallel_port_slave_end_xfer & (~Pushbuttons_avalon_parallel_port_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //Pushbuttons_avalon_parallel_port_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_Pushbuttons_avalon_parallel_port_slave & Pushbuttons_avalon_parallel_port_slave_allgrants) | (end_xfer_arb_share_counter_term_Pushbuttons_avalon_parallel_port_slave & ~Pushbuttons_avalon_parallel_port_slave_non_bursting_master_requests);

  //Pushbuttons_avalon_parallel_port_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Pushbuttons_avalon_parallel_port_slave_arb_share_counter <= 0;
      else if (Pushbuttons_avalon_parallel_port_slave_arb_counter_enable)
          Pushbuttons_avalon_parallel_port_slave_arb_share_counter <= Pushbuttons_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //Pushbuttons_avalon_parallel_port_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Pushbuttons_avalon_parallel_port_slave_slavearbiterlockenable <= 0;
      else if ((|Pushbuttons_avalon_parallel_port_slave_master_qreq_vector & end_xfer_arb_share_counter_term_Pushbuttons_avalon_parallel_port_slave) | (end_xfer_arb_share_counter_term_Pushbuttons_avalon_parallel_port_slave & ~Pushbuttons_avalon_parallel_port_slave_non_bursting_master_requests))
          Pushbuttons_avalon_parallel_port_slave_slavearbiterlockenable <= |Pushbuttons_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //cpu/data_master Pushbuttons/avalon_parallel_port_slave arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = Pushbuttons_avalon_parallel_port_slave_slavearbiterlockenable & cpu_data_master_continuerequest;

  //Pushbuttons_avalon_parallel_port_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_slavearbiterlockenable2 = |Pushbuttons_avalon_parallel_port_slave_arb_share_counter_next_value;

  //cpu/data_master Pushbuttons/avalon_parallel_port_slave arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = Pushbuttons_avalon_parallel_port_slave_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //Pushbuttons_avalon_parallel_port_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave = cpu_data_master_requests_Pushbuttons_avalon_parallel_port_slave & ~((cpu_data_master_read & ((|cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register))) | ((~cpu_data_master_waitrequest) & cpu_data_master_write));
  //cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register_in = cpu_data_master_granted_Pushbuttons_avalon_parallel_port_slave & cpu_data_master_read & ~Pushbuttons_avalon_parallel_port_slave_waits_for_read & ~(|cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register);

  //shift register p1 cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register = {cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register, cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register_in};

  //cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register <= 0;
      else if (1)
          cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register <= p1_cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register;
    end


  //local readdatavalid cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave, which is an e_mux
  assign cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave = cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave_shift_register;

  //Pushbuttons_avalon_parallel_port_slave_writedata mux, which is an e_mux
  assign Pushbuttons_avalon_parallel_port_slave_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_Pushbuttons_avalon_parallel_port_slave = cpu_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave;

  //cpu/data_master saved-grant Pushbuttons/avalon_parallel_port_slave, which is an e_assign
  assign cpu_data_master_saved_grant_Pushbuttons_avalon_parallel_port_slave = cpu_data_master_requests_Pushbuttons_avalon_parallel_port_slave;

  //allow new arb cycle for Pushbuttons/avalon_parallel_port_slave, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign Pushbuttons_avalon_parallel_port_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign Pushbuttons_avalon_parallel_port_slave_master_qreq_vector = 1;

  assign Pushbuttons_avalon_parallel_port_slave_chipselect = cpu_data_master_granted_Pushbuttons_avalon_parallel_port_slave;
  //Pushbuttons_avalon_parallel_port_slave_firsttransfer first transaction, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_firsttransfer = Pushbuttons_avalon_parallel_port_slave_begins_xfer ? Pushbuttons_avalon_parallel_port_slave_unreg_firsttransfer : Pushbuttons_avalon_parallel_port_slave_reg_firsttransfer;

  //Pushbuttons_avalon_parallel_port_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_unreg_firsttransfer = ~(Pushbuttons_avalon_parallel_port_slave_slavearbiterlockenable & Pushbuttons_avalon_parallel_port_slave_any_continuerequest);

  //Pushbuttons_avalon_parallel_port_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Pushbuttons_avalon_parallel_port_slave_reg_firsttransfer <= 1'b1;
      else if (Pushbuttons_avalon_parallel_port_slave_begins_xfer)
          Pushbuttons_avalon_parallel_port_slave_reg_firsttransfer <= Pushbuttons_avalon_parallel_port_slave_unreg_firsttransfer;
    end


  //Pushbuttons_avalon_parallel_port_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_beginbursttransfer_internal = Pushbuttons_avalon_parallel_port_slave_begins_xfer;

  //Pushbuttons_avalon_parallel_port_slave_read assignment, which is an e_mux
  assign Pushbuttons_avalon_parallel_port_slave_read = cpu_data_master_granted_Pushbuttons_avalon_parallel_port_slave & cpu_data_master_read;

  //Pushbuttons_avalon_parallel_port_slave_write assignment, which is an e_mux
  assign Pushbuttons_avalon_parallel_port_slave_write = cpu_data_master_granted_Pushbuttons_avalon_parallel_port_slave & cpu_data_master_write;

  assign shifted_address_to_Pushbuttons_avalon_parallel_port_slave_from_cpu_data_master = cpu_data_master_address_to_slave;
  //Pushbuttons_avalon_parallel_port_slave_address mux, which is an e_mux
  assign Pushbuttons_avalon_parallel_port_slave_address = shifted_address_to_Pushbuttons_avalon_parallel_port_slave_from_cpu_data_master >> 2;

  //d1_Pushbuttons_avalon_parallel_port_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_Pushbuttons_avalon_parallel_port_slave_end_xfer <= 1;
      else if (1)
          d1_Pushbuttons_avalon_parallel_port_slave_end_xfer <= Pushbuttons_avalon_parallel_port_slave_end_xfer;
    end


  //Pushbuttons_avalon_parallel_port_slave_waits_for_read in a cycle, which is an e_mux
  assign Pushbuttons_avalon_parallel_port_slave_waits_for_read = Pushbuttons_avalon_parallel_port_slave_in_a_read_cycle & 0;

  //Pushbuttons_avalon_parallel_port_slave_in_a_read_cycle assignment, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_in_a_read_cycle = cpu_data_master_granted_Pushbuttons_avalon_parallel_port_slave & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = Pushbuttons_avalon_parallel_port_slave_in_a_read_cycle;

  //Pushbuttons_avalon_parallel_port_slave_waits_for_write in a cycle, which is an e_mux
  assign Pushbuttons_avalon_parallel_port_slave_waits_for_write = Pushbuttons_avalon_parallel_port_slave_in_a_write_cycle & 0;

  //Pushbuttons_avalon_parallel_port_slave_in_a_write_cycle assignment, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_in_a_write_cycle = cpu_data_master_granted_Pushbuttons_avalon_parallel_port_slave & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = Pushbuttons_avalon_parallel_port_slave_in_a_write_cycle;

  assign wait_for_Pushbuttons_avalon_parallel_port_slave_counter = 0;
  //Pushbuttons_avalon_parallel_port_slave_byteenable byte enable port mux, which is an e_mux
  assign Pushbuttons_avalon_parallel_port_slave_byteenable = (cpu_data_master_granted_Pushbuttons_avalon_parallel_port_slave)? cpu_data_master_byteenable :
    -1;

  //assign Pushbuttons_avalon_parallel_port_slave_irq_from_sa = Pushbuttons_avalon_parallel_port_slave_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Pushbuttons_avalon_parallel_port_slave_irq_from_sa = Pushbuttons_avalon_parallel_port_slave_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //Pushbuttons/avalon_parallel_port_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else if (1)
          enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module Red_LEDs_avalon_parallel_port_slave_arbitrator (
                                                        // inputs:
                                                         Red_LEDs_avalon_parallel_port_slave_readdata,
                                                         clk,
                                                         cpu_data_master_address_to_slave,
                                                         cpu_data_master_byteenable,
                                                         cpu_data_master_read,
                                                         cpu_data_master_waitrequest,
                                                         cpu_data_master_write,
                                                         cpu_data_master_writedata,
                                                         reset_n,

                                                        // outputs:
                                                         Red_LEDs_avalon_parallel_port_slave_address,
                                                         Red_LEDs_avalon_parallel_port_slave_byteenable,
                                                         Red_LEDs_avalon_parallel_port_slave_chipselect,
                                                         Red_LEDs_avalon_parallel_port_slave_read,
                                                         Red_LEDs_avalon_parallel_port_slave_readdata_from_sa,
                                                         Red_LEDs_avalon_parallel_port_slave_write,
                                                         Red_LEDs_avalon_parallel_port_slave_writedata,
                                                         cpu_data_master_granted_Red_LEDs_avalon_parallel_port_slave,
                                                         cpu_data_master_qualified_request_Red_LEDs_avalon_parallel_port_slave,
                                                         cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave,
                                                         cpu_data_master_requests_Red_LEDs_avalon_parallel_port_slave,
                                                         d1_Red_LEDs_avalon_parallel_port_slave_end_xfer,
                                                         registered_cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave
                                                      )
  /* synthesis auto_dissolve = "FALSE" */ ;

  output  [  1: 0] Red_LEDs_avalon_parallel_port_slave_address;
  output  [  3: 0] Red_LEDs_avalon_parallel_port_slave_byteenable;
  output           Red_LEDs_avalon_parallel_port_slave_chipselect;
  output           Red_LEDs_avalon_parallel_port_slave_read;
  output  [ 31: 0] Red_LEDs_avalon_parallel_port_slave_readdata_from_sa;
  output           Red_LEDs_avalon_parallel_port_slave_write;
  output  [ 31: 0] Red_LEDs_avalon_parallel_port_slave_writedata;
  output           cpu_data_master_granted_Red_LEDs_avalon_parallel_port_slave;
  output           cpu_data_master_qualified_request_Red_LEDs_avalon_parallel_port_slave;
  output           cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave;
  output           cpu_data_master_requests_Red_LEDs_avalon_parallel_port_slave;
  output           d1_Red_LEDs_avalon_parallel_port_slave_end_xfer;
  output           registered_cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave;
  input   [ 31: 0] Red_LEDs_avalon_parallel_port_slave_readdata;
  input            clk;
  input   [ 28: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;

  wire    [  1: 0] Red_LEDs_avalon_parallel_port_slave_address;
  wire             Red_LEDs_avalon_parallel_port_slave_allgrants;
  wire             Red_LEDs_avalon_parallel_port_slave_allow_new_arb_cycle;
  wire             Red_LEDs_avalon_parallel_port_slave_any_bursting_master_saved_grant;
  wire             Red_LEDs_avalon_parallel_port_slave_any_continuerequest;
  wire             Red_LEDs_avalon_parallel_port_slave_arb_counter_enable;
  reg     [  1: 0] Red_LEDs_avalon_parallel_port_slave_arb_share_counter;
  wire    [  1: 0] Red_LEDs_avalon_parallel_port_slave_arb_share_counter_next_value;
  wire    [  1: 0] Red_LEDs_avalon_parallel_port_slave_arb_share_set_values;
  wire             Red_LEDs_avalon_parallel_port_slave_beginbursttransfer_internal;
  wire             Red_LEDs_avalon_parallel_port_slave_begins_xfer;
  wire    [  3: 0] Red_LEDs_avalon_parallel_port_slave_byteenable;
  wire             Red_LEDs_avalon_parallel_port_slave_chipselect;
  wire             Red_LEDs_avalon_parallel_port_slave_end_xfer;
  wire             Red_LEDs_avalon_parallel_port_slave_firsttransfer;
  wire             Red_LEDs_avalon_parallel_port_slave_grant_vector;
  wire             Red_LEDs_avalon_parallel_port_slave_in_a_read_cycle;
  wire             Red_LEDs_avalon_parallel_port_slave_in_a_write_cycle;
  wire             Red_LEDs_avalon_parallel_port_slave_master_qreq_vector;
  wire             Red_LEDs_avalon_parallel_port_slave_non_bursting_master_requests;
  wire             Red_LEDs_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Red_LEDs_avalon_parallel_port_slave_readdata_from_sa;
  reg              Red_LEDs_avalon_parallel_port_slave_reg_firsttransfer;
  reg              Red_LEDs_avalon_parallel_port_slave_slavearbiterlockenable;
  wire             Red_LEDs_avalon_parallel_port_slave_slavearbiterlockenable2;
  wire             Red_LEDs_avalon_parallel_port_slave_unreg_firsttransfer;
  wire             Red_LEDs_avalon_parallel_port_slave_waits_for_read;
  wire             Red_LEDs_avalon_parallel_port_slave_waits_for_write;
  wire             Red_LEDs_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Red_LEDs_avalon_parallel_port_slave_writedata;
  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_Red_LEDs_avalon_parallel_port_slave;
  wire             cpu_data_master_qualified_request_Red_LEDs_avalon_parallel_port_slave;
  wire             cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave;
  reg              cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave_shift_register;
  wire             cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave_shift_register_in;
  wire             cpu_data_master_requests_Red_LEDs_avalon_parallel_port_slave;
  wire             cpu_data_master_saved_grant_Red_LEDs_avalon_parallel_port_slave;
  reg              d1_Red_LEDs_avalon_parallel_port_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_Red_LEDs_avalon_parallel_port_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             p1_cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave_shift_register;
  wire             registered_cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave;
  wire    [ 28: 0] shifted_address_to_Red_LEDs_avalon_parallel_port_slave_from_cpu_data_master;
  wire             wait_for_Red_LEDs_avalon_parallel_port_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else if (1)
          d1_reasons_to_wait <= ~Red_LEDs_avalon_parallel_port_slave_end_xfer;
    end


  assign Red_LEDs_avalon_parallel_port_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_Red_LEDs_avalon_parallel_port_slave));
  //assign Red_LEDs_avalon_parallel_port_slave_readdata_from_sa = Red_LEDs_avalon_parallel_port_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Red_LEDs_avalon_parallel_port_slave_readdata_from_sa = Red_LEDs_avalon_parallel_port_slave_readdata;

  assign cpu_data_master_requests_Red_LEDs_avalon_parallel_port_slave = ({cpu_data_master_address_to_slave[28 : 4] , 4'b0} == 29'h10000000) & (cpu_data_master_read | cpu_data_master_write);
  //registered rdv signal_name registered_cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave assignment, which is an e_assign
  assign registered_cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave = cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave_shift_register_in;

  //Red_LEDs_avalon_parallel_port_slave_arb_share_counter set values, which is an e_mux
  assign Red_LEDs_avalon_parallel_port_slave_arb_share_set_values = 1;

  //Red_LEDs_avalon_parallel_port_slave_non_bursting_master_requests mux, which is an e_mux
  assign Red_LEDs_avalon_parallel_port_slave_non_bursting_master_requests = cpu_data_master_requests_Red_LEDs_avalon_parallel_port_slave;

  //Red_LEDs_avalon_parallel_port_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign Red_LEDs_avalon_parallel_port_slave_any_bursting_master_saved_grant = 0;

  //Red_LEDs_avalon_parallel_port_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign Red_LEDs_avalon_parallel_port_slave_arb_share_counter_next_value = Red_LEDs_avalon_parallel_port_slave_firsttransfer ? (Red_LEDs_avalon_parallel_port_slave_arb_share_set_values - 1) : |Red_LEDs_avalon_parallel_port_slave_arb_share_counter ? (Red_LEDs_avalon_parallel_port_slave_arb_share_counter - 1) : 0;

  //Red_LEDs_avalon_parallel_port_slave_allgrants all slave grants, which is an e_mux
  assign Red_LEDs_avalon_parallel_port_slave_allgrants = |Red_LEDs_avalon_parallel_port_slave_grant_vector;

  //Red_LEDs_avalon_parallel_port_slave_end_xfer assignment, which is an e_assign
  assign Red_LEDs_avalon_parallel_port_slave_end_xfer = ~(Red_LEDs_avalon_parallel_port_slave_waits_for_read | Red_LEDs_avalon_parallel_port_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_Red_LEDs_avalon_parallel_port_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_Red_LEDs_avalon_parallel_port_slave = Red_LEDs_avalon_parallel_port_slave_end_xfer & (~Red_LEDs_avalon_parallel_port_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //Red_LEDs_avalon_parallel_port_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign Red_LEDs_avalon_parallel_port_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_Red_LEDs_avalon_parallel_port_slave & Red_LEDs_avalon_parallel_port_slave_allgrants) | (end_xfer_arb_share_counter_term_Red_LEDs_avalon_parallel_port_slave & ~Red_LEDs_avalon_parallel_port_slave_non_bursting_master_requests);

  //Red_LEDs_avalon_parallel_port_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Red_LEDs_avalon_parallel_port_slave_arb_share_counter <= 0;
      else if (Red_LEDs_avalon_parallel_port_slave_arb_counter_enable)
          Red_LEDs_avalon_parallel_port_slave_arb_share_counter <= Red_LEDs_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //Red_LEDs_avalon_parallel_port_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Red_LEDs_avalon_parallel_port_slave_slavearbiterlockenable <= 0;
      else if ((|Red_LEDs_avalon_parallel_port_slave_master_qreq_vector & end_xfer_arb_share_counter_term_Red_LEDs_avalon_parallel_port_slave) | (end_xfer_arb_share_counter_term_Red_LEDs_avalon_parallel_port_slave & ~Red_LEDs_avalon_parallel_port_slave_non_bursting_master_requests))
          Red_LEDs_avalon_parallel_port_slave_slavearbiterlockenable <= |Red_LEDs_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //cpu/data_master Red_LEDs/avalon_parallel_port_slave arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = Red_LEDs_avalon_parallel_port_slave_slavearbiterlockenable & cpu_data_master_continuerequest;

  //Red_LEDs_avalon_parallel_port_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign Red_LEDs_avalon_parallel_port_slave_slavearbiterlockenable2 = |Red_LEDs_avalon_parallel_port_slave_arb_share_counter_next_value;

  //cpu/data_master Red_LEDs/avalon_parallel_port_slave arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = Red_LEDs_avalon_parallel_port_slave_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //Red_LEDs_avalon_parallel_port_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign Red_LEDs_avalon_parallel_port_slave_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_Red_LEDs_avalon_parallel_port_slave = cpu_data_master_requests_Red_LEDs_avalon_parallel_port_slave & ~((cpu_data_master_read & ((|cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave_shift_register))) | ((~cpu_data_master_waitrequest) & cpu_data_master_write));
  //cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave_shift_register_in = cpu_data_master_granted_Red_LEDs_avalon_parallel_port_slave & cpu_data_master_read & ~Red_LEDs_avalon_parallel_port_slave_waits_for_read & ~(|cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave_shift_register);

  //shift register p1 cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave_shift_register = {cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave_shift_register, cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave_shift_register_in};

  //cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave_shift_register <= 0;
      else if (1)
          cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave_shift_register <= p1_cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave_shift_register;
    end


  //local readdatavalid cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave, which is an e_mux
  assign cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave = cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave_shift_register;

  //Red_LEDs_avalon_parallel_port_slave_writedata mux, which is an e_mux
  assign Red_LEDs_avalon_parallel_port_slave_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_Red_LEDs_avalon_parallel_port_slave = cpu_data_master_qualified_request_Red_LEDs_avalon_parallel_port_slave;

  //cpu/data_master saved-grant Red_LEDs/avalon_parallel_port_slave, which is an e_assign
  assign cpu_data_master_saved_grant_Red_LEDs_avalon_parallel_port_slave = cpu_data_master_requests_Red_LEDs_avalon_parallel_port_slave;

  //allow new arb cycle for Red_LEDs/avalon_parallel_port_slave, which is an e_assign
  assign Red_LEDs_avalon_parallel_port_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign Red_LEDs_avalon_parallel_port_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign Red_LEDs_avalon_parallel_port_slave_master_qreq_vector = 1;

  assign Red_LEDs_avalon_parallel_port_slave_chipselect = cpu_data_master_granted_Red_LEDs_avalon_parallel_port_slave;
  //Red_LEDs_avalon_parallel_port_slave_firsttransfer first transaction, which is an e_assign
  assign Red_LEDs_avalon_parallel_port_slave_firsttransfer = Red_LEDs_avalon_parallel_port_slave_begins_xfer ? Red_LEDs_avalon_parallel_port_slave_unreg_firsttransfer : Red_LEDs_avalon_parallel_port_slave_reg_firsttransfer;

  //Red_LEDs_avalon_parallel_port_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign Red_LEDs_avalon_parallel_port_slave_unreg_firsttransfer = ~(Red_LEDs_avalon_parallel_port_slave_slavearbiterlockenable & Red_LEDs_avalon_parallel_port_slave_any_continuerequest);

  //Red_LEDs_avalon_parallel_port_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Red_LEDs_avalon_parallel_port_slave_reg_firsttransfer <= 1'b1;
      else if (Red_LEDs_avalon_parallel_port_slave_begins_xfer)
          Red_LEDs_avalon_parallel_port_slave_reg_firsttransfer <= Red_LEDs_avalon_parallel_port_slave_unreg_firsttransfer;
    end


  //Red_LEDs_avalon_parallel_port_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign Red_LEDs_avalon_parallel_port_slave_beginbursttransfer_internal = Red_LEDs_avalon_parallel_port_slave_begins_xfer;

  //Red_LEDs_avalon_parallel_port_slave_read assignment, which is an e_mux
  assign Red_LEDs_avalon_parallel_port_slave_read = cpu_data_master_granted_Red_LEDs_avalon_parallel_port_slave & cpu_data_master_read;

  //Red_LEDs_avalon_parallel_port_slave_write assignment, which is an e_mux
  assign Red_LEDs_avalon_parallel_port_slave_write = cpu_data_master_granted_Red_LEDs_avalon_parallel_port_slave & cpu_data_master_write;

  assign shifted_address_to_Red_LEDs_avalon_parallel_port_slave_from_cpu_data_master = cpu_data_master_address_to_slave;
  //Red_LEDs_avalon_parallel_port_slave_address mux, which is an e_mux
  assign Red_LEDs_avalon_parallel_port_slave_address = shifted_address_to_Red_LEDs_avalon_parallel_port_slave_from_cpu_data_master >> 2;

  //d1_Red_LEDs_avalon_parallel_port_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_Red_LEDs_avalon_parallel_port_slave_end_xfer <= 1;
      else if (1)
          d1_Red_LEDs_avalon_parallel_port_slave_end_xfer <= Red_LEDs_avalon_parallel_port_slave_end_xfer;
    end


  //Red_LEDs_avalon_parallel_port_slave_waits_for_read in a cycle, which is an e_mux
  assign Red_LEDs_avalon_parallel_port_slave_waits_for_read = Red_LEDs_avalon_parallel_port_slave_in_a_read_cycle & 0;

  //Red_LEDs_avalon_parallel_port_slave_in_a_read_cycle assignment, which is an e_assign
  assign Red_LEDs_avalon_parallel_port_slave_in_a_read_cycle = cpu_data_master_granted_Red_LEDs_avalon_parallel_port_slave & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = Red_LEDs_avalon_parallel_port_slave_in_a_read_cycle;

  //Red_LEDs_avalon_parallel_port_slave_waits_for_write in a cycle, which is an e_mux
  assign Red_LEDs_avalon_parallel_port_slave_waits_for_write = Red_LEDs_avalon_parallel_port_slave_in_a_write_cycle & 0;

  //Red_LEDs_avalon_parallel_port_slave_in_a_write_cycle assignment, which is an e_assign
  assign Red_LEDs_avalon_parallel_port_slave_in_a_write_cycle = cpu_data_master_granted_Red_LEDs_avalon_parallel_port_slave & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = Red_LEDs_avalon_parallel_port_slave_in_a_write_cycle;

  assign wait_for_Red_LEDs_avalon_parallel_port_slave_counter = 0;
  //Red_LEDs_avalon_parallel_port_slave_byteenable byte enable port mux, which is an e_mux
  assign Red_LEDs_avalon_parallel_port_slave_byteenable = (cpu_data_master_granted_Red_LEDs_avalon_parallel_port_slave)? cpu_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //Red_LEDs/avalon_parallel_port_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else if (1)
          enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module SRAM_avalon_sram_slave_arbitrator (
                                           // inputs:
                                            SRAM_avalon_sram_slave_readdata,
                                            clk,
                                            cpu_data_master_address_to_slave,
                                            cpu_data_master_byteenable,
                                            cpu_data_master_dbs_address,
                                            cpu_data_master_dbs_write_16,
                                            cpu_data_master_no_byte_enables_and_last_term,
                                            cpu_data_master_read,
                                            cpu_data_master_waitrequest,
                                            cpu_data_master_write,
                                            cpu_instruction_master_address_to_slave,
                                            cpu_instruction_master_dbs_address,
                                            cpu_instruction_master_latency_counter,
                                            cpu_instruction_master_read,
                                            reset_n,

                                           // outputs:
                                            SRAM_avalon_sram_slave_address,
                                            SRAM_avalon_sram_slave_byteenable,
                                            SRAM_avalon_sram_slave_chipselect,
                                            SRAM_avalon_sram_slave_read,
                                            SRAM_avalon_sram_slave_readdata_from_sa,
                                            SRAM_avalon_sram_slave_write,
                                            SRAM_avalon_sram_slave_writedata,
                                            cpu_data_master_byteenable_SRAM_avalon_sram_slave,
                                            cpu_data_master_granted_SRAM_avalon_sram_slave,
                                            cpu_data_master_qualified_request_SRAM_avalon_sram_slave,
                                            cpu_data_master_read_data_valid_SRAM_avalon_sram_slave,
                                            cpu_data_master_requests_SRAM_avalon_sram_slave,
                                            cpu_instruction_master_granted_SRAM_avalon_sram_slave,
                                            cpu_instruction_master_qualified_request_SRAM_avalon_sram_slave,
                                            cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave,
                                            cpu_instruction_master_requests_SRAM_avalon_sram_slave,
                                            d1_SRAM_avalon_sram_slave_end_xfer,
                                            registered_cpu_data_master_read_data_valid_SRAM_avalon_sram_slave
                                         )
  /* synthesis auto_dissolve = "FALSE" */ ;

  output  [ 17: 0] SRAM_avalon_sram_slave_address;
  output  [  1: 0] SRAM_avalon_sram_slave_byteenable;
  output           SRAM_avalon_sram_slave_chipselect;
  output           SRAM_avalon_sram_slave_read;
  output  [ 15: 0] SRAM_avalon_sram_slave_readdata_from_sa;
  output           SRAM_avalon_sram_slave_write;
  output  [ 15: 0] SRAM_avalon_sram_slave_writedata;
  output  [  1: 0] cpu_data_master_byteenable_SRAM_avalon_sram_slave;
  output           cpu_data_master_granted_SRAM_avalon_sram_slave;
  output           cpu_data_master_qualified_request_SRAM_avalon_sram_slave;
  output           cpu_data_master_read_data_valid_SRAM_avalon_sram_slave;
  output           cpu_data_master_requests_SRAM_avalon_sram_slave;
  output           cpu_instruction_master_granted_SRAM_avalon_sram_slave;
  output           cpu_instruction_master_qualified_request_SRAM_avalon_sram_slave;
  output           cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave;
  output           cpu_instruction_master_requests_SRAM_avalon_sram_slave;
  output           d1_SRAM_avalon_sram_slave_end_xfer;
  output           registered_cpu_data_master_read_data_valid_SRAM_avalon_sram_slave;
  input   [ 15: 0] SRAM_avalon_sram_slave_readdata;
  input            clk;
  input   [ 28: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input   [  1: 0] cpu_data_master_dbs_address;
  input   [ 15: 0] cpu_data_master_dbs_write_16;
  input            cpu_data_master_no_byte_enables_and_last_term;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 27: 0] cpu_instruction_master_address_to_slave;
  input   [  1: 0] cpu_instruction_master_dbs_address;
  input   [  1: 0] cpu_instruction_master_latency_counter;
  input            cpu_instruction_master_read;
  input            reset_n;

  wire    [ 17: 0] SRAM_avalon_sram_slave_address;
  wire             SRAM_avalon_sram_slave_allgrants;
  wire             SRAM_avalon_sram_slave_allow_new_arb_cycle;
  wire             SRAM_avalon_sram_slave_any_bursting_master_saved_grant;
  wire             SRAM_avalon_sram_slave_any_continuerequest;
  reg     [  1: 0] SRAM_avalon_sram_slave_arb_addend;
  wire             SRAM_avalon_sram_slave_arb_counter_enable;
  reg     [  1: 0] SRAM_avalon_sram_slave_arb_share_counter;
  wire    [  1: 0] SRAM_avalon_sram_slave_arb_share_counter_next_value;
  wire    [  1: 0] SRAM_avalon_sram_slave_arb_share_set_values;
  wire    [  1: 0] SRAM_avalon_sram_slave_arb_winner;
  wire             SRAM_avalon_sram_slave_arbitration_holdoff_internal;
  wire             SRAM_avalon_sram_slave_beginbursttransfer_internal;
  wire             SRAM_avalon_sram_slave_begins_xfer;
  wire    [  1: 0] SRAM_avalon_sram_slave_byteenable;
  wire             SRAM_avalon_sram_slave_chipselect;
  wire    [  3: 0] SRAM_avalon_sram_slave_chosen_master_double_vector;
  wire    [  1: 0] SRAM_avalon_sram_slave_chosen_master_rot_left;
  wire             SRAM_avalon_sram_slave_end_xfer;
  wire             SRAM_avalon_sram_slave_firsttransfer;
  wire    [  1: 0] SRAM_avalon_sram_slave_grant_vector;
  wire             SRAM_avalon_sram_slave_in_a_read_cycle;
  wire             SRAM_avalon_sram_slave_in_a_write_cycle;
  wire    [  1: 0] SRAM_avalon_sram_slave_master_qreq_vector;
  wire             SRAM_avalon_sram_slave_non_bursting_master_requests;
  wire             SRAM_avalon_sram_slave_read;
  wire    [ 15: 0] SRAM_avalon_sram_slave_readdata_from_sa;
  reg              SRAM_avalon_sram_slave_reg_firsttransfer;
  reg     [  1: 0] SRAM_avalon_sram_slave_saved_chosen_master_vector;
  reg              SRAM_avalon_sram_slave_slavearbiterlockenable;
  wire             SRAM_avalon_sram_slave_slavearbiterlockenable2;
  wire             SRAM_avalon_sram_slave_unreg_firsttransfer;
  wire             SRAM_avalon_sram_slave_waits_for_read;
  wire             SRAM_avalon_sram_slave_waits_for_write;
  wire             SRAM_avalon_sram_slave_write;
  wire    [ 15: 0] SRAM_avalon_sram_slave_writedata;
  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire    [  1: 0] cpu_data_master_byteenable_SRAM_avalon_sram_slave;
  wire    [  1: 0] cpu_data_master_byteenable_SRAM_avalon_sram_slave_segment_0;
  wire    [  1: 0] cpu_data_master_byteenable_SRAM_avalon_sram_slave_segment_1;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_SRAM_avalon_sram_slave;
  wire             cpu_data_master_qualified_request_SRAM_avalon_sram_slave;
  wire             cpu_data_master_read_data_valid_SRAM_avalon_sram_slave;
  reg     [  1: 0] cpu_data_master_read_data_valid_SRAM_avalon_sram_slave_shift_register;
  wire             cpu_data_master_read_data_valid_SRAM_avalon_sram_slave_shift_register_in;
  wire             cpu_data_master_requests_SRAM_avalon_sram_slave;
  wire             cpu_data_master_saved_grant_SRAM_avalon_sram_slave;
  wire             cpu_instruction_master_arbiterlock;
  wire             cpu_instruction_master_arbiterlock2;
  wire             cpu_instruction_master_continuerequest;
  wire             cpu_instruction_master_granted_SRAM_avalon_sram_slave;
  wire             cpu_instruction_master_qualified_request_SRAM_avalon_sram_slave;
  wire             cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave;
  reg     [  1: 0] cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave_shift_register;
  wire             cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave_shift_register_in;
  wire             cpu_instruction_master_requests_SRAM_avalon_sram_slave;
  wire             cpu_instruction_master_saved_grant_SRAM_avalon_sram_slave;
  reg              d1_SRAM_avalon_sram_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_SRAM_avalon_sram_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg              last_cycle_cpu_data_master_granted_slave_SRAM_avalon_sram_slave;
  reg              last_cycle_cpu_instruction_master_granted_slave_SRAM_avalon_sram_slave;
  wire    [  1: 0] p1_cpu_data_master_read_data_valid_SRAM_avalon_sram_slave_shift_register;
  wire    [  1: 0] p1_cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave_shift_register;
  wire             registered_cpu_data_master_read_data_valid_SRAM_avalon_sram_slave;
  wire    [ 28: 0] shifted_address_to_SRAM_avalon_sram_slave_from_cpu_data_master;
  wire    [ 27: 0] shifted_address_to_SRAM_avalon_sram_slave_from_cpu_instruction_master;
  wire             wait_for_SRAM_avalon_sram_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else if (1)
          d1_reasons_to_wait <= ~SRAM_avalon_sram_slave_end_xfer;
    end


  assign SRAM_avalon_sram_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_SRAM_avalon_sram_slave | cpu_instruction_master_qualified_request_SRAM_avalon_sram_slave));
  //assign SRAM_avalon_sram_slave_readdata_from_sa = SRAM_avalon_sram_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign SRAM_avalon_sram_slave_readdata_from_sa = SRAM_avalon_sram_slave_readdata;

  assign cpu_data_master_requests_SRAM_avalon_sram_slave = ({cpu_data_master_address_to_slave[28 : 19] , 19'b0} == 29'h8000000) & (cpu_data_master_read | cpu_data_master_write);
  //registered rdv signal_name registered_cpu_data_master_read_data_valid_SRAM_avalon_sram_slave assignment, which is an e_assign
  assign registered_cpu_data_master_read_data_valid_SRAM_avalon_sram_slave = cpu_data_master_read_data_valid_SRAM_avalon_sram_slave_shift_register[0];

  //SRAM_avalon_sram_slave_arb_share_counter set values, which is an e_mux
  assign SRAM_avalon_sram_slave_arb_share_set_values = (cpu_data_master_granted_SRAM_avalon_sram_slave)? 2 :
    (cpu_instruction_master_granted_SRAM_avalon_sram_slave)? 2 :
    (cpu_data_master_granted_SRAM_avalon_sram_slave)? 2 :
    (cpu_instruction_master_granted_SRAM_avalon_sram_slave)? 2 :
    1;

  //SRAM_avalon_sram_slave_non_bursting_master_requests mux, which is an e_mux
  assign SRAM_avalon_sram_slave_non_bursting_master_requests = cpu_data_master_requests_SRAM_avalon_sram_slave |
    cpu_instruction_master_requests_SRAM_avalon_sram_slave |
    cpu_data_master_requests_SRAM_avalon_sram_slave |
    cpu_instruction_master_requests_SRAM_avalon_sram_slave;

  //SRAM_avalon_sram_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign SRAM_avalon_sram_slave_any_bursting_master_saved_grant = 0;

  //SRAM_avalon_sram_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign SRAM_avalon_sram_slave_arb_share_counter_next_value = SRAM_avalon_sram_slave_firsttransfer ? (SRAM_avalon_sram_slave_arb_share_set_values - 1) : |SRAM_avalon_sram_slave_arb_share_counter ? (SRAM_avalon_sram_slave_arb_share_counter - 1) : 0;

  //SRAM_avalon_sram_slave_allgrants all slave grants, which is an e_mux
  assign SRAM_avalon_sram_slave_allgrants = |SRAM_avalon_sram_slave_grant_vector |
    |SRAM_avalon_sram_slave_grant_vector |
    |SRAM_avalon_sram_slave_grant_vector |
    |SRAM_avalon_sram_slave_grant_vector;

  //SRAM_avalon_sram_slave_end_xfer assignment, which is an e_assign
  assign SRAM_avalon_sram_slave_end_xfer = ~(SRAM_avalon_sram_slave_waits_for_read | SRAM_avalon_sram_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_SRAM_avalon_sram_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_SRAM_avalon_sram_slave = SRAM_avalon_sram_slave_end_xfer & (~SRAM_avalon_sram_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //SRAM_avalon_sram_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign SRAM_avalon_sram_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_SRAM_avalon_sram_slave & SRAM_avalon_sram_slave_allgrants) | (end_xfer_arb_share_counter_term_SRAM_avalon_sram_slave & ~SRAM_avalon_sram_slave_non_bursting_master_requests);

  //SRAM_avalon_sram_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          SRAM_avalon_sram_slave_arb_share_counter <= 0;
      else if (SRAM_avalon_sram_slave_arb_counter_enable)
          SRAM_avalon_sram_slave_arb_share_counter <= SRAM_avalon_sram_slave_arb_share_counter_next_value;
    end


  //SRAM_avalon_sram_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          SRAM_avalon_sram_slave_slavearbiterlockenable <= 0;
      else if ((|SRAM_avalon_sram_slave_master_qreq_vector & end_xfer_arb_share_counter_term_SRAM_avalon_sram_slave) | (end_xfer_arb_share_counter_term_SRAM_avalon_sram_slave & ~SRAM_avalon_sram_slave_non_bursting_master_requests))
          SRAM_avalon_sram_slave_slavearbiterlockenable <= |SRAM_avalon_sram_slave_arb_share_counter_next_value;
    end


  //cpu/data_master SRAM/avalon_sram_slave arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = SRAM_avalon_sram_slave_slavearbiterlockenable & cpu_data_master_continuerequest;

  //SRAM_avalon_sram_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign SRAM_avalon_sram_slave_slavearbiterlockenable2 = |SRAM_avalon_sram_slave_arb_share_counter_next_value;

  //cpu/data_master SRAM/avalon_sram_slave arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = SRAM_avalon_sram_slave_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //cpu/instruction_master SRAM/avalon_sram_slave arbiterlock, which is an e_assign
  assign cpu_instruction_master_arbiterlock = SRAM_avalon_sram_slave_slavearbiterlockenable & cpu_instruction_master_continuerequest;

  //cpu/instruction_master SRAM/avalon_sram_slave arbiterlock2, which is an e_assign
  assign cpu_instruction_master_arbiterlock2 = SRAM_avalon_sram_slave_slavearbiterlockenable2 & cpu_instruction_master_continuerequest;

  //cpu/instruction_master granted SRAM/avalon_sram_slave last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_instruction_master_granted_slave_SRAM_avalon_sram_slave <= 0;
      else if (1)
          last_cycle_cpu_instruction_master_granted_slave_SRAM_avalon_sram_slave <= cpu_instruction_master_saved_grant_SRAM_avalon_sram_slave ? 1 : (SRAM_avalon_sram_slave_arbitration_holdoff_internal | ~cpu_instruction_master_requests_SRAM_avalon_sram_slave) ? 0 : last_cycle_cpu_instruction_master_granted_slave_SRAM_avalon_sram_slave;
    end


  //cpu_instruction_master_continuerequest continued request, which is an e_mux
  assign cpu_instruction_master_continuerequest = last_cycle_cpu_instruction_master_granted_slave_SRAM_avalon_sram_slave & cpu_instruction_master_requests_SRAM_avalon_sram_slave;

  //SRAM_avalon_sram_slave_any_continuerequest at least one master continues requesting, which is an e_mux
  assign SRAM_avalon_sram_slave_any_continuerequest = cpu_instruction_master_continuerequest |
    cpu_data_master_continuerequest;

  assign cpu_data_master_qualified_request_SRAM_avalon_sram_slave = cpu_data_master_requests_SRAM_avalon_sram_slave & ~((cpu_data_master_read & ((|cpu_data_master_read_data_valid_SRAM_avalon_sram_slave_shift_register))) | ((~cpu_data_master_waitrequest | cpu_data_master_no_byte_enables_and_last_term | !cpu_data_master_byteenable_SRAM_avalon_sram_slave) & cpu_data_master_write) | cpu_instruction_master_arbiterlock);
  //cpu_data_master_read_data_valid_SRAM_avalon_sram_slave_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_data_master_read_data_valid_SRAM_avalon_sram_slave_shift_register_in = cpu_data_master_granted_SRAM_avalon_sram_slave & cpu_data_master_read & ~SRAM_avalon_sram_slave_waits_for_read & ~(|cpu_data_master_read_data_valid_SRAM_avalon_sram_slave_shift_register);

  //shift register p1 cpu_data_master_read_data_valid_SRAM_avalon_sram_slave_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_data_master_read_data_valid_SRAM_avalon_sram_slave_shift_register = {cpu_data_master_read_data_valid_SRAM_avalon_sram_slave_shift_register, cpu_data_master_read_data_valid_SRAM_avalon_sram_slave_shift_register_in};

  //cpu_data_master_read_data_valid_SRAM_avalon_sram_slave_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_read_data_valid_SRAM_avalon_sram_slave_shift_register <= 0;
      else if (1)
          cpu_data_master_read_data_valid_SRAM_avalon_sram_slave_shift_register <= p1_cpu_data_master_read_data_valid_SRAM_avalon_sram_slave_shift_register;
    end


  //local readdatavalid cpu_data_master_read_data_valid_SRAM_avalon_sram_slave, which is an e_mux
  assign cpu_data_master_read_data_valid_SRAM_avalon_sram_slave = cpu_data_master_read_data_valid_SRAM_avalon_sram_slave_shift_register[1];

  //SRAM_avalon_sram_slave_writedata mux, which is an e_mux
  assign SRAM_avalon_sram_slave_writedata = cpu_data_master_dbs_write_16;

  assign cpu_instruction_master_requests_SRAM_avalon_sram_slave = (({cpu_instruction_master_address_to_slave[27 : 19] , 19'b0} == 28'h8000000) & (cpu_instruction_master_read)) & cpu_instruction_master_read;
  //cpu/data_master granted SRAM/avalon_sram_slave last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_data_master_granted_slave_SRAM_avalon_sram_slave <= 0;
      else if (1)
          last_cycle_cpu_data_master_granted_slave_SRAM_avalon_sram_slave <= cpu_data_master_saved_grant_SRAM_avalon_sram_slave ? 1 : (SRAM_avalon_sram_slave_arbitration_holdoff_internal | ~cpu_data_master_requests_SRAM_avalon_sram_slave) ? 0 : last_cycle_cpu_data_master_granted_slave_SRAM_avalon_sram_slave;
    end


  //cpu_data_master_continuerequest continued request, which is an e_mux
  assign cpu_data_master_continuerequest = last_cycle_cpu_data_master_granted_slave_SRAM_avalon_sram_slave & cpu_data_master_requests_SRAM_avalon_sram_slave;

  assign cpu_instruction_master_qualified_request_SRAM_avalon_sram_slave = cpu_instruction_master_requests_SRAM_avalon_sram_slave & ~((cpu_instruction_master_read & ((2 < cpu_instruction_master_latency_counter))) | cpu_data_master_arbiterlock);
  //cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave_shift_register_in = cpu_instruction_master_granted_SRAM_avalon_sram_slave & cpu_instruction_master_read & ~SRAM_avalon_sram_slave_waits_for_read;

  //shift register p1 cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave_shift_register = {cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave_shift_register, cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave_shift_register_in};

  //cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave_shift_register <= 0;
      else if (1)
          cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave_shift_register <= p1_cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave_shift_register;
    end


  //local readdatavalid cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave, which is an e_mux
  assign cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave = cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave_shift_register[1];

  //allow new arb cycle for SRAM/avalon_sram_slave, which is an e_assign
  assign SRAM_avalon_sram_slave_allow_new_arb_cycle = ~cpu_data_master_arbiterlock & ~cpu_instruction_master_arbiterlock;

  //cpu/instruction_master assignment into master qualified-requests vector for SRAM/avalon_sram_slave, which is an e_assign
  assign SRAM_avalon_sram_slave_master_qreq_vector[0] = cpu_instruction_master_qualified_request_SRAM_avalon_sram_slave;

  //cpu/instruction_master grant SRAM/avalon_sram_slave, which is an e_assign
  assign cpu_instruction_master_granted_SRAM_avalon_sram_slave = SRAM_avalon_sram_slave_grant_vector[0];

  //cpu/instruction_master saved-grant SRAM/avalon_sram_slave, which is an e_assign
  assign cpu_instruction_master_saved_grant_SRAM_avalon_sram_slave = SRAM_avalon_sram_slave_arb_winner[0] && cpu_instruction_master_requests_SRAM_avalon_sram_slave;

  //cpu/data_master assignment into master qualified-requests vector for SRAM/avalon_sram_slave, which is an e_assign
  assign SRAM_avalon_sram_slave_master_qreq_vector[1] = cpu_data_master_qualified_request_SRAM_avalon_sram_slave;

  //cpu/data_master grant SRAM/avalon_sram_slave, which is an e_assign
  assign cpu_data_master_granted_SRAM_avalon_sram_slave = SRAM_avalon_sram_slave_grant_vector[1];

  //cpu/data_master saved-grant SRAM/avalon_sram_slave, which is an e_assign
  assign cpu_data_master_saved_grant_SRAM_avalon_sram_slave = SRAM_avalon_sram_slave_arb_winner[1] && cpu_data_master_requests_SRAM_avalon_sram_slave;

  //SRAM/avalon_sram_slave chosen-master double-vector, which is an e_assign
  assign SRAM_avalon_sram_slave_chosen_master_double_vector = {SRAM_avalon_sram_slave_master_qreq_vector, SRAM_avalon_sram_slave_master_qreq_vector} & ({~SRAM_avalon_sram_slave_master_qreq_vector, ~SRAM_avalon_sram_slave_master_qreq_vector} + SRAM_avalon_sram_slave_arb_addend);

  //stable onehot encoding of arb winner
  assign SRAM_avalon_sram_slave_arb_winner = (SRAM_avalon_sram_slave_allow_new_arb_cycle & | SRAM_avalon_sram_slave_grant_vector) ? SRAM_avalon_sram_slave_grant_vector : SRAM_avalon_sram_slave_saved_chosen_master_vector;

  //saved SRAM_avalon_sram_slave_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          SRAM_avalon_sram_slave_saved_chosen_master_vector <= 0;
      else if (SRAM_avalon_sram_slave_allow_new_arb_cycle)
          SRAM_avalon_sram_slave_saved_chosen_master_vector <= |SRAM_avalon_sram_slave_grant_vector ? SRAM_avalon_sram_slave_grant_vector : SRAM_avalon_sram_slave_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign SRAM_avalon_sram_slave_grant_vector = {(SRAM_avalon_sram_slave_chosen_master_double_vector[1] | SRAM_avalon_sram_slave_chosen_master_double_vector[3]),
    (SRAM_avalon_sram_slave_chosen_master_double_vector[0] | SRAM_avalon_sram_slave_chosen_master_double_vector[2])};

  //SRAM/avalon_sram_slave chosen master rotated left, which is an e_assign
  assign SRAM_avalon_sram_slave_chosen_master_rot_left = (SRAM_avalon_sram_slave_arb_winner << 1) ? (SRAM_avalon_sram_slave_arb_winner << 1) : 1;

  //SRAM/avalon_sram_slave's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          SRAM_avalon_sram_slave_arb_addend <= 1;
      else if (|SRAM_avalon_sram_slave_grant_vector)
          SRAM_avalon_sram_slave_arb_addend <= SRAM_avalon_sram_slave_end_xfer? SRAM_avalon_sram_slave_chosen_master_rot_left : SRAM_avalon_sram_slave_grant_vector;
    end


  assign SRAM_avalon_sram_slave_chipselect = cpu_data_master_granted_SRAM_avalon_sram_slave | cpu_instruction_master_granted_SRAM_avalon_sram_slave;
  //SRAM_avalon_sram_slave_firsttransfer first transaction, which is an e_assign
  assign SRAM_avalon_sram_slave_firsttransfer = SRAM_avalon_sram_slave_begins_xfer ? SRAM_avalon_sram_slave_unreg_firsttransfer : SRAM_avalon_sram_slave_reg_firsttransfer;

  //SRAM_avalon_sram_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign SRAM_avalon_sram_slave_unreg_firsttransfer = ~(SRAM_avalon_sram_slave_slavearbiterlockenable & SRAM_avalon_sram_slave_any_continuerequest);

  //SRAM_avalon_sram_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          SRAM_avalon_sram_slave_reg_firsttransfer <= 1'b1;
      else if (SRAM_avalon_sram_slave_begins_xfer)
          SRAM_avalon_sram_slave_reg_firsttransfer <= SRAM_avalon_sram_slave_unreg_firsttransfer;
    end


  //SRAM_avalon_sram_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign SRAM_avalon_sram_slave_beginbursttransfer_internal = SRAM_avalon_sram_slave_begins_xfer;

  //SRAM_avalon_sram_slave_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign SRAM_avalon_sram_slave_arbitration_holdoff_internal = SRAM_avalon_sram_slave_begins_xfer & SRAM_avalon_sram_slave_firsttransfer;

  //SRAM_avalon_sram_slave_read assignment, which is an e_mux
  assign SRAM_avalon_sram_slave_read = (cpu_data_master_granted_SRAM_avalon_sram_slave & cpu_data_master_read) | (cpu_instruction_master_granted_SRAM_avalon_sram_slave & cpu_instruction_master_read);

  //SRAM_avalon_sram_slave_write assignment, which is an e_mux
  assign SRAM_avalon_sram_slave_write = cpu_data_master_granted_SRAM_avalon_sram_slave & cpu_data_master_write;

  assign shifted_address_to_SRAM_avalon_sram_slave_from_cpu_data_master = {cpu_data_master_address_to_slave >> 2,
    cpu_data_master_dbs_address[1],
    {1 {1'b0}}};

  //SRAM_avalon_sram_slave_address mux, which is an e_mux
  assign SRAM_avalon_sram_slave_address = (cpu_data_master_granted_SRAM_avalon_sram_slave)? (shifted_address_to_SRAM_avalon_sram_slave_from_cpu_data_master >> 1) :
    (shifted_address_to_SRAM_avalon_sram_slave_from_cpu_instruction_master >> 1);

  assign shifted_address_to_SRAM_avalon_sram_slave_from_cpu_instruction_master = {cpu_instruction_master_address_to_slave >> 2,
    cpu_instruction_master_dbs_address[1],
    {1 {1'b0}}};

  //d1_SRAM_avalon_sram_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_SRAM_avalon_sram_slave_end_xfer <= 1;
      else if (1)
          d1_SRAM_avalon_sram_slave_end_xfer <= SRAM_avalon_sram_slave_end_xfer;
    end


  //SRAM_avalon_sram_slave_waits_for_read in a cycle, which is an e_mux
  assign SRAM_avalon_sram_slave_waits_for_read = SRAM_avalon_sram_slave_in_a_read_cycle & 0;

  //SRAM_avalon_sram_slave_in_a_read_cycle assignment, which is an e_assign
  assign SRAM_avalon_sram_slave_in_a_read_cycle = (cpu_data_master_granted_SRAM_avalon_sram_slave & cpu_data_master_read) | (cpu_instruction_master_granted_SRAM_avalon_sram_slave & cpu_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = SRAM_avalon_sram_slave_in_a_read_cycle;

  //SRAM_avalon_sram_slave_waits_for_write in a cycle, which is an e_mux
  assign SRAM_avalon_sram_slave_waits_for_write = SRAM_avalon_sram_slave_in_a_write_cycle & 0;

  //SRAM_avalon_sram_slave_in_a_write_cycle assignment, which is an e_assign
  assign SRAM_avalon_sram_slave_in_a_write_cycle = cpu_data_master_granted_SRAM_avalon_sram_slave & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = SRAM_avalon_sram_slave_in_a_write_cycle;

  assign wait_for_SRAM_avalon_sram_slave_counter = 0;
  //SRAM_avalon_sram_slave_byteenable byte enable port mux, which is an e_mux
  assign SRAM_avalon_sram_slave_byteenable = (cpu_data_master_granted_SRAM_avalon_sram_slave)? cpu_data_master_byteenable_SRAM_avalon_sram_slave :
    -1;

  assign {cpu_data_master_byteenable_SRAM_avalon_sram_slave_segment_1,
cpu_data_master_byteenable_SRAM_avalon_sram_slave_segment_0} = cpu_data_master_byteenable;
  assign cpu_data_master_byteenable_SRAM_avalon_sram_slave = ((cpu_data_master_dbs_address[1] == 0))? cpu_data_master_byteenable_SRAM_avalon_sram_slave_segment_0 :
    cpu_data_master_byteenable_SRAM_avalon_sram_slave_segment_1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //SRAM/avalon_sram_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else if (1)
          enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_granted_SRAM_avalon_sram_slave + cpu_instruction_master_granted_SRAM_avalon_sram_slave > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_saved_grant_SRAM_avalon_sram_slave + cpu_instruction_master_saved_grant_SRAM_avalon_sram_slave > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module Serial_port_avalon_rs232_slave_arbitrator (
                                                   // inputs:
                                                    Serial_port_avalon_rs232_slave_irq,
                                                    Serial_port_avalon_rs232_slave_readdata,
                                                    clk,
                                                    cpu_data_master_address_to_slave,
                                                    cpu_data_master_byteenable,
                                                    cpu_data_master_read,
                                                    cpu_data_master_waitrequest,
                                                    cpu_data_master_write,
                                                    cpu_data_master_writedata,
                                                    reset_n,

                                                   // outputs:
                                                    Serial_port_avalon_rs232_slave_address,
                                                    Serial_port_avalon_rs232_slave_byteenable,
                                                    Serial_port_avalon_rs232_slave_chipselect,
                                                    Serial_port_avalon_rs232_slave_irq_from_sa,
                                                    Serial_port_avalon_rs232_slave_read,
                                                    Serial_port_avalon_rs232_slave_readdata_from_sa,
                                                    Serial_port_avalon_rs232_slave_write,
                                                    Serial_port_avalon_rs232_slave_writedata,
                                                    cpu_data_master_granted_Serial_port_avalon_rs232_slave,
                                                    cpu_data_master_qualified_request_Serial_port_avalon_rs232_slave,
                                                    cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave,
                                                    cpu_data_master_requests_Serial_port_avalon_rs232_slave,
                                                    d1_Serial_port_avalon_rs232_slave_end_xfer,
                                                    registered_cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave
                                                 )
  /* synthesis auto_dissolve = "FALSE" */ ;

  output           Serial_port_avalon_rs232_slave_address;
  output  [  3: 0] Serial_port_avalon_rs232_slave_byteenable;
  output           Serial_port_avalon_rs232_slave_chipselect;
  output           Serial_port_avalon_rs232_slave_irq_from_sa;
  output           Serial_port_avalon_rs232_slave_read;
  output  [ 31: 0] Serial_port_avalon_rs232_slave_readdata_from_sa;
  output           Serial_port_avalon_rs232_slave_write;
  output  [ 31: 0] Serial_port_avalon_rs232_slave_writedata;
  output           cpu_data_master_granted_Serial_port_avalon_rs232_slave;
  output           cpu_data_master_qualified_request_Serial_port_avalon_rs232_slave;
  output           cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave;
  output           cpu_data_master_requests_Serial_port_avalon_rs232_slave;
  output           d1_Serial_port_avalon_rs232_slave_end_xfer;
  output           registered_cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave;
  input            Serial_port_avalon_rs232_slave_irq;
  input   [ 31: 0] Serial_port_avalon_rs232_slave_readdata;
  input            clk;
  input   [ 28: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;

  wire             Serial_port_avalon_rs232_slave_address;
  wire             Serial_port_avalon_rs232_slave_allgrants;
  wire             Serial_port_avalon_rs232_slave_allow_new_arb_cycle;
  wire             Serial_port_avalon_rs232_slave_any_bursting_master_saved_grant;
  wire             Serial_port_avalon_rs232_slave_any_continuerequest;
  wire             Serial_port_avalon_rs232_slave_arb_counter_enable;
  reg     [  1: 0] Serial_port_avalon_rs232_slave_arb_share_counter;
  wire    [  1: 0] Serial_port_avalon_rs232_slave_arb_share_counter_next_value;
  wire    [  1: 0] Serial_port_avalon_rs232_slave_arb_share_set_values;
  wire             Serial_port_avalon_rs232_slave_beginbursttransfer_internal;
  wire             Serial_port_avalon_rs232_slave_begins_xfer;
  wire    [  3: 0] Serial_port_avalon_rs232_slave_byteenable;
  wire             Serial_port_avalon_rs232_slave_chipselect;
  wire             Serial_port_avalon_rs232_slave_end_xfer;
  wire             Serial_port_avalon_rs232_slave_firsttransfer;
  wire             Serial_port_avalon_rs232_slave_grant_vector;
  wire             Serial_port_avalon_rs232_slave_in_a_read_cycle;
  wire             Serial_port_avalon_rs232_slave_in_a_write_cycle;
  wire             Serial_port_avalon_rs232_slave_irq_from_sa;
  wire             Serial_port_avalon_rs232_slave_master_qreq_vector;
  wire             Serial_port_avalon_rs232_slave_non_bursting_master_requests;
  wire             Serial_port_avalon_rs232_slave_read;
  wire    [ 31: 0] Serial_port_avalon_rs232_slave_readdata_from_sa;
  reg              Serial_port_avalon_rs232_slave_reg_firsttransfer;
  reg              Serial_port_avalon_rs232_slave_slavearbiterlockenable;
  wire             Serial_port_avalon_rs232_slave_slavearbiterlockenable2;
  wire             Serial_port_avalon_rs232_slave_unreg_firsttransfer;
  wire             Serial_port_avalon_rs232_slave_waits_for_read;
  wire             Serial_port_avalon_rs232_slave_waits_for_write;
  wire             Serial_port_avalon_rs232_slave_write;
  wire    [ 31: 0] Serial_port_avalon_rs232_slave_writedata;
  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_Serial_port_avalon_rs232_slave;
  wire             cpu_data_master_qualified_request_Serial_port_avalon_rs232_slave;
  wire             cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave;
  reg              cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave_shift_register;
  wire             cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave_shift_register_in;
  wire             cpu_data_master_requests_Serial_port_avalon_rs232_slave;
  wire             cpu_data_master_saved_grant_Serial_port_avalon_rs232_slave;
  reg              d1_Serial_port_avalon_rs232_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_Serial_port_avalon_rs232_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             p1_cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave_shift_register;
  wire             registered_cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave;
  wire    [ 28: 0] shifted_address_to_Serial_port_avalon_rs232_slave_from_cpu_data_master;
  wire             wait_for_Serial_port_avalon_rs232_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else if (1)
          d1_reasons_to_wait <= ~Serial_port_avalon_rs232_slave_end_xfer;
    end


  assign Serial_port_avalon_rs232_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_Serial_port_avalon_rs232_slave));
  //assign Serial_port_avalon_rs232_slave_readdata_from_sa = Serial_port_avalon_rs232_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Serial_port_avalon_rs232_slave_readdata_from_sa = Serial_port_avalon_rs232_slave_readdata;

  assign cpu_data_master_requests_Serial_port_avalon_rs232_slave = ({cpu_data_master_address_to_slave[28 : 3] , 3'b0} == 29'h10001010) & (cpu_data_master_read | cpu_data_master_write);
  //registered rdv signal_name registered_cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave assignment, which is an e_assign
  assign registered_cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave = cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave_shift_register_in;

  //Serial_port_avalon_rs232_slave_arb_share_counter set values, which is an e_mux
  assign Serial_port_avalon_rs232_slave_arb_share_set_values = 1;

  //Serial_port_avalon_rs232_slave_non_bursting_master_requests mux, which is an e_mux
  assign Serial_port_avalon_rs232_slave_non_bursting_master_requests = cpu_data_master_requests_Serial_port_avalon_rs232_slave;

  //Serial_port_avalon_rs232_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign Serial_port_avalon_rs232_slave_any_bursting_master_saved_grant = 0;

  //Serial_port_avalon_rs232_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign Serial_port_avalon_rs232_slave_arb_share_counter_next_value = Serial_port_avalon_rs232_slave_firsttransfer ? (Serial_port_avalon_rs232_slave_arb_share_set_values - 1) : |Serial_port_avalon_rs232_slave_arb_share_counter ? (Serial_port_avalon_rs232_slave_arb_share_counter - 1) : 0;

  //Serial_port_avalon_rs232_slave_allgrants all slave grants, which is an e_mux
  assign Serial_port_avalon_rs232_slave_allgrants = |Serial_port_avalon_rs232_slave_grant_vector;

  //Serial_port_avalon_rs232_slave_end_xfer assignment, which is an e_assign
  assign Serial_port_avalon_rs232_slave_end_xfer = ~(Serial_port_avalon_rs232_slave_waits_for_read | Serial_port_avalon_rs232_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_Serial_port_avalon_rs232_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_Serial_port_avalon_rs232_slave = Serial_port_avalon_rs232_slave_end_xfer & (~Serial_port_avalon_rs232_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //Serial_port_avalon_rs232_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign Serial_port_avalon_rs232_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_Serial_port_avalon_rs232_slave & Serial_port_avalon_rs232_slave_allgrants) | (end_xfer_arb_share_counter_term_Serial_port_avalon_rs232_slave & ~Serial_port_avalon_rs232_slave_non_bursting_master_requests);

  //Serial_port_avalon_rs232_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Serial_port_avalon_rs232_slave_arb_share_counter <= 0;
      else if (Serial_port_avalon_rs232_slave_arb_counter_enable)
          Serial_port_avalon_rs232_slave_arb_share_counter <= Serial_port_avalon_rs232_slave_arb_share_counter_next_value;
    end


  //Serial_port_avalon_rs232_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Serial_port_avalon_rs232_slave_slavearbiterlockenable <= 0;
      else if ((|Serial_port_avalon_rs232_slave_master_qreq_vector & end_xfer_arb_share_counter_term_Serial_port_avalon_rs232_slave) | (end_xfer_arb_share_counter_term_Serial_port_avalon_rs232_slave & ~Serial_port_avalon_rs232_slave_non_bursting_master_requests))
          Serial_port_avalon_rs232_slave_slavearbiterlockenable <= |Serial_port_avalon_rs232_slave_arb_share_counter_next_value;
    end


  //cpu/data_master Serial_port/avalon_rs232_slave arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = Serial_port_avalon_rs232_slave_slavearbiterlockenable & cpu_data_master_continuerequest;

  //Serial_port_avalon_rs232_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign Serial_port_avalon_rs232_slave_slavearbiterlockenable2 = |Serial_port_avalon_rs232_slave_arb_share_counter_next_value;

  //cpu/data_master Serial_port/avalon_rs232_slave arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = Serial_port_avalon_rs232_slave_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //Serial_port_avalon_rs232_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign Serial_port_avalon_rs232_slave_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_Serial_port_avalon_rs232_slave = cpu_data_master_requests_Serial_port_avalon_rs232_slave & ~((cpu_data_master_read & ((|cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave_shift_register))) | ((~cpu_data_master_waitrequest) & cpu_data_master_write));
  //cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave_shift_register_in = cpu_data_master_granted_Serial_port_avalon_rs232_slave & cpu_data_master_read & ~Serial_port_avalon_rs232_slave_waits_for_read & ~(|cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave_shift_register);

  //shift register p1 cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave_shift_register = {cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave_shift_register, cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave_shift_register_in};

  //cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave_shift_register <= 0;
      else if (1)
          cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave_shift_register <= p1_cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave_shift_register;
    end


  //local readdatavalid cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave, which is an e_mux
  assign cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave = cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave_shift_register;

  //Serial_port_avalon_rs232_slave_writedata mux, which is an e_mux
  assign Serial_port_avalon_rs232_slave_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_Serial_port_avalon_rs232_slave = cpu_data_master_qualified_request_Serial_port_avalon_rs232_slave;

  //cpu/data_master saved-grant Serial_port/avalon_rs232_slave, which is an e_assign
  assign cpu_data_master_saved_grant_Serial_port_avalon_rs232_slave = cpu_data_master_requests_Serial_port_avalon_rs232_slave;

  //allow new arb cycle for Serial_port/avalon_rs232_slave, which is an e_assign
  assign Serial_port_avalon_rs232_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign Serial_port_avalon_rs232_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign Serial_port_avalon_rs232_slave_master_qreq_vector = 1;

  assign Serial_port_avalon_rs232_slave_chipselect = cpu_data_master_granted_Serial_port_avalon_rs232_slave;
  //Serial_port_avalon_rs232_slave_firsttransfer first transaction, which is an e_assign
  assign Serial_port_avalon_rs232_slave_firsttransfer = Serial_port_avalon_rs232_slave_begins_xfer ? Serial_port_avalon_rs232_slave_unreg_firsttransfer : Serial_port_avalon_rs232_slave_reg_firsttransfer;

  //Serial_port_avalon_rs232_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign Serial_port_avalon_rs232_slave_unreg_firsttransfer = ~(Serial_port_avalon_rs232_slave_slavearbiterlockenable & Serial_port_avalon_rs232_slave_any_continuerequest);

  //Serial_port_avalon_rs232_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Serial_port_avalon_rs232_slave_reg_firsttransfer <= 1'b1;
      else if (Serial_port_avalon_rs232_slave_begins_xfer)
          Serial_port_avalon_rs232_slave_reg_firsttransfer <= Serial_port_avalon_rs232_slave_unreg_firsttransfer;
    end


  //Serial_port_avalon_rs232_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign Serial_port_avalon_rs232_slave_beginbursttransfer_internal = Serial_port_avalon_rs232_slave_begins_xfer;

  //Serial_port_avalon_rs232_slave_read assignment, which is an e_mux
  assign Serial_port_avalon_rs232_slave_read = cpu_data_master_granted_Serial_port_avalon_rs232_slave & cpu_data_master_read;

  //Serial_port_avalon_rs232_slave_write assignment, which is an e_mux
  assign Serial_port_avalon_rs232_slave_write = cpu_data_master_granted_Serial_port_avalon_rs232_slave & cpu_data_master_write;

  assign shifted_address_to_Serial_port_avalon_rs232_slave_from_cpu_data_master = cpu_data_master_address_to_slave;
  //Serial_port_avalon_rs232_slave_address mux, which is an e_mux
  assign Serial_port_avalon_rs232_slave_address = shifted_address_to_Serial_port_avalon_rs232_slave_from_cpu_data_master >> 2;

  //d1_Serial_port_avalon_rs232_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_Serial_port_avalon_rs232_slave_end_xfer <= 1;
      else if (1)
          d1_Serial_port_avalon_rs232_slave_end_xfer <= Serial_port_avalon_rs232_slave_end_xfer;
    end


  //Serial_port_avalon_rs232_slave_waits_for_read in a cycle, which is an e_mux
  assign Serial_port_avalon_rs232_slave_waits_for_read = Serial_port_avalon_rs232_slave_in_a_read_cycle & 0;

  //Serial_port_avalon_rs232_slave_in_a_read_cycle assignment, which is an e_assign
  assign Serial_port_avalon_rs232_slave_in_a_read_cycle = cpu_data_master_granted_Serial_port_avalon_rs232_slave & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = Serial_port_avalon_rs232_slave_in_a_read_cycle;

  //Serial_port_avalon_rs232_slave_waits_for_write in a cycle, which is an e_mux
  assign Serial_port_avalon_rs232_slave_waits_for_write = Serial_port_avalon_rs232_slave_in_a_write_cycle & 0;

  //Serial_port_avalon_rs232_slave_in_a_write_cycle assignment, which is an e_assign
  assign Serial_port_avalon_rs232_slave_in_a_write_cycle = cpu_data_master_granted_Serial_port_avalon_rs232_slave & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = Serial_port_avalon_rs232_slave_in_a_write_cycle;

  assign wait_for_Serial_port_avalon_rs232_slave_counter = 0;
  //Serial_port_avalon_rs232_slave_byteenable byte enable port mux, which is an e_mux
  assign Serial_port_avalon_rs232_slave_byteenable = (cpu_data_master_granted_Serial_port_avalon_rs232_slave)? cpu_data_master_byteenable :
    -1;

  //assign Serial_port_avalon_rs232_slave_irq_from_sa = Serial_port_avalon_rs232_slave_irq so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Serial_port_avalon_rs232_slave_irq_from_sa = Serial_port_avalon_rs232_slave_irq;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //Serial_port/avalon_rs232_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else if (1)
          enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module Slider_switches_avalon_parallel_port_slave_arbitrator (
                                                               // inputs:
                                                                Slider_switches_avalon_parallel_port_slave_readdata,
                                                                clk,
                                                                cpu_data_master_address_to_slave,
                                                                cpu_data_master_byteenable,
                                                                cpu_data_master_read,
                                                                cpu_data_master_waitrequest,
                                                                cpu_data_master_write,
                                                                cpu_data_master_writedata,
                                                                reset_n,

                                                               // outputs:
                                                                Slider_switches_avalon_parallel_port_slave_address,
                                                                Slider_switches_avalon_parallel_port_slave_byteenable,
                                                                Slider_switches_avalon_parallel_port_slave_chipselect,
                                                                Slider_switches_avalon_parallel_port_slave_read,
                                                                Slider_switches_avalon_parallel_port_slave_readdata_from_sa,
                                                                Slider_switches_avalon_parallel_port_slave_write,
                                                                Slider_switches_avalon_parallel_port_slave_writedata,
                                                                cpu_data_master_granted_Slider_switches_avalon_parallel_port_slave,
                                                                cpu_data_master_qualified_request_Slider_switches_avalon_parallel_port_slave,
                                                                cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave,
                                                                cpu_data_master_requests_Slider_switches_avalon_parallel_port_slave,
                                                                d1_Slider_switches_avalon_parallel_port_slave_end_xfer,
                                                                registered_cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave
                                                             )
  /* synthesis auto_dissolve = "FALSE" */ ;

  output  [  1: 0] Slider_switches_avalon_parallel_port_slave_address;
  output  [  3: 0] Slider_switches_avalon_parallel_port_slave_byteenable;
  output           Slider_switches_avalon_parallel_port_slave_chipselect;
  output           Slider_switches_avalon_parallel_port_slave_read;
  output  [ 31: 0] Slider_switches_avalon_parallel_port_slave_readdata_from_sa;
  output           Slider_switches_avalon_parallel_port_slave_write;
  output  [ 31: 0] Slider_switches_avalon_parallel_port_slave_writedata;
  output           cpu_data_master_granted_Slider_switches_avalon_parallel_port_slave;
  output           cpu_data_master_qualified_request_Slider_switches_avalon_parallel_port_slave;
  output           cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave;
  output           cpu_data_master_requests_Slider_switches_avalon_parallel_port_slave;
  output           d1_Slider_switches_avalon_parallel_port_slave_end_xfer;
  output           registered_cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave;
  input   [ 31: 0] Slider_switches_avalon_parallel_port_slave_readdata;
  input            clk;
  input   [ 28: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input            reset_n;

  wire    [  1: 0] Slider_switches_avalon_parallel_port_slave_address;
  wire             Slider_switches_avalon_parallel_port_slave_allgrants;
  wire             Slider_switches_avalon_parallel_port_slave_allow_new_arb_cycle;
  wire             Slider_switches_avalon_parallel_port_slave_any_bursting_master_saved_grant;
  wire             Slider_switches_avalon_parallel_port_slave_any_continuerequest;
  wire             Slider_switches_avalon_parallel_port_slave_arb_counter_enable;
  reg     [  1: 0] Slider_switches_avalon_parallel_port_slave_arb_share_counter;
  wire    [  1: 0] Slider_switches_avalon_parallel_port_slave_arb_share_counter_next_value;
  wire    [  1: 0] Slider_switches_avalon_parallel_port_slave_arb_share_set_values;
  wire             Slider_switches_avalon_parallel_port_slave_beginbursttransfer_internal;
  wire             Slider_switches_avalon_parallel_port_slave_begins_xfer;
  wire    [  3: 0] Slider_switches_avalon_parallel_port_slave_byteenable;
  wire             Slider_switches_avalon_parallel_port_slave_chipselect;
  wire             Slider_switches_avalon_parallel_port_slave_end_xfer;
  wire             Slider_switches_avalon_parallel_port_slave_firsttransfer;
  wire             Slider_switches_avalon_parallel_port_slave_grant_vector;
  wire             Slider_switches_avalon_parallel_port_slave_in_a_read_cycle;
  wire             Slider_switches_avalon_parallel_port_slave_in_a_write_cycle;
  wire             Slider_switches_avalon_parallel_port_slave_master_qreq_vector;
  wire             Slider_switches_avalon_parallel_port_slave_non_bursting_master_requests;
  wire             Slider_switches_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Slider_switches_avalon_parallel_port_slave_readdata_from_sa;
  reg              Slider_switches_avalon_parallel_port_slave_reg_firsttransfer;
  reg              Slider_switches_avalon_parallel_port_slave_slavearbiterlockenable;
  wire             Slider_switches_avalon_parallel_port_slave_slavearbiterlockenable2;
  wire             Slider_switches_avalon_parallel_port_slave_unreg_firsttransfer;
  wire             Slider_switches_avalon_parallel_port_slave_waits_for_read;
  wire             Slider_switches_avalon_parallel_port_slave_waits_for_write;
  wire             Slider_switches_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Slider_switches_avalon_parallel_port_slave_writedata;
  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_Slider_switches_avalon_parallel_port_slave;
  wire             cpu_data_master_qualified_request_Slider_switches_avalon_parallel_port_slave;
  wire             cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave;
  reg              cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave_shift_register;
  wire             cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave_shift_register_in;
  wire             cpu_data_master_requests_Slider_switches_avalon_parallel_port_slave;
  wire             cpu_data_master_saved_grant_Slider_switches_avalon_parallel_port_slave;
  reg              d1_Slider_switches_avalon_parallel_port_slave_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_Slider_switches_avalon_parallel_port_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire             p1_cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave_shift_register;
  wire             registered_cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave;
  wire    [ 28: 0] shifted_address_to_Slider_switches_avalon_parallel_port_slave_from_cpu_data_master;
  wire             wait_for_Slider_switches_avalon_parallel_port_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else if (1)
          d1_reasons_to_wait <= ~Slider_switches_avalon_parallel_port_slave_end_xfer;
    end


  assign Slider_switches_avalon_parallel_port_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_Slider_switches_avalon_parallel_port_slave));
  //assign Slider_switches_avalon_parallel_port_slave_readdata_from_sa = Slider_switches_avalon_parallel_port_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign Slider_switches_avalon_parallel_port_slave_readdata_from_sa = Slider_switches_avalon_parallel_port_slave_readdata;

  assign cpu_data_master_requests_Slider_switches_avalon_parallel_port_slave = ({cpu_data_master_address_to_slave[28 : 4] , 4'b0} == 29'h10000040) & (cpu_data_master_read | cpu_data_master_write);
  //registered rdv signal_name registered_cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave assignment, which is an e_assign
  assign registered_cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave = cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave_shift_register_in;

  //Slider_switches_avalon_parallel_port_slave_arb_share_counter set values, which is an e_mux
  assign Slider_switches_avalon_parallel_port_slave_arb_share_set_values = 1;

  //Slider_switches_avalon_parallel_port_slave_non_bursting_master_requests mux, which is an e_mux
  assign Slider_switches_avalon_parallel_port_slave_non_bursting_master_requests = cpu_data_master_requests_Slider_switches_avalon_parallel_port_slave;

  //Slider_switches_avalon_parallel_port_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign Slider_switches_avalon_parallel_port_slave_any_bursting_master_saved_grant = 0;

  //Slider_switches_avalon_parallel_port_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign Slider_switches_avalon_parallel_port_slave_arb_share_counter_next_value = Slider_switches_avalon_parallel_port_slave_firsttransfer ? (Slider_switches_avalon_parallel_port_slave_arb_share_set_values - 1) : |Slider_switches_avalon_parallel_port_slave_arb_share_counter ? (Slider_switches_avalon_parallel_port_slave_arb_share_counter - 1) : 0;

  //Slider_switches_avalon_parallel_port_slave_allgrants all slave grants, which is an e_mux
  assign Slider_switches_avalon_parallel_port_slave_allgrants = |Slider_switches_avalon_parallel_port_slave_grant_vector;

  //Slider_switches_avalon_parallel_port_slave_end_xfer assignment, which is an e_assign
  assign Slider_switches_avalon_parallel_port_slave_end_xfer = ~(Slider_switches_avalon_parallel_port_slave_waits_for_read | Slider_switches_avalon_parallel_port_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_Slider_switches_avalon_parallel_port_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_Slider_switches_avalon_parallel_port_slave = Slider_switches_avalon_parallel_port_slave_end_xfer & (~Slider_switches_avalon_parallel_port_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //Slider_switches_avalon_parallel_port_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign Slider_switches_avalon_parallel_port_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_Slider_switches_avalon_parallel_port_slave & Slider_switches_avalon_parallel_port_slave_allgrants) | (end_xfer_arb_share_counter_term_Slider_switches_avalon_parallel_port_slave & ~Slider_switches_avalon_parallel_port_slave_non_bursting_master_requests);

  //Slider_switches_avalon_parallel_port_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Slider_switches_avalon_parallel_port_slave_arb_share_counter <= 0;
      else if (Slider_switches_avalon_parallel_port_slave_arb_counter_enable)
          Slider_switches_avalon_parallel_port_slave_arb_share_counter <= Slider_switches_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //Slider_switches_avalon_parallel_port_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Slider_switches_avalon_parallel_port_slave_slavearbiterlockenable <= 0;
      else if ((|Slider_switches_avalon_parallel_port_slave_master_qreq_vector & end_xfer_arb_share_counter_term_Slider_switches_avalon_parallel_port_slave) | (end_xfer_arb_share_counter_term_Slider_switches_avalon_parallel_port_slave & ~Slider_switches_avalon_parallel_port_slave_non_bursting_master_requests))
          Slider_switches_avalon_parallel_port_slave_slavearbiterlockenable <= |Slider_switches_avalon_parallel_port_slave_arb_share_counter_next_value;
    end


  //cpu/data_master Slider_switches/avalon_parallel_port_slave arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = Slider_switches_avalon_parallel_port_slave_slavearbiterlockenable & cpu_data_master_continuerequest;

  //Slider_switches_avalon_parallel_port_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign Slider_switches_avalon_parallel_port_slave_slavearbiterlockenable2 = |Slider_switches_avalon_parallel_port_slave_arb_share_counter_next_value;

  //cpu/data_master Slider_switches/avalon_parallel_port_slave arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = Slider_switches_avalon_parallel_port_slave_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //Slider_switches_avalon_parallel_port_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign Slider_switches_avalon_parallel_port_slave_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_Slider_switches_avalon_parallel_port_slave = cpu_data_master_requests_Slider_switches_avalon_parallel_port_slave & ~((cpu_data_master_read & ((|cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave_shift_register))) | ((~cpu_data_master_waitrequest) & cpu_data_master_write));
  //cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave_shift_register_in mux for readlatency shift register, which is an e_mux
  assign cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave_shift_register_in = cpu_data_master_granted_Slider_switches_avalon_parallel_port_slave & cpu_data_master_read & ~Slider_switches_avalon_parallel_port_slave_waits_for_read & ~(|cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave_shift_register);

  //shift register p1 cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave_shift_register in if flush, otherwise shift left, which is an e_mux
  assign p1_cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave_shift_register = {cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave_shift_register, cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave_shift_register_in};

  //cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave_shift_register for remembering which master asked for a fixed latency read, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave_shift_register <= 0;
      else if (1)
          cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave_shift_register <= p1_cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave_shift_register;
    end


  //local readdatavalid cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave, which is an e_mux
  assign cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave = cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave_shift_register;

  //Slider_switches_avalon_parallel_port_slave_writedata mux, which is an e_mux
  assign Slider_switches_avalon_parallel_port_slave_writedata = cpu_data_master_writedata;

  //master is always granted when requested
  assign cpu_data_master_granted_Slider_switches_avalon_parallel_port_slave = cpu_data_master_qualified_request_Slider_switches_avalon_parallel_port_slave;

  //cpu/data_master saved-grant Slider_switches/avalon_parallel_port_slave, which is an e_assign
  assign cpu_data_master_saved_grant_Slider_switches_avalon_parallel_port_slave = cpu_data_master_requests_Slider_switches_avalon_parallel_port_slave;

  //allow new arb cycle for Slider_switches/avalon_parallel_port_slave, which is an e_assign
  assign Slider_switches_avalon_parallel_port_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign Slider_switches_avalon_parallel_port_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign Slider_switches_avalon_parallel_port_slave_master_qreq_vector = 1;

  assign Slider_switches_avalon_parallel_port_slave_chipselect = cpu_data_master_granted_Slider_switches_avalon_parallel_port_slave;
  //Slider_switches_avalon_parallel_port_slave_firsttransfer first transaction, which is an e_assign
  assign Slider_switches_avalon_parallel_port_slave_firsttransfer = Slider_switches_avalon_parallel_port_slave_begins_xfer ? Slider_switches_avalon_parallel_port_slave_unreg_firsttransfer : Slider_switches_avalon_parallel_port_slave_reg_firsttransfer;

  //Slider_switches_avalon_parallel_port_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign Slider_switches_avalon_parallel_port_slave_unreg_firsttransfer = ~(Slider_switches_avalon_parallel_port_slave_slavearbiterlockenable & Slider_switches_avalon_parallel_port_slave_any_continuerequest);

  //Slider_switches_avalon_parallel_port_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          Slider_switches_avalon_parallel_port_slave_reg_firsttransfer <= 1'b1;
      else if (Slider_switches_avalon_parallel_port_slave_begins_xfer)
          Slider_switches_avalon_parallel_port_slave_reg_firsttransfer <= Slider_switches_avalon_parallel_port_slave_unreg_firsttransfer;
    end


  //Slider_switches_avalon_parallel_port_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign Slider_switches_avalon_parallel_port_slave_beginbursttransfer_internal = Slider_switches_avalon_parallel_port_slave_begins_xfer;

  //Slider_switches_avalon_parallel_port_slave_read assignment, which is an e_mux
  assign Slider_switches_avalon_parallel_port_slave_read = cpu_data_master_granted_Slider_switches_avalon_parallel_port_slave & cpu_data_master_read;

  //Slider_switches_avalon_parallel_port_slave_write assignment, which is an e_mux
  assign Slider_switches_avalon_parallel_port_slave_write = cpu_data_master_granted_Slider_switches_avalon_parallel_port_slave & cpu_data_master_write;

  assign shifted_address_to_Slider_switches_avalon_parallel_port_slave_from_cpu_data_master = cpu_data_master_address_to_slave;
  //Slider_switches_avalon_parallel_port_slave_address mux, which is an e_mux
  assign Slider_switches_avalon_parallel_port_slave_address = shifted_address_to_Slider_switches_avalon_parallel_port_slave_from_cpu_data_master >> 2;

  //d1_Slider_switches_avalon_parallel_port_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_Slider_switches_avalon_parallel_port_slave_end_xfer <= 1;
      else if (1)
          d1_Slider_switches_avalon_parallel_port_slave_end_xfer <= Slider_switches_avalon_parallel_port_slave_end_xfer;
    end


  //Slider_switches_avalon_parallel_port_slave_waits_for_read in a cycle, which is an e_mux
  assign Slider_switches_avalon_parallel_port_slave_waits_for_read = Slider_switches_avalon_parallel_port_slave_in_a_read_cycle & 0;

  //Slider_switches_avalon_parallel_port_slave_in_a_read_cycle assignment, which is an e_assign
  assign Slider_switches_avalon_parallel_port_slave_in_a_read_cycle = cpu_data_master_granted_Slider_switches_avalon_parallel_port_slave & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = Slider_switches_avalon_parallel_port_slave_in_a_read_cycle;

  //Slider_switches_avalon_parallel_port_slave_waits_for_write in a cycle, which is an e_mux
  assign Slider_switches_avalon_parallel_port_slave_waits_for_write = Slider_switches_avalon_parallel_port_slave_in_a_write_cycle & 0;

  //Slider_switches_avalon_parallel_port_slave_in_a_write_cycle assignment, which is an e_assign
  assign Slider_switches_avalon_parallel_port_slave_in_a_write_cycle = cpu_data_master_granted_Slider_switches_avalon_parallel_port_slave & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = Slider_switches_avalon_parallel_port_slave_in_a_write_cycle;

  assign wait_for_Slider_switches_avalon_parallel_port_slave_counter = 0;
  //Slider_switches_avalon_parallel_port_slave_byteenable byte enable port mux, which is an e_mux
  assign Slider_switches_avalon_parallel_port_slave_byteenable = (cpu_data_master_granted_Slider_switches_avalon_parallel_port_slave)? cpu_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //Slider_switches/avalon_parallel_port_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else if (1)
          enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_jtag_debug_module_arbitrator (
                                          // inputs:
                                           clk,
                                           cpu_data_master_address_to_slave,
                                           cpu_data_master_byteenable,
                                           cpu_data_master_debugaccess,
                                           cpu_data_master_read,
                                           cpu_data_master_waitrequest,
                                           cpu_data_master_write,
                                           cpu_data_master_writedata,
                                           cpu_instruction_master_address_to_slave,
                                           cpu_instruction_master_latency_counter,
                                           cpu_instruction_master_read,
                                           cpu_jtag_debug_module_readdata,
                                           cpu_jtag_debug_module_resetrequest,
                                           reset_n,

                                          // outputs:
                                           cpu_data_master_granted_cpu_jtag_debug_module,
                                           cpu_data_master_qualified_request_cpu_jtag_debug_module,
                                           cpu_data_master_read_data_valid_cpu_jtag_debug_module,
                                           cpu_data_master_requests_cpu_jtag_debug_module,
                                           cpu_instruction_master_granted_cpu_jtag_debug_module,
                                           cpu_instruction_master_qualified_request_cpu_jtag_debug_module,
                                           cpu_instruction_master_read_data_valid_cpu_jtag_debug_module,
                                           cpu_instruction_master_requests_cpu_jtag_debug_module,
                                           cpu_jtag_debug_module_address,
                                           cpu_jtag_debug_module_begintransfer,
                                           cpu_jtag_debug_module_byteenable,
                                           cpu_jtag_debug_module_chipselect,
                                           cpu_jtag_debug_module_debugaccess,
                                           cpu_jtag_debug_module_readdata_from_sa,
                                           cpu_jtag_debug_module_reset,
                                           cpu_jtag_debug_module_reset_n,
                                           cpu_jtag_debug_module_resetrequest_from_sa,
                                           cpu_jtag_debug_module_write,
                                           cpu_jtag_debug_module_writedata,
                                           d1_cpu_jtag_debug_module_end_xfer
                                        )
  /* synthesis auto_dissolve = "FALSE" */ ;

  output           cpu_data_master_granted_cpu_jtag_debug_module;
  output           cpu_data_master_qualified_request_cpu_jtag_debug_module;
  output           cpu_data_master_read_data_valid_cpu_jtag_debug_module;
  output           cpu_data_master_requests_cpu_jtag_debug_module;
  output           cpu_instruction_master_granted_cpu_jtag_debug_module;
  output           cpu_instruction_master_qualified_request_cpu_jtag_debug_module;
  output           cpu_instruction_master_read_data_valid_cpu_jtag_debug_module;
  output           cpu_instruction_master_requests_cpu_jtag_debug_module;
  output  [  8: 0] cpu_jtag_debug_module_address;
  output           cpu_jtag_debug_module_begintransfer;
  output  [  3: 0] cpu_jtag_debug_module_byteenable;
  output           cpu_jtag_debug_module_chipselect;
  output           cpu_jtag_debug_module_debugaccess;
  output  [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  output           cpu_jtag_debug_module_reset;
  output           cpu_jtag_debug_module_reset_n;
  output           cpu_jtag_debug_module_resetrequest_from_sa;
  output           cpu_jtag_debug_module_write;
  output  [ 31: 0] cpu_jtag_debug_module_writedata;
  output           d1_cpu_jtag_debug_module_end_xfer;
  input            clk;
  input   [ 28: 0] cpu_data_master_address_to_slave;
  input   [  3: 0] cpu_data_master_byteenable;
  input            cpu_data_master_debugaccess;
  input            cpu_data_master_read;
  input            cpu_data_master_waitrequest;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input   [ 27: 0] cpu_instruction_master_address_to_slave;
  input   [  1: 0] cpu_instruction_master_latency_counter;
  input            cpu_instruction_master_read;
  input   [ 31: 0] cpu_jtag_debug_module_readdata;
  input            cpu_jtag_debug_module_resetrequest;
  input            reset_n;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_cpu_jtag_debug_module;
  wire             cpu_data_master_qualified_request_cpu_jtag_debug_module;
  wire             cpu_data_master_read_data_valid_cpu_jtag_debug_module;
  wire             cpu_data_master_requests_cpu_jtag_debug_module;
  wire             cpu_data_master_saved_grant_cpu_jtag_debug_module;
  wire             cpu_instruction_master_arbiterlock;
  wire             cpu_instruction_master_arbiterlock2;
  wire             cpu_instruction_master_continuerequest;
  wire             cpu_instruction_master_granted_cpu_jtag_debug_module;
  wire             cpu_instruction_master_qualified_request_cpu_jtag_debug_module;
  wire             cpu_instruction_master_read_data_valid_cpu_jtag_debug_module;
  wire             cpu_instruction_master_requests_cpu_jtag_debug_module;
  wire             cpu_instruction_master_saved_grant_cpu_jtag_debug_module;
  wire    [  8: 0] cpu_jtag_debug_module_address;
  wire             cpu_jtag_debug_module_allgrants;
  wire             cpu_jtag_debug_module_allow_new_arb_cycle;
  wire             cpu_jtag_debug_module_any_bursting_master_saved_grant;
  wire             cpu_jtag_debug_module_any_continuerequest;
  reg     [  1: 0] cpu_jtag_debug_module_arb_addend;
  wire             cpu_jtag_debug_module_arb_counter_enable;
  reg     [  1: 0] cpu_jtag_debug_module_arb_share_counter;
  wire    [  1: 0] cpu_jtag_debug_module_arb_share_counter_next_value;
  wire    [  1: 0] cpu_jtag_debug_module_arb_share_set_values;
  wire    [  1: 0] cpu_jtag_debug_module_arb_winner;
  wire             cpu_jtag_debug_module_arbitration_holdoff_internal;
  wire             cpu_jtag_debug_module_beginbursttransfer_internal;
  wire             cpu_jtag_debug_module_begins_xfer;
  wire             cpu_jtag_debug_module_begintransfer;
  wire    [  3: 0] cpu_jtag_debug_module_byteenable;
  wire             cpu_jtag_debug_module_chipselect;
  wire    [  3: 0] cpu_jtag_debug_module_chosen_master_double_vector;
  wire    [  1: 0] cpu_jtag_debug_module_chosen_master_rot_left;
  wire             cpu_jtag_debug_module_debugaccess;
  wire             cpu_jtag_debug_module_end_xfer;
  wire             cpu_jtag_debug_module_firsttransfer;
  wire    [  1: 0] cpu_jtag_debug_module_grant_vector;
  wire             cpu_jtag_debug_module_in_a_read_cycle;
  wire             cpu_jtag_debug_module_in_a_write_cycle;
  wire    [  1: 0] cpu_jtag_debug_module_master_qreq_vector;
  wire             cpu_jtag_debug_module_non_bursting_master_requests;
  wire    [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  reg              cpu_jtag_debug_module_reg_firsttransfer;
  wire             cpu_jtag_debug_module_reset;
  wire             cpu_jtag_debug_module_reset_n;
  wire             cpu_jtag_debug_module_resetrequest_from_sa;
  reg     [  1: 0] cpu_jtag_debug_module_saved_chosen_master_vector;
  reg              cpu_jtag_debug_module_slavearbiterlockenable;
  wire             cpu_jtag_debug_module_slavearbiterlockenable2;
  wire             cpu_jtag_debug_module_unreg_firsttransfer;
  wire             cpu_jtag_debug_module_waits_for_read;
  wire             cpu_jtag_debug_module_waits_for_write;
  wire             cpu_jtag_debug_module_write;
  wire    [ 31: 0] cpu_jtag_debug_module_writedata;
  reg              d1_cpu_jtag_debug_module_end_xfer;
  reg              d1_reasons_to_wait;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_cpu_jtag_debug_module;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  reg              last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module;
  reg              last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module;
  wire    [ 28: 0] shifted_address_to_cpu_jtag_debug_module_from_cpu_data_master;
  wire    [ 27: 0] shifted_address_to_cpu_jtag_debug_module_from_cpu_instruction_master;
  wire             wait_for_cpu_jtag_debug_module_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else if (1)
          d1_reasons_to_wait <= ~cpu_jtag_debug_module_end_xfer;
    end


  assign cpu_jtag_debug_module_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_cpu_jtag_debug_module | cpu_instruction_master_qualified_request_cpu_jtag_debug_module));
  //assign cpu_jtag_debug_module_readdata_from_sa = cpu_jtag_debug_module_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign cpu_jtag_debug_module_readdata_from_sa = cpu_jtag_debug_module_readdata;

  assign cpu_data_master_requests_cpu_jtag_debug_module = ({cpu_data_master_address_to_slave[28 : 11] , 11'b0} == 29'ha000000) & (cpu_data_master_read | cpu_data_master_write);
  //cpu_jtag_debug_module_arb_share_counter set values, which is an e_mux
  assign cpu_jtag_debug_module_arb_share_set_values = 1;

  //cpu_jtag_debug_module_non_bursting_master_requests mux, which is an e_mux
  assign cpu_jtag_debug_module_non_bursting_master_requests = cpu_data_master_requests_cpu_jtag_debug_module |
    cpu_instruction_master_requests_cpu_jtag_debug_module |
    cpu_data_master_requests_cpu_jtag_debug_module |
    cpu_instruction_master_requests_cpu_jtag_debug_module;

  //cpu_jtag_debug_module_any_bursting_master_saved_grant mux, which is an e_mux
  assign cpu_jtag_debug_module_any_bursting_master_saved_grant = 0;

  //cpu_jtag_debug_module_arb_share_counter_next_value assignment, which is an e_assign
  assign cpu_jtag_debug_module_arb_share_counter_next_value = cpu_jtag_debug_module_firsttransfer ? (cpu_jtag_debug_module_arb_share_set_values - 1) : |cpu_jtag_debug_module_arb_share_counter ? (cpu_jtag_debug_module_arb_share_counter - 1) : 0;

  //cpu_jtag_debug_module_allgrants all slave grants, which is an e_mux
  assign cpu_jtag_debug_module_allgrants = |cpu_jtag_debug_module_grant_vector |
    |cpu_jtag_debug_module_grant_vector |
    |cpu_jtag_debug_module_grant_vector |
    |cpu_jtag_debug_module_grant_vector;

  //cpu_jtag_debug_module_end_xfer assignment, which is an e_assign
  assign cpu_jtag_debug_module_end_xfer = ~(cpu_jtag_debug_module_waits_for_read | cpu_jtag_debug_module_waits_for_write);

  //end_xfer_arb_share_counter_term_cpu_jtag_debug_module arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_cpu_jtag_debug_module = cpu_jtag_debug_module_end_xfer & (~cpu_jtag_debug_module_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //cpu_jtag_debug_module_arb_share_counter arbitration counter enable, which is an e_assign
  assign cpu_jtag_debug_module_arb_counter_enable = (end_xfer_arb_share_counter_term_cpu_jtag_debug_module & cpu_jtag_debug_module_allgrants) | (end_xfer_arb_share_counter_term_cpu_jtag_debug_module & ~cpu_jtag_debug_module_non_bursting_master_requests);

  //cpu_jtag_debug_module_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_arb_share_counter <= 0;
      else if (cpu_jtag_debug_module_arb_counter_enable)
          cpu_jtag_debug_module_arb_share_counter <= cpu_jtag_debug_module_arb_share_counter_next_value;
    end


  //cpu_jtag_debug_module_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_slavearbiterlockenable <= 0;
      else if ((|cpu_jtag_debug_module_master_qreq_vector & end_xfer_arb_share_counter_term_cpu_jtag_debug_module) | (end_xfer_arb_share_counter_term_cpu_jtag_debug_module & ~cpu_jtag_debug_module_non_bursting_master_requests))
          cpu_jtag_debug_module_slavearbiterlockenable <= |cpu_jtag_debug_module_arb_share_counter_next_value;
    end


  //cpu/data_master cpu/jtag_debug_module arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = cpu_jtag_debug_module_slavearbiterlockenable & cpu_data_master_continuerequest;

  //cpu_jtag_debug_module_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign cpu_jtag_debug_module_slavearbiterlockenable2 = |cpu_jtag_debug_module_arb_share_counter_next_value;

  //cpu/data_master cpu/jtag_debug_module arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = cpu_jtag_debug_module_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //cpu/instruction_master cpu/jtag_debug_module arbiterlock, which is an e_assign
  assign cpu_instruction_master_arbiterlock = cpu_jtag_debug_module_slavearbiterlockenable & cpu_instruction_master_continuerequest;

  //cpu/instruction_master cpu/jtag_debug_module arbiterlock2, which is an e_assign
  assign cpu_instruction_master_arbiterlock2 = cpu_jtag_debug_module_slavearbiterlockenable2 & cpu_instruction_master_continuerequest;

  //cpu/instruction_master granted cpu/jtag_debug_module last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module <= 0;
      else if (1)
          last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module <= cpu_instruction_master_saved_grant_cpu_jtag_debug_module ? 1 : (cpu_jtag_debug_module_arbitration_holdoff_internal | ~cpu_instruction_master_requests_cpu_jtag_debug_module) ? 0 : last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module;
    end


  //cpu_instruction_master_continuerequest continued request, which is an e_mux
  assign cpu_instruction_master_continuerequest = last_cycle_cpu_instruction_master_granted_slave_cpu_jtag_debug_module & cpu_instruction_master_requests_cpu_jtag_debug_module;

  //cpu_jtag_debug_module_any_continuerequest at least one master continues requesting, which is an e_mux
  assign cpu_jtag_debug_module_any_continuerequest = cpu_instruction_master_continuerequest |
    cpu_data_master_continuerequest;

  assign cpu_data_master_qualified_request_cpu_jtag_debug_module = cpu_data_master_requests_cpu_jtag_debug_module & ~(((~cpu_data_master_waitrequest) & cpu_data_master_write) | cpu_instruction_master_arbiterlock);
  //cpu_jtag_debug_module_writedata mux, which is an e_mux
  assign cpu_jtag_debug_module_writedata = cpu_data_master_writedata;

  //mux cpu_jtag_debug_module_debugaccess, which is an e_mux
  assign cpu_jtag_debug_module_debugaccess = cpu_data_master_debugaccess;

  assign cpu_instruction_master_requests_cpu_jtag_debug_module = (({cpu_instruction_master_address_to_slave[27 : 11] , 11'b0} == 28'ha000000) & (cpu_instruction_master_read)) & cpu_instruction_master_read;
  //cpu/data_master granted cpu/jtag_debug_module last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module <= 0;
      else if (1)
          last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module <= cpu_data_master_saved_grant_cpu_jtag_debug_module ? 1 : (cpu_jtag_debug_module_arbitration_holdoff_internal | ~cpu_data_master_requests_cpu_jtag_debug_module) ? 0 : last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module;
    end


  //cpu_data_master_continuerequest continued request, which is an e_mux
  assign cpu_data_master_continuerequest = last_cycle_cpu_data_master_granted_slave_cpu_jtag_debug_module & cpu_data_master_requests_cpu_jtag_debug_module;

  assign cpu_instruction_master_qualified_request_cpu_jtag_debug_module = cpu_instruction_master_requests_cpu_jtag_debug_module & ~((cpu_instruction_master_read & ((cpu_instruction_master_latency_counter != 0))) | cpu_data_master_arbiterlock);
  //local readdatavalid cpu_instruction_master_read_data_valid_cpu_jtag_debug_module, which is an e_mux
  assign cpu_instruction_master_read_data_valid_cpu_jtag_debug_module = cpu_instruction_master_granted_cpu_jtag_debug_module & cpu_instruction_master_read & ~cpu_jtag_debug_module_waits_for_read;

  //allow new arb cycle for cpu/jtag_debug_module, which is an e_assign
  assign cpu_jtag_debug_module_allow_new_arb_cycle = ~cpu_data_master_arbiterlock & ~cpu_instruction_master_arbiterlock;

  //cpu/instruction_master assignment into master qualified-requests vector for cpu/jtag_debug_module, which is an e_assign
  assign cpu_jtag_debug_module_master_qreq_vector[0] = cpu_instruction_master_qualified_request_cpu_jtag_debug_module;

  //cpu/instruction_master grant cpu/jtag_debug_module, which is an e_assign
  assign cpu_instruction_master_granted_cpu_jtag_debug_module = cpu_jtag_debug_module_grant_vector[0];

  //cpu/instruction_master saved-grant cpu/jtag_debug_module, which is an e_assign
  assign cpu_instruction_master_saved_grant_cpu_jtag_debug_module = cpu_jtag_debug_module_arb_winner[0] && cpu_instruction_master_requests_cpu_jtag_debug_module;

  //cpu/data_master assignment into master qualified-requests vector for cpu/jtag_debug_module, which is an e_assign
  assign cpu_jtag_debug_module_master_qreq_vector[1] = cpu_data_master_qualified_request_cpu_jtag_debug_module;

  //cpu/data_master grant cpu/jtag_debug_module, which is an e_assign
  assign cpu_data_master_granted_cpu_jtag_debug_module = cpu_jtag_debug_module_grant_vector[1];

  //cpu/data_master saved-grant cpu/jtag_debug_module, which is an e_assign
  assign cpu_data_master_saved_grant_cpu_jtag_debug_module = cpu_jtag_debug_module_arb_winner[1] && cpu_data_master_requests_cpu_jtag_debug_module;

  //cpu/jtag_debug_module chosen-master double-vector, which is an e_assign
  assign cpu_jtag_debug_module_chosen_master_double_vector = {cpu_jtag_debug_module_master_qreq_vector, cpu_jtag_debug_module_master_qreq_vector} & ({~cpu_jtag_debug_module_master_qreq_vector, ~cpu_jtag_debug_module_master_qreq_vector} + cpu_jtag_debug_module_arb_addend);

  //stable onehot encoding of arb winner
  assign cpu_jtag_debug_module_arb_winner = (cpu_jtag_debug_module_allow_new_arb_cycle & | cpu_jtag_debug_module_grant_vector) ? cpu_jtag_debug_module_grant_vector : cpu_jtag_debug_module_saved_chosen_master_vector;

  //saved cpu_jtag_debug_module_grant_vector, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_saved_chosen_master_vector <= 0;
      else if (cpu_jtag_debug_module_allow_new_arb_cycle)
          cpu_jtag_debug_module_saved_chosen_master_vector <= |cpu_jtag_debug_module_grant_vector ? cpu_jtag_debug_module_grant_vector : cpu_jtag_debug_module_saved_chosen_master_vector;
    end


  //onehot encoding of chosen master
  assign cpu_jtag_debug_module_grant_vector = {(cpu_jtag_debug_module_chosen_master_double_vector[1] | cpu_jtag_debug_module_chosen_master_double_vector[3]),
    (cpu_jtag_debug_module_chosen_master_double_vector[0] | cpu_jtag_debug_module_chosen_master_double_vector[2])};

  //cpu/jtag_debug_module chosen master rotated left, which is an e_assign
  assign cpu_jtag_debug_module_chosen_master_rot_left = (cpu_jtag_debug_module_arb_winner << 1) ? (cpu_jtag_debug_module_arb_winner << 1) : 1;

  //cpu/jtag_debug_module's addend for next-master-grant
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_arb_addend <= 1;
      else if (|cpu_jtag_debug_module_grant_vector)
          cpu_jtag_debug_module_arb_addend <= cpu_jtag_debug_module_end_xfer? cpu_jtag_debug_module_chosen_master_rot_left : cpu_jtag_debug_module_grant_vector;
    end


  assign cpu_jtag_debug_module_begintransfer = cpu_jtag_debug_module_begins_xfer;
  //assign lhs ~cpu_jtag_debug_module_reset of type reset_n to cpu_jtag_debug_module_reset_n, which is an e_assign
  assign cpu_jtag_debug_module_reset = ~cpu_jtag_debug_module_reset_n;

  //cpu_jtag_debug_module_reset_n assignment, which is an e_assign
  assign cpu_jtag_debug_module_reset_n = reset_n;

  //assign cpu_jtag_debug_module_resetrequest_from_sa = cpu_jtag_debug_module_resetrequest so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign cpu_jtag_debug_module_resetrequest_from_sa = cpu_jtag_debug_module_resetrequest;

  assign cpu_jtag_debug_module_chipselect = cpu_data_master_granted_cpu_jtag_debug_module | cpu_instruction_master_granted_cpu_jtag_debug_module;
  //cpu_jtag_debug_module_firsttransfer first transaction, which is an e_assign
  assign cpu_jtag_debug_module_firsttransfer = cpu_jtag_debug_module_begins_xfer ? cpu_jtag_debug_module_unreg_firsttransfer : cpu_jtag_debug_module_reg_firsttransfer;

  //cpu_jtag_debug_module_unreg_firsttransfer first transaction, which is an e_assign
  assign cpu_jtag_debug_module_unreg_firsttransfer = ~(cpu_jtag_debug_module_slavearbiterlockenable & cpu_jtag_debug_module_any_continuerequest);

  //cpu_jtag_debug_module_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_jtag_debug_module_reg_firsttransfer <= 1'b1;
      else if (cpu_jtag_debug_module_begins_xfer)
          cpu_jtag_debug_module_reg_firsttransfer <= cpu_jtag_debug_module_unreg_firsttransfer;
    end


  //cpu_jtag_debug_module_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign cpu_jtag_debug_module_beginbursttransfer_internal = cpu_jtag_debug_module_begins_xfer;

  //cpu_jtag_debug_module_arbitration_holdoff_internal arbitration_holdoff, which is an e_assign
  assign cpu_jtag_debug_module_arbitration_holdoff_internal = cpu_jtag_debug_module_begins_xfer & cpu_jtag_debug_module_firsttransfer;

  //cpu_jtag_debug_module_write assignment, which is an e_mux
  assign cpu_jtag_debug_module_write = cpu_data_master_granted_cpu_jtag_debug_module & cpu_data_master_write;

  assign shifted_address_to_cpu_jtag_debug_module_from_cpu_data_master = cpu_data_master_address_to_slave;
  //cpu_jtag_debug_module_address mux, which is an e_mux
  assign cpu_jtag_debug_module_address = (cpu_data_master_granted_cpu_jtag_debug_module)? (shifted_address_to_cpu_jtag_debug_module_from_cpu_data_master >> 2) :
    (shifted_address_to_cpu_jtag_debug_module_from_cpu_instruction_master >> 2);

  assign shifted_address_to_cpu_jtag_debug_module_from_cpu_instruction_master = cpu_instruction_master_address_to_slave;
  //d1_cpu_jtag_debug_module_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_cpu_jtag_debug_module_end_xfer <= 1;
      else if (1)
          d1_cpu_jtag_debug_module_end_xfer <= cpu_jtag_debug_module_end_xfer;
    end


  //cpu_jtag_debug_module_waits_for_read in a cycle, which is an e_mux
  assign cpu_jtag_debug_module_waits_for_read = cpu_jtag_debug_module_in_a_read_cycle & cpu_jtag_debug_module_begins_xfer;

  //cpu_jtag_debug_module_in_a_read_cycle assignment, which is an e_assign
  assign cpu_jtag_debug_module_in_a_read_cycle = (cpu_data_master_granted_cpu_jtag_debug_module & cpu_data_master_read) | (cpu_instruction_master_granted_cpu_jtag_debug_module & cpu_instruction_master_read);

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = cpu_jtag_debug_module_in_a_read_cycle;

  //cpu_jtag_debug_module_waits_for_write in a cycle, which is an e_mux
  assign cpu_jtag_debug_module_waits_for_write = cpu_jtag_debug_module_in_a_write_cycle & 0;

  //cpu_jtag_debug_module_in_a_write_cycle assignment, which is an e_assign
  assign cpu_jtag_debug_module_in_a_write_cycle = cpu_data_master_granted_cpu_jtag_debug_module & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = cpu_jtag_debug_module_in_a_write_cycle;

  assign wait_for_cpu_jtag_debug_module_counter = 0;
  //cpu_jtag_debug_module_byteenable byte enable port mux, which is an e_mux
  assign cpu_jtag_debug_module_byteenable = (cpu_data_master_granted_cpu_jtag_debug_module)? cpu_data_master_byteenable :
    -1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //cpu/jtag_debug_module enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else if (1)
          enable_nonzero_assertions <= 1'b1;
    end


  //grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_granted_cpu_jtag_debug_module + cpu_instruction_master_granted_cpu_jtag_debug_module > 1)
        begin
          $write("%0d ns: > 1 of grant signals are active simultaneously", $time);
          $stop;
        end
    end


  //saved_grant signals are active simultaneously, which is an e_process
  always @(posedge clk)
    begin
      if (cpu_data_master_saved_grant_cpu_jtag_debug_module + cpu_instruction_master_saved_grant_cpu_jtag_debug_module > 1)
        begin
          $write("%0d ns: > 1 of saved_grant signals are active simultaneously", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_data_master_arbitrator (
                                    // inputs:
                                     Expansion_JP1_avalon_parallel_port_slave_irq_from_sa,
                                     Expansion_JP1_avalon_parallel_port_slave_readdata_from_sa,
                                     Expansion_JP2_avalon_parallel_port_slave_irq_from_sa,
                                     Expansion_JP2_avalon_parallel_port_slave_readdata_from_sa,
                                     Green_LEDs_avalon_parallel_port_slave_readdata_from_sa,
                                     HEX3_HEX0_avalon_parallel_port_slave_readdata_from_sa,
                                     Interval_timer_s1_irq_from_sa,
                                     Interval_timer_s1_readdata_from_sa,
                                     JTAG_UART_avalon_jtag_slave_irq_from_sa,
                                     JTAG_UART_avalon_jtag_slave_readdata_from_sa,
                                     JTAG_UART_avalon_jtag_slave_waitrequest_from_sa,
                                     Onchip_memory_s2_readdata_from_sa,
                                     Pushbuttons_avalon_parallel_port_slave_irq_from_sa,
                                     Pushbuttons_avalon_parallel_port_slave_readdata_from_sa,
                                     Red_LEDs_avalon_parallel_port_slave_readdata_from_sa,
                                     SRAM_avalon_sram_slave_readdata_from_sa,
                                     Serial_port_avalon_rs232_slave_irq_from_sa,
                                     Serial_port_avalon_rs232_slave_readdata_from_sa,
                                     Slider_switches_avalon_parallel_port_slave_readdata_from_sa,
                                     clk,
                                     cpu_data_master_address,
                                     cpu_data_master_byteenable_SRAM_avalon_sram_slave,
                                     cpu_data_master_debugaccess,
                                     cpu_data_master_granted_Expansion_JP1_avalon_parallel_port_slave,
                                     cpu_data_master_granted_Expansion_JP2_avalon_parallel_port_slave,
                                     cpu_data_master_granted_Green_LEDs_avalon_parallel_port_slave,
                                     cpu_data_master_granted_HEX3_HEX0_avalon_parallel_port_slave,
                                     cpu_data_master_granted_Interval_timer_s1,
                                     cpu_data_master_granted_JTAG_UART_avalon_jtag_slave,
                                     cpu_data_master_granted_Onchip_memory_s2,
                                     cpu_data_master_granted_Pushbuttons_avalon_parallel_port_slave,
                                     cpu_data_master_granted_Red_LEDs_avalon_parallel_port_slave,
                                     cpu_data_master_granted_SRAM_avalon_sram_slave,
                                     cpu_data_master_granted_Serial_port_avalon_rs232_slave,
                                     cpu_data_master_granted_Slider_switches_avalon_parallel_port_slave,
                                     cpu_data_master_granted_cpu_jtag_debug_module,
                                     cpu_data_master_granted_sysid_control_slave,
                                     cpu_data_master_qualified_request_Expansion_JP1_avalon_parallel_port_slave,
                                     cpu_data_master_qualified_request_Expansion_JP2_avalon_parallel_port_slave,
                                     cpu_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave,
                                     cpu_data_master_qualified_request_HEX3_HEX0_avalon_parallel_port_slave,
                                     cpu_data_master_qualified_request_Interval_timer_s1,
                                     cpu_data_master_qualified_request_JTAG_UART_avalon_jtag_slave,
                                     cpu_data_master_qualified_request_Onchip_memory_s2,
                                     cpu_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave,
                                     cpu_data_master_qualified_request_Red_LEDs_avalon_parallel_port_slave,
                                     cpu_data_master_qualified_request_SRAM_avalon_sram_slave,
                                     cpu_data_master_qualified_request_Serial_port_avalon_rs232_slave,
                                     cpu_data_master_qualified_request_Slider_switches_avalon_parallel_port_slave,
                                     cpu_data_master_qualified_request_cpu_jtag_debug_module,
                                     cpu_data_master_qualified_request_sysid_control_slave,
                                     cpu_data_master_read,
                                     cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave,
                                     cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave,
                                     cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave,
                                     cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave,
                                     cpu_data_master_read_data_valid_Interval_timer_s1,
                                     cpu_data_master_read_data_valid_JTAG_UART_avalon_jtag_slave,
                                     cpu_data_master_read_data_valid_Onchip_memory_s2,
                                     cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave,
                                     cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave,
                                     cpu_data_master_read_data_valid_SRAM_avalon_sram_slave,
                                     cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave,
                                     cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave,
                                     cpu_data_master_read_data_valid_cpu_jtag_debug_module,
                                     cpu_data_master_read_data_valid_sysid_control_slave,
                                     cpu_data_master_requests_Expansion_JP1_avalon_parallel_port_slave,
                                     cpu_data_master_requests_Expansion_JP2_avalon_parallel_port_slave,
                                     cpu_data_master_requests_Green_LEDs_avalon_parallel_port_slave,
                                     cpu_data_master_requests_HEX3_HEX0_avalon_parallel_port_slave,
                                     cpu_data_master_requests_Interval_timer_s1,
                                     cpu_data_master_requests_JTAG_UART_avalon_jtag_slave,
                                     cpu_data_master_requests_Onchip_memory_s2,
                                     cpu_data_master_requests_Pushbuttons_avalon_parallel_port_slave,
                                     cpu_data_master_requests_Red_LEDs_avalon_parallel_port_slave,
                                     cpu_data_master_requests_SRAM_avalon_sram_slave,
                                     cpu_data_master_requests_Serial_port_avalon_rs232_slave,
                                     cpu_data_master_requests_Slider_switches_avalon_parallel_port_slave,
                                     cpu_data_master_requests_cpu_jtag_debug_module,
                                     cpu_data_master_requests_sysid_control_slave,
                                     cpu_data_master_write,
                                     cpu_data_master_writedata,
                                     cpu_jtag_debug_module_readdata_from_sa,
                                     d1_Expansion_JP1_avalon_parallel_port_slave_end_xfer,
                                     d1_Expansion_JP2_avalon_parallel_port_slave_end_xfer,
                                     d1_Green_LEDs_avalon_parallel_port_slave_end_xfer,
                                     d1_HEX3_HEX0_avalon_parallel_port_slave_end_xfer,
                                     d1_Interval_timer_s1_end_xfer,
                                     d1_JTAG_UART_avalon_jtag_slave_end_xfer,
                                     d1_Onchip_memory_s2_end_xfer,
                                     d1_Pushbuttons_avalon_parallel_port_slave_end_xfer,
                                     d1_Red_LEDs_avalon_parallel_port_slave_end_xfer,
                                     d1_SRAM_avalon_sram_slave_end_xfer,
                                     d1_Serial_port_avalon_rs232_slave_end_xfer,
                                     d1_Slider_switches_avalon_parallel_port_slave_end_xfer,
                                     d1_cpu_jtag_debug_module_end_xfer,
                                     d1_sysid_control_slave_end_xfer,
                                     registered_cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave,
                                     registered_cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave,
                                     registered_cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave,
                                     registered_cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave,
                                     registered_cpu_data_master_read_data_valid_Onchip_memory_s2,
                                     registered_cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave,
                                     registered_cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave,
                                     registered_cpu_data_master_read_data_valid_SRAM_avalon_sram_slave,
                                     registered_cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave,
                                     registered_cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave,
                                     reset_n,
                                     sysid_control_slave_readdata_from_sa,

                                    // outputs:
                                     cpu_data_master_address_to_slave,
                                     cpu_data_master_dbs_address,
                                     cpu_data_master_dbs_write_16,
                                     cpu_data_master_irq,
                                     cpu_data_master_no_byte_enables_and_last_term,
                                     cpu_data_master_readdata,
                                     cpu_data_master_waitrequest
                                  )
  /* synthesis auto_dissolve = "FALSE" */ ;

  output  [ 28: 0] cpu_data_master_address_to_slave;
  output  [  1: 0] cpu_data_master_dbs_address;
  output  [ 15: 0] cpu_data_master_dbs_write_16;
  output  [ 31: 0] cpu_data_master_irq;
  output           cpu_data_master_no_byte_enables_and_last_term;
  output  [ 31: 0] cpu_data_master_readdata;
  output           cpu_data_master_waitrequest;
  input            Expansion_JP1_avalon_parallel_port_slave_irq_from_sa;
  input   [ 31: 0] Expansion_JP1_avalon_parallel_port_slave_readdata_from_sa;
  input            Expansion_JP2_avalon_parallel_port_slave_irq_from_sa;
  input   [ 31: 0] Expansion_JP2_avalon_parallel_port_slave_readdata_from_sa;
  input   [ 31: 0] Green_LEDs_avalon_parallel_port_slave_readdata_from_sa;
  input   [ 31: 0] HEX3_HEX0_avalon_parallel_port_slave_readdata_from_sa;
  input            Interval_timer_s1_irq_from_sa;
  input   [ 15: 0] Interval_timer_s1_readdata_from_sa;
  input            JTAG_UART_avalon_jtag_slave_irq_from_sa;
  input   [ 31: 0] JTAG_UART_avalon_jtag_slave_readdata_from_sa;
  input            JTAG_UART_avalon_jtag_slave_waitrequest_from_sa;
  input   [ 31: 0] Onchip_memory_s2_readdata_from_sa;
  input            Pushbuttons_avalon_parallel_port_slave_irq_from_sa;
  input   [ 31: 0] Pushbuttons_avalon_parallel_port_slave_readdata_from_sa;
  input   [ 31: 0] Red_LEDs_avalon_parallel_port_slave_readdata_from_sa;
  input   [ 15: 0] SRAM_avalon_sram_slave_readdata_from_sa;
  input            Serial_port_avalon_rs232_slave_irq_from_sa;
  input   [ 31: 0] Serial_port_avalon_rs232_slave_readdata_from_sa;
  input   [ 31: 0] Slider_switches_avalon_parallel_port_slave_readdata_from_sa;
  input            clk;
  input   [ 28: 0] cpu_data_master_address;
  input   [  1: 0] cpu_data_master_byteenable_SRAM_avalon_sram_slave;
  input            cpu_data_master_debugaccess;
  input            cpu_data_master_granted_Expansion_JP1_avalon_parallel_port_slave;
  input            cpu_data_master_granted_Expansion_JP2_avalon_parallel_port_slave;
  input            cpu_data_master_granted_Green_LEDs_avalon_parallel_port_slave;
  input            cpu_data_master_granted_HEX3_HEX0_avalon_parallel_port_slave;
  input            cpu_data_master_granted_Interval_timer_s1;
  input            cpu_data_master_granted_JTAG_UART_avalon_jtag_slave;
  input            cpu_data_master_granted_Onchip_memory_s2;
  input            cpu_data_master_granted_Pushbuttons_avalon_parallel_port_slave;
  input            cpu_data_master_granted_Red_LEDs_avalon_parallel_port_slave;
  input            cpu_data_master_granted_SRAM_avalon_sram_slave;
  input            cpu_data_master_granted_Serial_port_avalon_rs232_slave;
  input            cpu_data_master_granted_Slider_switches_avalon_parallel_port_slave;
  input            cpu_data_master_granted_cpu_jtag_debug_module;
  input            cpu_data_master_granted_sysid_control_slave;
  input            cpu_data_master_qualified_request_Expansion_JP1_avalon_parallel_port_slave;
  input            cpu_data_master_qualified_request_Expansion_JP2_avalon_parallel_port_slave;
  input            cpu_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave;
  input            cpu_data_master_qualified_request_HEX3_HEX0_avalon_parallel_port_slave;
  input            cpu_data_master_qualified_request_Interval_timer_s1;
  input            cpu_data_master_qualified_request_JTAG_UART_avalon_jtag_slave;
  input            cpu_data_master_qualified_request_Onchip_memory_s2;
  input            cpu_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave;
  input            cpu_data_master_qualified_request_Red_LEDs_avalon_parallel_port_slave;
  input            cpu_data_master_qualified_request_SRAM_avalon_sram_slave;
  input            cpu_data_master_qualified_request_Serial_port_avalon_rs232_slave;
  input            cpu_data_master_qualified_request_Slider_switches_avalon_parallel_port_slave;
  input            cpu_data_master_qualified_request_cpu_jtag_debug_module;
  input            cpu_data_master_qualified_request_sysid_control_slave;
  input            cpu_data_master_read;
  input            cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave;
  input            cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave;
  input            cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave;
  input            cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave;
  input            cpu_data_master_read_data_valid_Interval_timer_s1;
  input            cpu_data_master_read_data_valid_JTAG_UART_avalon_jtag_slave;
  input            cpu_data_master_read_data_valid_Onchip_memory_s2;
  input            cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave;
  input            cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave;
  input            cpu_data_master_read_data_valid_SRAM_avalon_sram_slave;
  input            cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave;
  input            cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave;
  input            cpu_data_master_read_data_valid_cpu_jtag_debug_module;
  input            cpu_data_master_read_data_valid_sysid_control_slave;
  input            cpu_data_master_requests_Expansion_JP1_avalon_parallel_port_slave;
  input            cpu_data_master_requests_Expansion_JP2_avalon_parallel_port_slave;
  input            cpu_data_master_requests_Green_LEDs_avalon_parallel_port_slave;
  input            cpu_data_master_requests_HEX3_HEX0_avalon_parallel_port_slave;
  input            cpu_data_master_requests_Interval_timer_s1;
  input            cpu_data_master_requests_JTAG_UART_avalon_jtag_slave;
  input            cpu_data_master_requests_Onchip_memory_s2;
  input            cpu_data_master_requests_Pushbuttons_avalon_parallel_port_slave;
  input            cpu_data_master_requests_Red_LEDs_avalon_parallel_port_slave;
  input            cpu_data_master_requests_SRAM_avalon_sram_slave;
  input            cpu_data_master_requests_Serial_port_avalon_rs232_slave;
  input            cpu_data_master_requests_Slider_switches_avalon_parallel_port_slave;
  input            cpu_data_master_requests_cpu_jtag_debug_module;
  input            cpu_data_master_requests_sysid_control_slave;
  input            cpu_data_master_write;
  input   [ 31: 0] cpu_data_master_writedata;
  input   [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  input            d1_Expansion_JP1_avalon_parallel_port_slave_end_xfer;
  input            d1_Expansion_JP2_avalon_parallel_port_slave_end_xfer;
  input            d1_Green_LEDs_avalon_parallel_port_slave_end_xfer;
  input            d1_HEX3_HEX0_avalon_parallel_port_slave_end_xfer;
  input            d1_Interval_timer_s1_end_xfer;
  input            d1_JTAG_UART_avalon_jtag_slave_end_xfer;
  input            d1_Onchip_memory_s2_end_xfer;
  input            d1_Pushbuttons_avalon_parallel_port_slave_end_xfer;
  input            d1_Red_LEDs_avalon_parallel_port_slave_end_xfer;
  input            d1_SRAM_avalon_sram_slave_end_xfer;
  input            d1_Serial_port_avalon_rs232_slave_end_xfer;
  input            d1_Slider_switches_avalon_parallel_port_slave_end_xfer;
  input            d1_cpu_jtag_debug_module_end_xfer;
  input            d1_sysid_control_slave_end_xfer;
  input            registered_cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave;
  input            registered_cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave;
  input            registered_cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave;
  input            registered_cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave;
  input            registered_cpu_data_master_read_data_valid_Onchip_memory_s2;
  input            registered_cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave;
  input            registered_cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave;
  input            registered_cpu_data_master_read_data_valid_SRAM_avalon_sram_slave;
  input            registered_cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave;
  input            registered_cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave;
  input            reset_n;
  input   [ 31: 0] sysid_control_slave_readdata_from_sa;

  wire    [ 28: 0] cpu_data_master_address_to_slave;
  reg     [  1: 0] cpu_data_master_dbs_address;
  wire    [  1: 0] cpu_data_master_dbs_increment;
  wire    [ 15: 0] cpu_data_master_dbs_write_16;
  wire    [ 31: 0] cpu_data_master_irq;
  reg              cpu_data_master_no_byte_enables_and_last_term;
  wire    [ 31: 0] cpu_data_master_readdata;
  wire             cpu_data_master_run;
  reg              cpu_data_master_waitrequest;
  reg     [ 15: 0] dbs_16_reg_segment_0;
  wire             dbs_count_enable;
  wire             dbs_counter_overflow;
  wire             last_dbs_term_and_run;
  wire    [  1: 0] next_dbs_address;
  wire    [ 15: 0] p1_dbs_16_reg_segment_0;
  wire    [ 31: 0] p1_registered_cpu_data_master_readdata;
  wire             pre_dbs_count_enable;
  wire             r_0;
  wire             r_1;
  wire             r_2;
  reg     [ 31: 0] registered_cpu_data_master_readdata;
  //r_0 master_run cascaded wait assignment, which is an e_assign
  assign r_0 = 1 & (cpu_data_master_qualified_request_Expansion_JP1_avalon_parallel_port_slave | registered_cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave | ~cpu_data_master_requests_Expansion_JP1_avalon_parallel_port_slave) & ((~cpu_data_master_qualified_request_Expansion_JP1_avalon_parallel_port_slave | ~cpu_data_master_read | (registered_cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_Expansion_JP1_avalon_parallel_port_slave | ~(cpu_data_master_read | cpu_data_master_write) | (1 & (cpu_data_master_read | cpu_data_master_write)))) & 1 & (cpu_data_master_qualified_request_Expansion_JP2_avalon_parallel_port_slave | registered_cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave | ~cpu_data_master_requests_Expansion_JP2_avalon_parallel_port_slave) & ((~cpu_data_master_qualified_request_Expansion_JP2_avalon_parallel_port_slave | ~cpu_data_master_read | (registered_cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_Expansion_JP2_avalon_parallel_port_slave | ~(cpu_data_master_read | cpu_data_master_write) | (1 & (cpu_data_master_read | cpu_data_master_write)))) & 1 & (cpu_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave | registered_cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave | ~cpu_data_master_requests_Green_LEDs_avalon_parallel_port_slave) & ((~cpu_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave | ~cpu_data_master_read | (registered_cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave | ~(cpu_data_master_read | cpu_data_master_write) | (1 & (cpu_data_master_read | cpu_data_master_write)))) & 1 & (cpu_data_master_qualified_request_HEX3_HEX0_avalon_parallel_port_slave | registered_cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave | ~cpu_data_master_requests_HEX3_HEX0_avalon_parallel_port_slave) & ((~cpu_data_master_qualified_request_HEX3_HEX0_avalon_parallel_port_slave | ~cpu_data_master_read | (registered_cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_HEX3_HEX0_avalon_parallel_port_slave | ~(cpu_data_master_read | cpu_data_master_write) | (1 & (cpu_data_master_read | cpu_data_master_write)))) & 1 & (cpu_data_master_qualified_request_Interval_timer_s1 | ~cpu_data_master_requests_Interval_timer_s1) & ((~cpu_data_master_qualified_request_Interval_timer_s1 | ~cpu_data_master_read | (1 & 1 & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_Interval_timer_s1 | ~cpu_data_master_write | (1 & cpu_data_master_write)));

  //cascaded wait assignment, which is an e_assign
  assign cpu_data_master_run = r_0 & r_1 & r_2;

  //r_1 master_run cascaded wait assignment, which is an e_assign
  assign r_1 = 1 & (cpu_data_master_qualified_request_JTAG_UART_avalon_jtag_slave | ~cpu_data_master_requests_JTAG_UART_avalon_jtag_slave) & ((~cpu_data_master_qualified_request_JTAG_UART_avalon_jtag_slave | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~JTAG_UART_avalon_jtag_slave_waitrequest_from_sa & (cpu_data_master_read | cpu_data_master_write)))) & ((~cpu_data_master_qualified_request_JTAG_UART_avalon_jtag_slave | ~(cpu_data_master_read | cpu_data_master_write) | (1 & ~JTAG_UART_avalon_jtag_slave_waitrequest_from_sa & (cpu_data_master_read | cpu_data_master_write)))) & 1 & (cpu_data_master_qualified_request_Onchip_memory_s2 | registered_cpu_data_master_read_data_valid_Onchip_memory_s2 | ~cpu_data_master_requests_Onchip_memory_s2) & ((~cpu_data_master_qualified_request_Onchip_memory_s2 | ~cpu_data_master_read | (registered_cpu_data_master_read_data_valid_Onchip_memory_s2 & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_Onchip_memory_s2 | ~(cpu_data_master_read | cpu_data_master_write) | (1 & (cpu_data_master_read | cpu_data_master_write)))) & 1 & (cpu_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave | registered_cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave | ~cpu_data_master_requests_Pushbuttons_avalon_parallel_port_slave) & ((~cpu_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave | ~cpu_data_master_read | (registered_cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave | ~(cpu_data_master_read | cpu_data_master_write) | (1 & (cpu_data_master_read | cpu_data_master_write)))) & 1 & (cpu_data_master_qualified_request_Red_LEDs_avalon_parallel_port_slave | registered_cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave | ~cpu_data_master_requests_Red_LEDs_avalon_parallel_port_slave) & ((~cpu_data_master_qualified_request_Red_LEDs_avalon_parallel_port_slave | ~cpu_data_master_read | (registered_cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_Red_LEDs_avalon_parallel_port_slave | ~(cpu_data_master_read | cpu_data_master_write) | (1 & (cpu_data_master_read | cpu_data_master_write)))) & 1 & (cpu_data_master_qualified_request_SRAM_avalon_sram_slave | (registered_cpu_data_master_read_data_valid_SRAM_avalon_sram_slave & cpu_data_master_dbs_address[1]) | (cpu_data_master_write & !cpu_data_master_byteenable_SRAM_avalon_sram_slave & cpu_data_master_dbs_address[1]) | ~cpu_data_master_requests_SRAM_avalon_sram_slave) & (cpu_data_master_granted_SRAM_avalon_sram_slave | ~cpu_data_master_qualified_request_SRAM_avalon_sram_slave) & ((~cpu_data_master_qualified_request_SRAM_avalon_sram_slave | ~cpu_data_master_read | (registered_cpu_data_master_read_data_valid_SRAM_avalon_sram_slave & (cpu_data_master_dbs_address[1]) & cpu_data_master_read)));

  //r_2 master_run cascaded wait assignment, which is an e_assign
  assign r_2 = ((~cpu_data_master_qualified_request_SRAM_avalon_sram_slave | ~cpu_data_master_write | (1 & (cpu_data_master_dbs_address[1]) & cpu_data_master_write))) & 1 & (cpu_data_master_qualified_request_Serial_port_avalon_rs232_slave | registered_cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave | ~cpu_data_master_requests_Serial_port_avalon_rs232_slave) & ((~cpu_data_master_qualified_request_Serial_port_avalon_rs232_slave | ~cpu_data_master_read | (registered_cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_Serial_port_avalon_rs232_slave | ~(cpu_data_master_read | cpu_data_master_write) | (1 & (cpu_data_master_read | cpu_data_master_write)))) & 1 & (cpu_data_master_qualified_request_Slider_switches_avalon_parallel_port_slave | registered_cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave | ~cpu_data_master_requests_Slider_switches_avalon_parallel_port_slave) & ((~cpu_data_master_qualified_request_Slider_switches_avalon_parallel_port_slave | ~cpu_data_master_read | (registered_cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_Slider_switches_avalon_parallel_port_slave | ~(cpu_data_master_read | cpu_data_master_write) | (1 & (cpu_data_master_read | cpu_data_master_write)))) & 1 & (cpu_data_master_qualified_request_cpu_jtag_debug_module | ~cpu_data_master_requests_cpu_jtag_debug_module) & (cpu_data_master_granted_cpu_jtag_debug_module | ~cpu_data_master_qualified_request_cpu_jtag_debug_module) & ((~cpu_data_master_qualified_request_cpu_jtag_debug_module | ~cpu_data_master_read | (1 & 1 & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_cpu_jtag_debug_module | ~cpu_data_master_write | (1 & cpu_data_master_write))) & 1 & ((~cpu_data_master_qualified_request_sysid_control_slave | ~cpu_data_master_read | (1 & 1 & cpu_data_master_read))) & ((~cpu_data_master_qualified_request_sysid_control_slave | ~cpu_data_master_write | (1 & cpu_data_master_write)));

  //optimize select-logic by passing only those address bits which matter.
  assign cpu_data_master_address_to_slave = {cpu_data_master_address[28 : 27],
    1'b0,
    cpu_data_master_address[25 : 24],
    5'b0,
    cpu_data_master_address[18 : 0]};

  //cpu/data_master readdata mux, which is an e_mux
  assign cpu_data_master_readdata = ({32 {~cpu_data_master_requests_Expansion_JP1_avalon_parallel_port_slave}} | Expansion_JP1_avalon_parallel_port_slave_readdata_from_sa) &
    ({32 {~cpu_data_master_requests_Expansion_JP2_avalon_parallel_port_slave}} | Expansion_JP2_avalon_parallel_port_slave_readdata_from_sa) &
    ({32 {~cpu_data_master_requests_Green_LEDs_avalon_parallel_port_slave}} | Green_LEDs_avalon_parallel_port_slave_readdata_from_sa) &
    ({32 {~cpu_data_master_requests_HEX3_HEX0_avalon_parallel_port_slave}} | HEX3_HEX0_avalon_parallel_port_slave_readdata_from_sa) &
    ({32 {~cpu_data_master_requests_Interval_timer_s1}} | Interval_timer_s1_readdata_from_sa) &
    ({32 {~cpu_data_master_requests_JTAG_UART_avalon_jtag_slave}} | registered_cpu_data_master_readdata) &
    ({32 {~cpu_data_master_requests_Onchip_memory_s2}} | Onchip_memory_s2_readdata_from_sa) &
    ({32 {~cpu_data_master_requests_Pushbuttons_avalon_parallel_port_slave}} | Pushbuttons_avalon_parallel_port_slave_readdata_from_sa) &
    ({32 {~cpu_data_master_requests_Red_LEDs_avalon_parallel_port_slave}} | Red_LEDs_avalon_parallel_port_slave_readdata_from_sa) &
    ({32 {~cpu_data_master_requests_SRAM_avalon_sram_slave}} | {SRAM_avalon_sram_slave_readdata_from_sa[15 : 0],
    dbs_16_reg_segment_0}) &
    ({32 {~cpu_data_master_requests_Serial_port_avalon_rs232_slave}} | Serial_port_avalon_rs232_slave_readdata_from_sa) &
    ({32 {~cpu_data_master_requests_Slider_switches_avalon_parallel_port_slave}} | Slider_switches_avalon_parallel_port_slave_readdata_from_sa) &
    ({32 {~cpu_data_master_requests_cpu_jtag_debug_module}} | cpu_jtag_debug_module_readdata_from_sa) &
    ({32 {~cpu_data_master_requests_sysid_control_slave}} | sysid_control_slave_readdata_from_sa);

  //actual waitrequest port, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_waitrequest <= ~0;
      else if (1)
          cpu_data_master_waitrequest <= ~((~(cpu_data_master_read | cpu_data_master_write))? 0: (cpu_data_master_run & cpu_data_master_waitrequest));
    end


  //irq assign, which is an e_assign
  assign cpu_data_master_irq = {1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    Expansion_JP2_avalon_parallel_port_slave_irq_from_sa,
    Expansion_JP1_avalon_parallel_port_slave_irq_from_sa,
    Serial_port_avalon_rs232_slave_irq_from_sa,
    1'b0,
    JTAG_UART_avalon_jtag_slave_irq_from_sa,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    1'b0,
    Pushbuttons_avalon_parallel_port_slave_irq_from_sa,
    Interval_timer_s1_irq_from_sa};

  //unpredictable registered wait state incoming data, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          registered_cpu_data_master_readdata <= 0;
      else if (1)
          registered_cpu_data_master_readdata <= p1_registered_cpu_data_master_readdata;
    end


  //registered readdata mux, which is an e_mux
  assign p1_registered_cpu_data_master_readdata = {32 {~cpu_data_master_requests_JTAG_UART_avalon_jtag_slave}} | JTAG_UART_avalon_jtag_slave_readdata_from_sa;

  //no_byte_enables_and_last_term, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_no_byte_enables_and_last_term <= 0;
      else if (1)
          cpu_data_master_no_byte_enables_and_last_term <= last_dbs_term_and_run;
    end


  //compute the last dbs term, which is an e_mux
  assign last_dbs_term_and_run = (cpu_data_master_dbs_address == 2'b10) & cpu_data_master_write & !cpu_data_master_byteenable_SRAM_avalon_sram_slave;

  //pre dbs count enable, which is an e_mux
  assign pre_dbs_count_enable = (((~cpu_data_master_no_byte_enables_and_last_term) & cpu_data_master_requests_SRAM_avalon_sram_slave & cpu_data_master_write & !cpu_data_master_byteenable_SRAM_avalon_sram_slave)) |
    cpu_data_master_read_data_valid_SRAM_avalon_sram_slave |
    (cpu_data_master_granted_SRAM_avalon_sram_slave & cpu_data_master_write & 1 & 1);

  //input to dbs-16 stored 0, which is an e_mux
  assign p1_dbs_16_reg_segment_0 = SRAM_avalon_sram_slave_readdata_from_sa;

  //dbs register for dbs-16 segment 0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_16_reg_segment_0 <= 0;
      else if (dbs_count_enable & ((cpu_data_master_dbs_address[1]) == 0))
          dbs_16_reg_segment_0 <= p1_dbs_16_reg_segment_0;
    end


  //mux write dbs 1, which is an e_mux
  assign cpu_data_master_dbs_write_16 = (cpu_data_master_dbs_address[1])? cpu_data_master_writedata[31 : 16] :
    cpu_data_master_writedata[15 : 0];

  //dbs count increment, which is an e_mux
  assign cpu_data_master_dbs_increment = (cpu_data_master_requests_SRAM_avalon_sram_slave)? 2 :
    0;

  //dbs counter overflow, which is an e_assign
  assign dbs_counter_overflow = cpu_data_master_dbs_address[1] & !(next_dbs_address[1]);

  //next master address, which is an e_assign
  assign next_dbs_address = cpu_data_master_dbs_address + cpu_data_master_dbs_increment;

  //dbs count enable, which is an e_mux
  assign dbs_count_enable = pre_dbs_count_enable &
    (~(cpu_data_master_requests_SRAM_avalon_sram_slave & ~cpu_data_master_waitrequest & cpu_data_master_write));

  //dbs counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_data_master_dbs_address <= 0;
      else if (dbs_count_enable)
          cpu_data_master_dbs_address <= next_dbs_address;
    end



endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module cpu_instruction_master_arbitrator (
                                           // inputs:
                                            Onchip_memory_s1_readdata_from_sa,
                                            SRAM_avalon_sram_slave_readdata_from_sa,
                                            clk,
                                            cpu_instruction_master_address,
                                            cpu_instruction_master_granted_Onchip_memory_s1,
                                            cpu_instruction_master_granted_SRAM_avalon_sram_slave,
                                            cpu_instruction_master_granted_cpu_jtag_debug_module,
                                            cpu_instruction_master_qualified_request_Onchip_memory_s1,
                                            cpu_instruction_master_qualified_request_SRAM_avalon_sram_slave,
                                            cpu_instruction_master_qualified_request_cpu_jtag_debug_module,
                                            cpu_instruction_master_read,
                                            cpu_instruction_master_read_data_valid_Onchip_memory_s1,
                                            cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave,
                                            cpu_instruction_master_read_data_valid_cpu_jtag_debug_module,
                                            cpu_instruction_master_requests_Onchip_memory_s1,
                                            cpu_instruction_master_requests_SRAM_avalon_sram_slave,
                                            cpu_instruction_master_requests_cpu_jtag_debug_module,
                                            cpu_jtag_debug_module_readdata_from_sa,
                                            d1_Onchip_memory_s1_end_xfer,
                                            d1_SRAM_avalon_sram_slave_end_xfer,
                                            d1_cpu_jtag_debug_module_end_xfer,
                                            reset_n,

                                           // outputs:
                                            cpu_instruction_master_address_to_slave,
                                            cpu_instruction_master_dbs_address,
                                            cpu_instruction_master_latency_counter,
                                            cpu_instruction_master_readdata,
                                            cpu_instruction_master_readdatavalid,
                                            cpu_instruction_master_waitrequest
                                         )
  /* synthesis auto_dissolve = "FALSE" */ ;

  output  [ 27: 0] cpu_instruction_master_address_to_slave;
  output  [  1: 0] cpu_instruction_master_dbs_address;
  output  [  1: 0] cpu_instruction_master_latency_counter;
  output  [ 31: 0] cpu_instruction_master_readdata;
  output           cpu_instruction_master_readdatavalid;
  output           cpu_instruction_master_waitrequest;
  input   [ 31: 0] Onchip_memory_s1_readdata_from_sa;
  input   [ 15: 0] SRAM_avalon_sram_slave_readdata_from_sa;
  input            clk;
  input   [ 27: 0] cpu_instruction_master_address;
  input            cpu_instruction_master_granted_Onchip_memory_s1;
  input            cpu_instruction_master_granted_SRAM_avalon_sram_slave;
  input            cpu_instruction_master_granted_cpu_jtag_debug_module;
  input            cpu_instruction_master_qualified_request_Onchip_memory_s1;
  input            cpu_instruction_master_qualified_request_SRAM_avalon_sram_slave;
  input            cpu_instruction_master_qualified_request_cpu_jtag_debug_module;
  input            cpu_instruction_master_read;
  input            cpu_instruction_master_read_data_valid_Onchip_memory_s1;
  input            cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave;
  input            cpu_instruction_master_read_data_valid_cpu_jtag_debug_module;
  input            cpu_instruction_master_requests_Onchip_memory_s1;
  input            cpu_instruction_master_requests_SRAM_avalon_sram_slave;
  input            cpu_instruction_master_requests_cpu_jtag_debug_module;
  input   [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  input            d1_Onchip_memory_s1_end_xfer;
  input            d1_SRAM_avalon_sram_slave_end_xfer;
  input            d1_cpu_jtag_debug_module_end_xfer;
  input            reset_n;

  reg              active_and_waiting_last_time;
  reg     [ 27: 0] cpu_instruction_master_address_last_time;
  wire    [ 27: 0] cpu_instruction_master_address_to_slave;
  reg     [  1: 0] cpu_instruction_master_dbs_address;
  wire    [  1: 0] cpu_instruction_master_dbs_increment;
  reg     [  1: 0] cpu_instruction_master_dbs_rdv_counter;
  wire    [  1: 0] cpu_instruction_master_dbs_rdv_counter_inc;
  wire             cpu_instruction_master_is_granted_some_slave;
  reg     [  1: 0] cpu_instruction_master_latency_counter;
  wire    [  1: 0] cpu_instruction_master_next_dbs_rdv_counter;
  reg              cpu_instruction_master_read_but_no_slave_selected;
  reg              cpu_instruction_master_read_last_time;
  wire    [ 31: 0] cpu_instruction_master_readdata;
  wire             cpu_instruction_master_readdatavalid;
  wire             cpu_instruction_master_run;
  wire             cpu_instruction_master_waitrequest;
  wire             dbs_count_enable;
  wire             dbs_counter_overflow;
  reg     [ 15: 0] dbs_latent_16_reg_segment_0;
  wire             dbs_rdv_count_enable;
  wire             dbs_rdv_counter_overflow;
  wire    [  1: 0] latency_load_value;
  wire    [  1: 0] next_dbs_address;
  wire    [  1: 0] p1_cpu_instruction_master_latency_counter;
  wire    [ 15: 0] p1_dbs_latent_16_reg_segment_0;
  wire             pre_dbs_count_enable;
  wire             pre_flush_cpu_instruction_master_readdatavalid;
  wire             r_1;
  wire             r_2;
  //r_1 master_run cascaded wait assignment, which is an e_assign
  assign r_1 = 1 & (cpu_instruction_master_qualified_request_Onchip_memory_s1 | ~cpu_instruction_master_requests_Onchip_memory_s1) & ((~cpu_instruction_master_qualified_request_Onchip_memory_s1 | ~(cpu_instruction_master_read) | (1 & (cpu_instruction_master_read)))) & 1 & (cpu_instruction_master_qualified_request_SRAM_avalon_sram_slave | ~cpu_instruction_master_requests_SRAM_avalon_sram_slave) & (cpu_instruction_master_granted_SRAM_avalon_sram_slave | ~cpu_instruction_master_qualified_request_SRAM_avalon_sram_slave);

  //cascaded wait assignment, which is an e_assign
  assign cpu_instruction_master_run = r_1 & r_2;

  //r_2 master_run cascaded wait assignment, which is an e_assign
  assign r_2 = ((~cpu_instruction_master_qualified_request_SRAM_avalon_sram_slave | ~cpu_instruction_master_read | (1 & (cpu_instruction_master_dbs_address[1]) & cpu_instruction_master_read))) & 1 & (cpu_instruction_master_qualified_request_cpu_jtag_debug_module | ~cpu_instruction_master_requests_cpu_jtag_debug_module) & (cpu_instruction_master_granted_cpu_jtag_debug_module | ~cpu_instruction_master_qualified_request_cpu_jtag_debug_module) & ((~cpu_instruction_master_qualified_request_cpu_jtag_debug_module | ~cpu_instruction_master_read | (1 & ~d1_cpu_jtag_debug_module_end_xfer & cpu_instruction_master_read)));

  //optimize select-logic by passing only those address bits which matter.
  assign cpu_instruction_master_address_to_slave = {2'b10,
    cpu_instruction_master_address[25 : 24],
    5'b0,
    cpu_instruction_master_address[18 : 0]};

  //cpu_instruction_master_read_but_no_slave_selected assignment, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_read_but_no_slave_selected <= 0;
      else if (1)
          cpu_instruction_master_read_but_no_slave_selected <= cpu_instruction_master_read & cpu_instruction_master_run & ~cpu_instruction_master_is_granted_some_slave;
    end


  //some slave is getting selected, which is an e_mux
  assign cpu_instruction_master_is_granted_some_slave = cpu_instruction_master_granted_Onchip_memory_s1 |
    cpu_instruction_master_granted_SRAM_avalon_sram_slave |
    cpu_instruction_master_granted_cpu_jtag_debug_module;

  //latent slave read data valids which may be flushed, which is an e_mux
  assign pre_flush_cpu_instruction_master_readdatavalid = cpu_instruction_master_read_data_valid_Onchip_memory_s1 |
    (cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave & dbs_rdv_counter_overflow);

  //latent slave read data valid which is not flushed, which is an e_mux
  assign cpu_instruction_master_readdatavalid = cpu_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu_instruction_master_readdatavalid |
    cpu_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu_instruction_master_readdatavalid |
    cpu_instruction_master_read_but_no_slave_selected |
    pre_flush_cpu_instruction_master_readdatavalid |
    cpu_instruction_master_read_data_valid_cpu_jtag_debug_module;

  //cpu/instruction_master readdata mux, which is an e_mux
  assign cpu_instruction_master_readdata = ({32 {~cpu_instruction_master_read_data_valid_Onchip_memory_s1}} | Onchip_memory_s1_readdata_from_sa) &
    ({32 {~cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave}} | {SRAM_avalon_sram_slave_readdata_from_sa[15 : 0],
    dbs_latent_16_reg_segment_0}) &
    ({32 {~(cpu_instruction_master_qualified_request_cpu_jtag_debug_module & cpu_instruction_master_read)}} | cpu_jtag_debug_module_readdata_from_sa);

  //actual waitrequest port, which is an e_assign
  assign cpu_instruction_master_waitrequest = ~cpu_instruction_master_run;

  //latent max counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_latency_counter <= 0;
      else if (1)
          cpu_instruction_master_latency_counter <= p1_cpu_instruction_master_latency_counter;
    end


  //latency counter load mux, which is an e_mux
  assign p1_cpu_instruction_master_latency_counter = ((cpu_instruction_master_run & cpu_instruction_master_read))? latency_load_value :
    (cpu_instruction_master_latency_counter)? cpu_instruction_master_latency_counter - 1 :
    0;

  //read latency load values, which is an e_mux
  assign latency_load_value = ({2 {cpu_instruction_master_requests_Onchip_memory_s1}} & 1) |
    ({2 {cpu_instruction_master_requests_SRAM_avalon_sram_slave}} & 2);

  //input to latent dbs-16 stored 0, which is an e_mux
  assign p1_dbs_latent_16_reg_segment_0 = SRAM_avalon_sram_slave_readdata_from_sa;

  //dbs register for latent dbs-16 segment 0, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          dbs_latent_16_reg_segment_0 <= 0;
      else if (dbs_rdv_count_enable & ((cpu_instruction_master_dbs_rdv_counter[1]) == 0))
          dbs_latent_16_reg_segment_0 <= p1_dbs_latent_16_reg_segment_0;
    end


  //dbs count increment, which is an e_mux
  assign cpu_instruction_master_dbs_increment = (cpu_instruction_master_requests_SRAM_avalon_sram_slave)? 2 :
    0;

  //dbs counter overflow, which is an e_assign
  assign dbs_counter_overflow = cpu_instruction_master_dbs_address[1] & !(next_dbs_address[1]);

  //next master address, which is an e_assign
  assign next_dbs_address = cpu_instruction_master_dbs_address + cpu_instruction_master_dbs_increment;

  //dbs count enable, which is an e_mux
  assign dbs_count_enable = pre_dbs_count_enable;

  //dbs counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_dbs_address <= 0;
      else if (dbs_count_enable)
          cpu_instruction_master_dbs_address <= next_dbs_address;
    end


  //p1 dbs rdv counter, which is an e_assign
  assign cpu_instruction_master_next_dbs_rdv_counter = cpu_instruction_master_dbs_rdv_counter + cpu_instruction_master_dbs_rdv_counter_inc;

  //cpu_instruction_master_rdv_inc_mux, which is an e_mux
  assign cpu_instruction_master_dbs_rdv_counter_inc = 2;

  //master any slave rdv, which is an e_mux
  assign dbs_rdv_count_enable = cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave;

  //dbs rdv counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_dbs_rdv_counter <= 0;
      else if (dbs_rdv_count_enable)
          cpu_instruction_master_dbs_rdv_counter <= cpu_instruction_master_next_dbs_rdv_counter;
    end


  //dbs rdv counter overflow, which is an e_assign
  assign dbs_rdv_counter_overflow = cpu_instruction_master_dbs_rdv_counter[1] & ~cpu_instruction_master_next_dbs_rdv_counter[1];

  //pre dbs count enable, which is an e_mux
  assign pre_dbs_count_enable = cpu_instruction_master_granted_SRAM_avalon_sram_slave & cpu_instruction_master_read & 1 & 1;


//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //cpu_instruction_master_address check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_address_last_time <= 0;
      else if (1)
          cpu_instruction_master_address_last_time <= cpu_instruction_master_address;
    end


  //cpu/instruction_master waited last time, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          active_and_waiting_last_time <= 0;
      else if (1)
          active_and_waiting_last_time <= cpu_instruction_master_waitrequest & (cpu_instruction_master_read);
    end


  //cpu_instruction_master_address matches last port_name, which is an e_process
  always @(active_and_waiting_last_time or cpu_instruction_master_address or cpu_instruction_master_address_last_time)
    begin
      if (active_and_waiting_last_time & (cpu_instruction_master_address != cpu_instruction_master_address_last_time))
        begin
          $write("%0d ns: cpu_instruction_master_address did not heed wait!!!", $time);
          $stop;
        end
    end


  //cpu_instruction_master_read check against wait, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          cpu_instruction_master_read_last_time <= 0;
      else if (1)
          cpu_instruction_master_read_last_time <= cpu_instruction_master_read;
    end


  //cpu_instruction_master_read matches last port_name, which is an e_process
  always @(active_and_waiting_last_time or cpu_instruction_master_read or cpu_instruction_master_read_last_time)
    begin
      if (active_and_waiting_last_time & (cpu_instruction_master_read != cpu_instruction_master_read_last_time))
        begin
          $write("%0d ns: cpu_instruction_master_read did not heed wait!!!", $time);
          $stop;
        end
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module sysid_control_slave_arbitrator (
                                        // inputs:
                                         clk,
                                         cpu_data_master_address_to_slave,
                                         cpu_data_master_read,
                                         cpu_data_master_write,
                                         reset_n,
                                         sysid_control_slave_readdata,

                                        // outputs:
                                         cpu_data_master_granted_sysid_control_slave,
                                         cpu_data_master_qualified_request_sysid_control_slave,
                                         cpu_data_master_read_data_valid_sysid_control_slave,
                                         cpu_data_master_requests_sysid_control_slave,
                                         d1_sysid_control_slave_end_xfer,
                                         sysid_control_slave_address,
                                         sysid_control_slave_readdata_from_sa
                                      )
  /* synthesis auto_dissolve = "FALSE" */ ;

  output           cpu_data_master_granted_sysid_control_slave;
  output           cpu_data_master_qualified_request_sysid_control_slave;
  output           cpu_data_master_read_data_valid_sysid_control_slave;
  output           cpu_data_master_requests_sysid_control_slave;
  output           d1_sysid_control_slave_end_xfer;
  output           sysid_control_slave_address;
  output  [ 31: 0] sysid_control_slave_readdata_from_sa;
  input            clk;
  input   [ 28: 0] cpu_data_master_address_to_slave;
  input            cpu_data_master_read;
  input            cpu_data_master_write;
  input            reset_n;
  input   [ 31: 0] sysid_control_slave_readdata;

  wire             cpu_data_master_arbiterlock;
  wire             cpu_data_master_arbiterlock2;
  wire             cpu_data_master_continuerequest;
  wire             cpu_data_master_granted_sysid_control_slave;
  wire             cpu_data_master_qualified_request_sysid_control_slave;
  wire             cpu_data_master_read_data_valid_sysid_control_slave;
  wire             cpu_data_master_requests_sysid_control_slave;
  wire             cpu_data_master_saved_grant_sysid_control_slave;
  reg              d1_reasons_to_wait;
  reg              d1_sysid_control_slave_end_xfer;
  reg              enable_nonzero_assertions;
  wire             end_xfer_arb_share_counter_term_sysid_control_slave;
  wire             in_a_read_cycle;
  wire             in_a_write_cycle;
  wire    [ 28: 0] shifted_address_to_sysid_control_slave_from_cpu_data_master;
  wire             sysid_control_slave_address;
  wire             sysid_control_slave_allgrants;
  wire             sysid_control_slave_allow_new_arb_cycle;
  wire             sysid_control_slave_any_bursting_master_saved_grant;
  wire             sysid_control_slave_any_continuerequest;
  wire             sysid_control_slave_arb_counter_enable;
  reg     [  1: 0] sysid_control_slave_arb_share_counter;
  wire    [  1: 0] sysid_control_slave_arb_share_counter_next_value;
  wire    [  1: 0] sysid_control_slave_arb_share_set_values;
  wire             sysid_control_slave_beginbursttransfer_internal;
  wire             sysid_control_slave_begins_xfer;
  wire             sysid_control_slave_end_xfer;
  wire             sysid_control_slave_firsttransfer;
  wire             sysid_control_slave_grant_vector;
  wire             sysid_control_slave_in_a_read_cycle;
  wire             sysid_control_slave_in_a_write_cycle;
  wire             sysid_control_slave_master_qreq_vector;
  wire             sysid_control_slave_non_bursting_master_requests;
  wire    [ 31: 0] sysid_control_slave_readdata_from_sa;
  reg              sysid_control_slave_reg_firsttransfer;
  reg              sysid_control_slave_slavearbiterlockenable;
  wire             sysid_control_slave_slavearbiterlockenable2;
  wire             sysid_control_slave_unreg_firsttransfer;
  wire             sysid_control_slave_waits_for_read;
  wire             sysid_control_slave_waits_for_write;
  wire             wait_for_sysid_control_slave_counter;
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_reasons_to_wait <= 0;
      else if (1)
          d1_reasons_to_wait <= ~sysid_control_slave_end_xfer;
    end


  assign sysid_control_slave_begins_xfer = ~d1_reasons_to_wait & ((cpu_data_master_qualified_request_sysid_control_slave));
  //assign sysid_control_slave_readdata_from_sa = sysid_control_slave_readdata so that symbol knows where to group signals which may go to master only, which is an e_assign
  assign sysid_control_slave_readdata_from_sa = sysid_control_slave_readdata;

  assign cpu_data_master_requests_sysid_control_slave = (({cpu_data_master_address_to_slave[28 : 3] , 3'b0} == 29'h10002020) & (cpu_data_master_read | cpu_data_master_write)) & cpu_data_master_read;
  //sysid_control_slave_arb_share_counter set values, which is an e_mux
  assign sysid_control_slave_arb_share_set_values = 1;

  //sysid_control_slave_non_bursting_master_requests mux, which is an e_mux
  assign sysid_control_slave_non_bursting_master_requests = cpu_data_master_requests_sysid_control_slave;

  //sysid_control_slave_any_bursting_master_saved_grant mux, which is an e_mux
  assign sysid_control_slave_any_bursting_master_saved_grant = 0;

  //sysid_control_slave_arb_share_counter_next_value assignment, which is an e_assign
  assign sysid_control_slave_arb_share_counter_next_value = sysid_control_slave_firsttransfer ? (sysid_control_slave_arb_share_set_values - 1) : |sysid_control_slave_arb_share_counter ? (sysid_control_slave_arb_share_counter - 1) : 0;

  //sysid_control_slave_allgrants all slave grants, which is an e_mux
  assign sysid_control_slave_allgrants = |sysid_control_slave_grant_vector;

  //sysid_control_slave_end_xfer assignment, which is an e_assign
  assign sysid_control_slave_end_xfer = ~(sysid_control_slave_waits_for_read | sysid_control_slave_waits_for_write);

  //end_xfer_arb_share_counter_term_sysid_control_slave arb share counter enable term, which is an e_assign
  assign end_xfer_arb_share_counter_term_sysid_control_slave = sysid_control_slave_end_xfer & (~sysid_control_slave_any_bursting_master_saved_grant | in_a_read_cycle | in_a_write_cycle);

  //sysid_control_slave_arb_share_counter arbitration counter enable, which is an e_assign
  assign sysid_control_slave_arb_counter_enable = (end_xfer_arb_share_counter_term_sysid_control_slave & sysid_control_slave_allgrants) | (end_xfer_arb_share_counter_term_sysid_control_slave & ~sysid_control_slave_non_bursting_master_requests);

  //sysid_control_slave_arb_share_counter counter, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sysid_control_slave_arb_share_counter <= 0;
      else if (sysid_control_slave_arb_counter_enable)
          sysid_control_slave_arb_share_counter <= sysid_control_slave_arb_share_counter_next_value;
    end


  //sysid_control_slave_slavearbiterlockenable slave enables arbiterlock, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sysid_control_slave_slavearbiterlockenable <= 0;
      else if ((|sysid_control_slave_master_qreq_vector & end_xfer_arb_share_counter_term_sysid_control_slave) | (end_xfer_arb_share_counter_term_sysid_control_slave & ~sysid_control_slave_non_bursting_master_requests))
          sysid_control_slave_slavearbiterlockenable <= |sysid_control_slave_arb_share_counter_next_value;
    end


  //cpu/data_master sysid/control_slave arbiterlock, which is an e_assign
  assign cpu_data_master_arbiterlock = sysid_control_slave_slavearbiterlockenable & cpu_data_master_continuerequest;

  //sysid_control_slave_slavearbiterlockenable2 slave enables arbiterlock2, which is an e_assign
  assign sysid_control_slave_slavearbiterlockenable2 = |sysid_control_slave_arb_share_counter_next_value;

  //cpu/data_master sysid/control_slave arbiterlock2, which is an e_assign
  assign cpu_data_master_arbiterlock2 = sysid_control_slave_slavearbiterlockenable2 & cpu_data_master_continuerequest;

  //sysid_control_slave_any_continuerequest at least one master continues requesting, which is an e_assign
  assign sysid_control_slave_any_continuerequest = 1;

  //cpu_data_master_continuerequest continued request, which is an e_assign
  assign cpu_data_master_continuerequest = 1;

  assign cpu_data_master_qualified_request_sysid_control_slave = cpu_data_master_requests_sysid_control_slave;
  //master is always granted when requested
  assign cpu_data_master_granted_sysid_control_slave = cpu_data_master_qualified_request_sysid_control_slave;

  //cpu/data_master saved-grant sysid/control_slave, which is an e_assign
  assign cpu_data_master_saved_grant_sysid_control_slave = cpu_data_master_requests_sysid_control_slave;

  //allow new arb cycle for sysid/control_slave, which is an e_assign
  assign sysid_control_slave_allow_new_arb_cycle = 1;

  //placeholder chosen master
  assign sysid_control_slave_grant_vector = 1;

  //placeholder vector of master qualified-requests
  assign sysid_control_slave_master_qreq_vector = 1;

  //sysid_control_slave_firsttransfer first transaction, which is an e_assign
  assign sysid_control_slave_firsttransfer = sysid_control_slave_begins_xfer ? sysid_control_slave_unreg_firsttransfer : sysid_control_slave_reg_firsttransfer;

  //sysid_control_slave_unreg_firsttransfer first transaction, which is an e_assign
  assign sysid_control_slave_unreg_firsttransfer = ~(sysid_control_slave_slavearbiterlockenable & sysid_control_slave_any_continuerequest);

  //sysid_control_slave_reg_firsttransfer first transaction, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          sysid_control_slave_reg_firsttransfer <= 1'b1;
      else if (sysid_control_slave_begins_xfer)
          sysid_control_slave_reg_firsttransfer <= sysid_control_slave_unreg_firsttransfer;
    end


  //sysid_control_slave_beginbursttransfer_internal begin burst transfer, which is an e_assign
  assign sysid_control_slave_beginbursttransfer_internal = sysid_control_slave_begins_xfer;

  assign shifted_address_to_sysid_control_slave_from_cpu_data_master = cpu_data_master_address_to_slave;
  //sysid_control_slave_address mux, which is an e_mux
  assign sysid_control_slave_address = shifted_address_to_sysid_control_slave_from_cpu_data_master >> 2;

  //d1_sysid_control_slave_end_xfer register, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          d1_sysid_control_slave_end_xfer <= 1;
      else if (1)
          d1_sysid_control_slave_end_xfer <= sysid_control_slave_end_xfer;
    end


  //sysid_control_slave_waits_for_read in a cycle, which is an e_mux
  assign sysid_control_slave_waits_for_read = sysid_control_slave_in_a_read_cycle & sysid_control_slave_begins_xfer;

  //sysid_control_slave_in_a_read_cycle assignment, which is an e_assign
  assign sysid_control_slave_in_a_read_cycle = cpu_data_master_granted_sysid_control_slave & cpu_data_master_read;

  //in_a_read_cycle assignment, which is an e_mux
  assign in_a_read_cycle = sysid_control_slave_in_a_read_cycle;

  //sysid_control_slave_waits_for_write in a cycle, which is an e_mux
  assign sysid_control_slave_waits_for_write = sysid_control_slave_in_a_write_cycle & 0;

  //sysid_control_slave_in_a_write_cycle assignment, which is an e_assign
  assign sysid_control_slave_in_a_write_cycle = cpu_data_master_granted_sysid_control_slave & cpu_data_master_write;

  //in_a_write_cycle assignment, which is an e_mux
  assign in_a_write_cycle = sysid_control_slave_in_a_write_cycle;

  assign wait_for_sysid_control_slave_counter = 0;

//synthesis translate_off
//////////////// SIMULATION-ONLY CONTENTS
  //sysid/control_slave enable non-zero assertions, which is an e_register
  always @(posedge clk or negedge reset_n)
    begin
      if (reset_n == 0)
          enable_nonzero_assertions <= 0;
      else if (1)
          enable_nonzero_assertions <= 1'b1;
    end



//////////////// END SIMULATION-ONLY CONTENTS

//synthesis translate_on

endmodule



// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module nios_system (
                     // 1) global signals:
                      clk,
                      reset_n,

                     // the_Expansion_JP1
                      GPIO_0_to_and_from_the_Expansion_JP1,

                     // the_Expansion_JP2
                      GPIO_1_to_and_from_the_Expansion_JP2,

                     // the_Green_LEDs
                      LEDG_from_the_Green_LEDs,

                     // the_HEX3_HEX0
                      HEX0_from_the_HEX3_HEX0,
                      HEX1_from_the_HEX3_HEX0,
                      HEX2_from_the_HEX3_HEX0,
                      HEX3_from_the_HEX3_HEX0,

                     // the_Pushbuttons
                      KEY_to_the_Pushbuttons,

                     // the_Red_LEDs
                      LEDR_from_the_Red_LEDs,

                     // the_SRAM
                      SRAM_ADDR_from_the_SRAM,
                      SRAM_CE_N_from_the_SRAM,
                      SRAM_DQ_to_and_from_the_SRAM,
                      SRAM_LB_N_from_the_SRAM,
                      SRAM_OE_N_from_the_SRAM,
                      SRAM_UB_N_from_the_SRAM,
                      SRAM_WE_N_from_the_SRAM,

                     // the_Serial_port
                      UART_RXD_to_the_Serial_port,
                      UART_TXD_from_the_Serial_port,

                     // the_Slider_switches
                      SW_to_the_Slider_switches
                   )
;

  inout   [ 35: 0] GPIO_0_to_and_from_the_Expansion_JP1;
  inout   [ 35: 0] GPIO_1_to_and_from_the_Expansion_JP2;
  output  [  6: 0] HEX0_from_the_HEX3_HEX0;
  output  [  6: 0] HEX1_from_the_HEX3_HEX0;
  output  [  6: 0] HEX2_from_the_HEX3_HEX0;
  output  [  6: 0] HEX3_from_the_HEX3_HEX0;
  output  [  7: 0] LEDG_from_the_Green_LEDs;
  output  [  9: 0] LEDR_from_the_Red_LEDs;
  output  [ 17: 0] SRAM_ADDR_from_the_SRAM;
  output           SRAM_CE_N_from_the_SRAM;
  inout   [ 15: 0] SRAM_DQ_to_and_from_the_SRAM;
  output           SRAM_LB_N_from_the_SRAM;
  output           SRAM_OE_N_from_the_SRAM;
  output           SRAM_UB_N_from_the_SRAM;
  output           SRAM_WE_N_from_the_SRAM;
  output           UART_TXD_from_the_Serial_port;
  input   [  3: 0] KEY_to_the_Pushbuttons;
  input   [  9: 0] SW_to_the_Slider_switches;
  input            UART_RXD_to_the_Serial_port;
  input            clk;
  input            reset_n;

  wire    [  1: 0] Expansion_JP1_avalon_parallel_port_slave_address;
  wire    [  3: 0] Expansion_JP1_avalon_parallel_port_slave_byteenable;
  wire             Expansion_JP1_avalon_parallel_port_slave_chipselect;
  wire             Expansion_JP1_avalon_parallel_port_slave_irq;
  wire             Expansion_JP1_avalon_parallel_port_slave_irq_from_sa;
  wire             Expansion_JP1_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Expansion_JP1_avalon_parallel_port_slave_readdata;
  wire    [ 31: 0] Expansion_JP1_avalon_parallel_port_slave_readdata_from_sa;
  wire             Expansion_JP1_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Expansion_JP1_avalon_parallel_port_slave_writedata;
  wire    [  1: 0] Expansion_JP2_avalon_parallel_port_slave_address;
  wire    [  3: 0] Expansion_JP2_avalon_parallel_port_slave_byteenable;
  wire             Expansion_JP2_avalon_parallel_port_slave_chipselect;
  wire             Expansion_JP2_avalon_parallel_port_slave_irq;
  wire             Expansion_JP2_avalon_parallel_port_slave_irq_from_sa;
  wire             Expansion_JP2_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Expansion_JP2_avalon_parallel_port_slave_readdata;
  wire    [ 31: 0] Expansion_JP2_avalon_parallel_port_slave_readdata_from_sa;
  wire             Expansion_JP2_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Expansion_JP2_avalon_parallel_port_slave_writedata;
  wire    [ 35: 0] GPIO_0_to_and_from_the_Expansion_JP1;
  wire    [ 35: 0] GPIO_1_to_and_from_the_Expansion_JP2;
  wire    [  1: 0] Green_LEDs_avalon_parallel_port_slave_address;
  wire    [  3: 0] Green_LEDs_avalon_parallel_port_slave_byteenable;
  wire             Green_LEDs_avalon_parallel_port_slave_chipselect;
  wire             Green_LEDs_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Green_LEDs_avalon_parallel_port_slave_readdata;
  wire    [ 31: 0] Green_LEDs_avalon_parallel_port_slave_readdata_from_sa;
  wire             Green_LEDs_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Green_LEDs_avalon_parallel_port_slave_writedata;
  wire    [  6: 0] HEX0_from_the_HEX3_HEX0;
  wire    [  6: 0] HEX1_from_the_HEX3_HEX0;
  wire    [  6: 0] HEX2_from_the_HEX3_HEX0;
  wire    [  1: 0] HEX3_HEX0_avalon_parallel_port_slave_address;
  wire    [  3: 0] HEX3_HEX0_avalon_parallel_port_slave_byteenable;
  wire             HEX3_HEX0_avalon_parallel_port_slave_chipselect;
  wire             HEX3_HEX0_avalon_parallel_port_slave_read;
  wire    [ 31: 0] HEX3_HEX0_avalon_parallel_port_slave_readdata;
  wire    [ 31: 0] HEX3_HEX0_avalon_parallel_port_slave_readdata_from_sa;
  wire             HEX3_HEX0_avalon_parallel_port_slave_write;
  wire    [ 31: 0] HEX3_HEX0_avalon_parallel_port_slave_writedata;
  wire    [  6: 0] HEX3_from_the_HEX3_HEX0;
  wire    [  2: 0] Interval_timer_s1_address;
  wire             Interval_timer_s1_chipselect;
  wire             Interval_timer_s1_irq;
  wire             Interval_timer_s1_irq_from_sa;
  wire    [ 15: 0] Interval_timer_s1_readdata;
  wire    [ 15: 0] Interval_timer_s1_readdata_from_sa;
  wire             Interval_timer_s1_reset_n;
  wire             Interval_timer_s1_write_n;
  wire    [ 15: 0] Interval_timer_s1_writedata;
  wire             JTAG_UART_avalon_jtag_slave_address;
  wire             JTAG_UART_avalon_jtag_slave_chipselect;
  wire             JTAG_UART_avalon_jtag_slave_dataavailable;
  wire             JTAG_UART_avalon_jtag_slave_dataavailable_from_sa;
  wire             JTAG_UART_avalon_jtag_slave_irq;
  wire             JTAG_UART_avalon_jtag_slave_irq_from_sa;
  wire             JTAG_UART_avalon_jtag_slave_read_n;
  wire    [ 31: 0] JTAG_UART_avalon_jtag_slave_readdata;
  wire    [ 31: 0] JTAG_UART_avalon_jtag_slave_readdata_from_sa;
  wire             JTAG_UART_avalon_jtag_slave_readyfordata;
  wire             JTAG_UART_avalon_jtag_slave_readyfordata_from_sa;
  wire             JTAG_UART_avalon_jtag_slave_reset_n;
  wire             JTAG_UART_avalon_jtag_slave_waitrequest;
  wire             JTAG_UART_avalon_jtag_slave_waitrequest_from_sa;
  wire             JTAG_UART_avalon_jtag_slave_write_n;
  wire    [ 31: 0] JTAG_UART_avalon_jtag_slave_writedata;
  wire    [  7: 0] LEDG_from_the_Green_LEDs;
  wire    [  9: 0] LEDR_from_the_Red_LEDs;
  wire    [ 11: 0] Onchip_memory_s1_address;
  wire    [  3: 0] Onchip_memory_s1_byteenable;
  wire             Onchip_memory_s1_chipselect;
  wire             Onchip_memory_s1_clken;
  wire    [ 31: 0] Onchip_memory_s1_readdata;
  wire    [ 31: 0] Onchip_memory_s1_readdata_from_sa;
  wire             Onchip_memory_s1_write;
  wire    [ 31: 0] Onchip_memory_s1_writedata;
  wire    [ 11: 0] Onchip_memory_s2_address;
  wire    [  3: 0] Onchip_memory_s2_byteenable;
  wire             Onchip_memory_s2_chipselect;
  wire             Onchip_memory_s2_clken;
  wire    [ 31: 0] Onchip_memory_s2_readdata;
  wire    [ 31: 0] Onchip_memory_s2_readdata_from_sa;
  wire             Onchip_memory_s2_write;
  wire    [ 31: 0] Onchip_memory_s2_writedata;
  wire    [  1: 0] Pushbuttons_avalon_parallel_port_slave_address;
  wire    [  3: 0] Pushbuttons_avalon_parallel_port_slave_byteenable;
  wire             Pushbuttons_avalon_parallel_port_slave_chipselect;
  wire             Pushbuttons_avalon_parallel_port_slave_irq;
  wire             Pushbuttons_avalon_parallel_port_slave_irq_from_sa;
  wire             Pushbuttons_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Pushbuttons_avalon_parallel_port_slave_readdata;
  wire    [ 31: 0] Pushbuttons_avalon_parallel_port_slave_readdata_from_sa;
  wire             Pushbuttons_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Pushbuttons_avalon_parallel_port_slave_writedata;
  wire    [  1: 0] Red_LEDs_avalon_parallel_port_slave_address;
  wire    [  3: 0] Red_LEDs_avalon_parallel_port_slave_byteenable;
  wire             Red_LEDs_avalon_parallel_port_slave_chipselect;
  wire             Red_LEDs_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Red_LEDs_avalon_parallel_port_slave_readdata;
  wire    [ 31: 0] Red_LEDs_avalon_parallel_port_slave_readdata_from_sa;
  wire             Red_LEDs_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Red_LEDs_avalon_parallel_port_slave_writedata;
  wire    [ 17: 0] SRAM_ADDR_from_the_SRAM;
  wire             SRAM_CE_N_from_the_SRAM;
  wire    [ 15: 0] SRAM_DQ_to_and_from_the_SRAM;
  wire             SRAM_LB_N_from_the_SRAM;
  wire             SRAM_OE_N_from_the_SRAM;
  wire             SRAM_UB_N_from_the_SRAM;
  wire             SRAM_WE_N_from_the_SRAM;
  wire    [ 17: 0] SRAM_avalon_sram_slave_address;
  wire    [  1: 0] SRAM_avalon_sram_slave_byteenable;
  wire             SRAM_avalon_sram_slave_chipselect;
  wire             SRAM_avalon_sram_slave_read;
  wire    [ 15: 0] SRAM_avalon_sram_slave_readdata;
  wire    [ 15: 0] SRAM_avalon_sram_slave_readdata_from_sa;
  wire             SRAM_avalon_sram_slave_write;
  wire    [ 15: 0] SRAM_avalon_sram_slave_writedata;
  wire             Serial_port_avalon_rs232_slave_address;
  wire    [  3: 0] Serial_port_avalon_rs232_slave_byteenable;
  wire             Serial_port_avalon_rs232_slave_chipselect;
  wire             Serial_port_avalon_rs232_slave_irq;
  wire             Serial_port_avalon_rs232_slave_irq_from_sa;
  wire             Serial_port_avalon_rs232_slave_read;
  wire    [ 31: 0] Serial_port_avalon_rs232_slave_readdata;
  wire    [ 31: 0] Serial_port_avalon_rs232_slave_readdata_from_sa;
  wire             Serial_port_avalon_rs232_slave_write;
  wire    [ 31: 0] Serial_port_avalon_rs232_slave_writedata;
  wire    [  1: 0] Slider_switches_avalon_parallel_port_slave_address;
  wire    [  3: 0] Slider_switches_avalon_parallel_port_slave_byteenable;
  wire             Slider_switches_avalon_parallel_port_slave_chipselect;
  wire             Slider_switches_avalon_parallel_port_slave_read;
  wire    [ 31: 0] Slider_switches_avalon_parallel_port_slave_readdata;
  wire    [ 31: 0] Slider_switches_avalon_parallel_port_slave_readdata_from_sa;
  wire             Slider_switches_avalon_parallel_port_slave_write;
  wire    [ 31: 0] Slider_switches_avalon_parallel_port_slave_writedata;
  wire             UART_TXD_from_the_Serial_port;
  wire             clk_reset;
  wire             clk_reset_n;
  wire    [ 28: 0] cpu_data_master_address;
  wire    [ 28: 0] cpu_data_master_address_to_slave;
  wire    [  3: 0] cpu_data_master_byteenable;
  wire    [  1: 0] cpu_data_master_byteenable_SRAM_avalon_sram_slave;
  wire    [  1: 0] cpu_data_master_dbs_address;
  wire    [ 15: 0] cpu_data_master_dbs_write_16;
  wire             cpu_data_master_debugaccess;
  wire             cpu_data_master_granted_Expansion_JP1_avalon_parallel_port_slave;
  wire             cpu_data_master_granted_Expansion_JP2_avalon_parallel_port_slave;
  wire             cpu_data_master_granted_Green_LEDs_avalon_parallel_port_slave;
  wire             cpu_data_master_granted_HEX3_HEX0_avalon_parallel_port_slave;
  wire             cpu_data_master_granted_Interval_timer_s1;
  wire             cpu_data_master_granted_JTAG_UART_avalon_jtag_slave;
  wire             cpu_data_master_granted_Onchip_memory_s2;
  wire             cpu_data_master_granted_Pushbuttons_avalon_parallel_port_slave;
  wire             cpu_data_master_granted_Red_LEDs_avalon_parallel_port_slave;
  wire             cpu_data_master_granted_SRAM_avalon_sram_slave;
  wire             cpu_data_master_granted_Serial_port_avalon_rs232_slave;
  wire             cpu_data_master_granted_Slider_switches_avalon_parallel_port_slave;
  wire             cpu_data_master_granted_cpu_jtag_debug_module;
  wire             cpu_data_master_granted_sysid_control_slave;
  wire    [ 31: 0] cpu_data_master_irq;
  wire             cpu_data_master_no_byte_enables_and_last_term;
  wire             cpu_data_master_qualified_request_Expansion_JP1_avalon_parallel_port_slave;
  wire             cpu_data_master_qualified_request_Expansion_JP2_avalon_parallel_port_slave;
  wire             cpu_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave;
  wire             cpu_data_master_qualified_request_HEX3_HEX0_avalon_parallel_port_slave;
  wire             cpu_data_master_qualified_request_Interval_timer_s1;
  wire             cpu_data_master_qualified_request_JTAG_UART_avalon_jtag_slave;
  wire             cpu_data_master_qualified_request_Onchip_memory_s2;
  wire             cpu_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave;
  wire             cpu_data_master_qualified_request_Red_LEDs_avalon_parallel_port_slave;
  wire             cpu_data_master_qualified_request_SRAM_avalon_sram_slave;
  wire             cpu_data_master_qualified_request_Serial_port_avalon_rs232_slave;
  wire             cpu_data_master_qualified_request_Slider_switches_avalon_parallel_port_slave;
  wire             cpu_data_master_qualified_request_cpu_jtag_debug_module;
  wire             cpu_data_master_qualified_request_sysid_control_slave;
  wire             cpu_data_master_read;
  wire             cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave;
  wire             cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave;
  wire             cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave;
  wire             cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave;
  wire             cpu_data_master_read_data_valid_Interval_timer_s1;
  wire             cpu_data_master_read_data_valid_JTAG_UART_avalon_jtag_slave;
  wire             cpu_data_master_read_data_valid_Onchip_memory_s2;
  wire             cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave;
  wire             cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave;
  wire             cpu_data_master_read_data_valid_SRAM_avalon_sram_slave;
  wire             cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave;
  wire             cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave;
  wire             cpu_data_master_read_data_valid_cpu_jtag_debug_module;
  wire             cpu_data_master_read_data_valid_sysid_control_slave;
  wire    [ 31: 0] cpu_data_master_readdata;
  wire             cpu_data_master_requests_Expansion_JP1_avalon_parallel_port_slave;
  wire             cpu_data_master_requests_Expansion_JP2_avalon_parallel_port_slave;
  wire             cpu_data_master_requests_Green_LEDs_avalon_parallel_port_slave;
  wire             cpu_data_master_requests_HEX3_HEX0_avalon_parallel_port_slave;
  wire             cpu_data_master_requests_Interval_timer_s1;
  wire             cpu_data_master_requests_JTAG_UART_avalon_jtag_slave;
  wire             cpu_data_master_requests_Onchip_memory_s2;
  wire             cpu_data_master_requests_Pushbuttons_avalon_parallel_port_slave;
  wire             cpu_data_master_requests_Red_LEDs_avalon_parallel_port_slave;
  wire             cpu_data_master_requests_SRAM_avalon_sram_slave;
  wire             cpu_data_master_requests_Serial_port_avalon_rs232_slave;
  wire             cpu_data_master_requests_Slider_switches_avalon_parallel_port_slave;
  wire             cpu_data_master_requests_cpu_jtag_debug_module;
  wire             cpu_data_master_requests_sysid_control_slave;
  wire             cpu_data_master_waitrequest;
  wire             cpu_data_master_write;
  wire    [ 31: 0] cpu_data_master_writedata;
  wire    [ 27: 0] cpu_instruction_master_address;
  wire    [ 27: 0] cpu_instruction_master_address_to_slave;
  wire    [  1: 0] cpu_instruction_master_dbs_address;
  wire             cpu_instruction_master_granted_Onchip_memory_s1;
  wire             cpu_instruction_master_granted_SRAM_avalon_sram_slave;
  wire             cpu_instruction_master_granted_cpu_jtag_debug_module;
  wire    [  1: 0] cpu_instruction_master_latency_counter;
  wire             cpu_instruction_master_qualified_request_Onchip_memory_s1;
  wire             cpu_instruction_master_qualified_request_SRAM_avalon_sram_slave;
  wire             cpu_instruction_master_qualified_request_cpu_jtag_debug_module;
  wire             cpu_instruction_master_read;
  wire             cpu_instruction_master_read_data_valid_Onchip_memory_s1;
  wire             cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave;
  wire             cpu_instruction_master_read_data_valid_cpu_jtag_debug_module;
  wire    [ 31: 0] cpu_instruction_master_readdata;
  wire             cpu_instruction_master_readdatavalid;
  wire             cpu_instruction_master_requests_Onchip_memory_s1;
  wire             cpu_instruction_master_requests_SRAM_avalon_sram_slave;
  wire             cpu_instruction_master_requests_cpu_jtag_debug_module;
  wire             cpu_instruction_master_waitrequest;
  wire    [  8: 0] cpu_jtag_debug_module_address;
  wire             cpu_jtag_debug_module_begintransfer;
  wire    [  3: 0] cpu_jtag_debug_module_byteenable;
  wire             cpu_jtag_debug_module_chipselect;
  wire             cpu_jtag_debug_module_debugaccess;
  wire    [ 31: 0] cpu_jtag_debug_module_readdata;
  wire    [ 31: 0] cpu_jtag_debug_module_readdata_from_sa;
  wire             cpu_jtag_debug_module_reset;
  wire             cpu_jtag_debug_module_reset_n;
  wire             cpu_jtag_debug_module_resetrequest;
  wire             cpu_jtag_debug_module_resetrequest_from_sa;
  wire             cpu_jtag_debug_module_write;
  wire    [ 31: 0] cpu_jtag_debug_module_writedata;
  wire             d1_Expansion_JP1_avalon_parallel_port_slave_end_xfer;
  wire             d1_Expansion_JP2_avalon_parallel_port_slave_end_xfer;
  wire             d1_Green_LEDs_avalon_parallel_port_slave_end_xfer;
  wire             d1_HEX3_HEX0_avalon_parallel_port_slave_end_xfer;
  wire             d1_Interval_timer_s1_end_xfer;
  wire             d1_JTAG_UART_avalon_jtag_slave_end_xfer;
  wire             d1_Onchip_memory_s1_end_xfer;
  wire             d1_Onchip_memory_s2_end_xfer;
  wire             d1_Pushbuttons_avalon_parallel_port_slave_end_xfer;
  wire             d1_Red_LEDs_avalon_parallel_port_slave_end_xfer;
  wire             d1_SRAM_avalon_sram_slave_end_xfer;
  wire             d1_Serial_port_avalon_rs232_slave_end_xfer;
  wire             d1_Slider_switches_avalon_parallel_port_slave_end_xfer;
  wire             d1_cpu_jtag_debug_module_end_xfer;
  wire             d1_sysid_control_slave_end_xfer;
  wire             registered_cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave;
  wire             registered_cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave;
  wire             registered_cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave;
  wire             registered_cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave;
  wire             registered_cpu_data_master_read_data_valid_Onchip_memory_s2;
  wire             registered_cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave;
  wire             registered_cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave;
  wire             registered_cpu_data_master_read_data_valid_SRAM_avalon_sram_slave;
  wire             registered_cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave;
  wire             registered_cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave;
  wire             reset_n_sources;
  wire             sysid_control_slave_address;
  wire    [ 31: 0] sysid_control_slave_readdata;
  wire    [ 31: 0] sysid_control_slave_readdata_from_sa;
  Expansion_JP1_avalon_parallel_port_slave_arbitrator the_Expansion_JP1_avalon_parallel_port_slave
    (
      .Expansion_JP1_avalon_parallel_port_slave_address                                    (Expansion_JP1_avalon_parallel_port_slave_address),
      .Expansion_JP1_avalon_parallel_port_slave_byteenable                                 (Expansion_JP1_avalon_parallel_port_slave_byteenable),
      .Expansion_JP1_avalon_parallel_port_slave_chipselect                                 (Expansion_JP1_avalon_parallel_port_slave_chipselect),
      .Expansion_JP1_avalon_parallel_port_slave_irq                                        (Expansion_JP1_avalon_parallel_port_slave_irq),
      .Expansion_JP1_avalon_parallel_port_slave_irq_from_sa                                (Expansion_JP1_avalon_parallel_port_slave_irq_from_sa),
      .Expansion_JP1_avalon_parallel_port_slave_read                                       (Expansion_JP1_avalon_parallel_port_slave_read),
      .Expansion_JP1_avalon_parallel_port_slave_readdata                                   (Expansion_JP1_avalon_parallel_port_slave_readdata),
      .Expansion_JP1_avalon_parallel_port_slave_readdata_from_sa                           (Expansion_JP1_avalon_parallel_port_slave_readdata_from_sa),
      .Expansion_JP1_avalon_parallel_port_slave_write                                      (Expansion_JP1_avalon_parallel_port_slave_write),
      .Expansion_JP1_avalon_parallel_port_slave_writedata                                  (Expansion_JP1_avalon_parallel_port_slave_writedata),
      .clk                                                                                 (clk),
      .cpu_data_master_address_to_slave                                                    (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                                                          (cpu_data_master_byteenable),
      .cpu_data_master_granted_Expansion_JP1_avalon_parallel_port_slave                    (cpu_data_master_granted_Expansion_JP1_avalon_parallel_port_slave),
      .cpu_data_master_qualified_request_Expansion_JP1_avalon_parallel_port_slave          (cpu_data_master_qualified_request_Expansion_JP1_avalon_parallel_port_slave),
      .cpu_data_master_read                                                                (cpu_data_master_read),
      .cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave            (cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave),
      .cpu_data_master_requests_Expansion_JP1_avalon_parallel_port_slave                   (cpu_data_master_requests_Expansion_JP1_avalon_parallel_port_slave),
      .cpu_data_master_waitrequest                                                         (cpu_data_master_waitrequest),
      .cpu_data_master_write                                                               (cpu_data_master_write),
      .cpu_data_master_writedata                                                           (cpu_data_master_writedata),
      .d1_Expansion_JP1_avalon_parallel_port_slave_end_xfer                                (d1_Expansion_JP1_avalon_parallel_port_slave_end_xfer),
      .registered_cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave (registered_cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave),
      .reset_n                                                                             (clk_reset_n)
    );

  //complemented clk_reset_n, which is an e_assign
  assign clk_reset = ~clk_reset_n;

  //reset is asserted asynchronously and deasserted synchronously
  nios_system_reset_clk_domain_synch_module nios_system_reset_clk_domain_synch
    (
      .clk      (clk),
      .data_in  (1'b1),
      .data_out (clk_reset_n),
      .reset_n  (reset_n_sources)
    );

  //reset sources mux, which is an e_mux
  assign reset_n_sources = ~(~reset_n |
    0 |
    cpu_jtag_debug_module_resetrequest_from_sa |
    cpu_jtag_debug_module_resetrequest_from_sa);

  Expansion_JP1 the_Expansion_JP1
    (
      .GPIO_0     (GPIO_0_to_and_from_the_Expansion_JP1),
      .address    (Expansion_JP1_avalon_parallel_port_slave_address),
      .byteenable (Expansion_JP1_avalon_parallel_port_slave_byteenable),
      .chipselect (Expansion_JP1_avalon_parallel_port_slave_chipselect),
      .clk        (clk),
      .irq        (Expansion_JP1_avalon_parallel_port_slave_irq),
      .read       (Expansion_JP1_avalon_parallel_port_slave_read),
      .readdata   (Expansion_JP1_avalon_parallel_port_slave_readdata),
      .reset      (clk_reset),
      .write      (Expansion_JP1_avalon_parallel_port_slave_write),
      .writedata  (Expansion_JP1_avalon_parallel_port_slave_writedata)
    );

  Expansion_JP2_avalon_parallel_port_slave_arbitrator the_Expansion_JP2_avalon_parallel_port_slave
    (
      .Expansion_JP2_avalon_parallel_port_slave_address                                    (Expansion_JP2_avalon_parallel_port_slave_address),
      .Expansion_JP2_avalon_parallel_port_slave_byteenable                                 (Expansion_JP2_avalon_parallel_port_slave_byteenable),
      .Expansion_JP2_avalon_parallel_port_slave_chipselect                                 (Expansion_JP2_avalon_parallel_port_slave_chipselect),
      .Expansion_JP2_avalon_parallel_port_slave_irq                                        (Expansion_JP2_avalon_parallel_port_slave_irq),
      .Expansion_JP2_avalon_parallel_port_slave_irq_from_sa                                (Expansion_JP2_avalon_parallel_port_slave_irq_from_sa),
      .Expansion_JP2_avalon_parallel_port_slave_read                                       (Expansion_JP2_avalon_parallel_port_slave_read),
      .Expansion_JP2_avalon_parallel_port_slave_readdata                                   (Expansion_JP2_avalon_parallel_port_slave_readdata),
      .Expansion_JP2_avalon_parallel_port_slave_readdata_from_sa                           (Expansion_JP2_avalon_parallel_port_slave_readdata_from_sa),
      .Expansion_JP2_avalon_parallel_port_slave_write                                      (Expansion_JP2_avalon_parallel_port_slave_write),
      .Expansion_JP2_avalon_parallel_port_slave_writedata                                  (Expansion_JP2_avalon_parallel_port_slave_writedata),
      .clk                                                                                 (clk),
      .cpu_data_master_address_to_slave                                                    (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                                                          (cpu_data_master_byteenable),
      .cpu_data_master_granted_Expansion_JP2_avalon_parallel_port_slave                    (cpu_data_master_granted_Expansion_JP2_avalon_parallel_port_slave),
      .cpu_data_master_qualified_request_Expansion_JP2_avalon_parallel_port_slave          (cpu_data_master_qualified_request_Expansion_JP2_avalon_parallel_port_slave),
      .cpu_data_master_read                                                                (cpu_data_master_read),
      .cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave            (cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave),
      .cpu_data_master_requests_Expansion_JP2_avalon_parallel_port_slave                   (cpu_data_master_requests_Expansion_JP2_avalon_parallel_port_slave),
      .cpu_data_master_waitrequest                                                         (cpu_data_master_waitrequest),
      .cpu_data_master_write                                                               (cpu_data_master_write),
      .cpu_data_master_writedata                                                           (cpu_data_master_writedata),
      .d1_Expansion_JP2_avalon_parallel_port_slave_end_xfer                                (d1_Expansion_JP2_avalon_parallel_port_slave_end_xfer),
      .registered_cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave (registered_cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave),
      .reset_n                                                                             (clk_reset_n)
    );

  Expansion_JP2 the_Expansion_JP2
    (
      .GPIO_1     (GPIO_1_to_and_from_the_Expansion_JP2),
      .address    (Expansion_JP2_avalon_parallel_port_slave_address),
      .byteenable (Expansion_JP2_avalon_parallel_port_slave_byteenable),
      .chipselect (Expansion_JP2_avalon_parallel_port_slave_chipselect),
      .clk        (clk),
      .irq        (Expansion_JP2_avalon_parallel_port_slave_irq),
      .read       (Expansion_JP2_avalon_parallel_port_slave_read),
      .readdata   (Expansion_JP2_avalon_parallel_port_slave_readdata),
      .reset      (clk_reset),
      .write      (Expansion_JP2_avalon_parallel_port_slave_write),
      .writedata  (Expansion_JP2_avalon_parallel_port_slave_writedata)
    );

  Green_LEDs_avalon_parallel_port_slave_arbitrator the_Green_LEDs_avalon_parallel_port_slave
    (
      .Green_LEDs_avalon_parallel_port_slave_address                                    (Green_LEDs_avalon_parallel_port_slave_address),
      .Green_LEDs_avalon_parallel_port_slave_byteenable                                 (Green_LEDs_avalon_parallel_port_slave_byteenable),
      .Green_LEDs_avalon_parallel_port_slave_chipselect                                 (Green_LEDs_avalon_parallel_port_slave_chipselect),
      .Green_LEDs_avalon_parallel_port_slave_read                                       (Green_LEDs_avalon_parallel_port_slave_read),
      .Green_LEDs_avalon_parallel_port_slave_readdata                                   (Green_LEDs_avalon_parallel_port_slave_readdata),
      .Green_LEDs_avalon_parallel_port_slave_readdata_from_sa                           (Green_LEDs_avalon_parallel_port_slave_readdata_from_sa),
      .Green_LEDs_avalon_parallel_port_slave_write                                      (Green_LEDs_avalon_parallel_port_slave_write),
      .Green_LEDs_avalon_parallel_port_slave_writedata                                  (Green_LEDs_avalon_parallel_port_slave_writedata),
      .clk                                                                              (clk),
      .cpu_data_master_address_to_slave                                                 (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                                                       (cpu_data_master_byteenable),
      .cpu_data_master_granted_Green_LEDs_avalon_parallel_port_slave                    (cpu_data_master_granted_Green_LEDs_avalon_parallel_port_slave),
      .cpu_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave          (cpu_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave),
      .cpu_data_master_read                                                             (cpu_data_master_read),
      .cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave            (cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave),
      .cpu_data_master_requests_Green_LEDs_avalon_parallel_port_slave                   (cpu_data_master_requests_Green_LEDs_avalon_parallel_port_slave),
      .cpu_data_master_waitrequest                                                      (cpu_data_master_waitrequest),
      .cpu_data_master_write                                                            (cpu_data_master_write),
      .cpu_data_master_writedata                                                        (cpu_data_master_writedata),
      .d1_Green_LEDs_avalon_parallel_port_slave_end_xfer                                (d1_Green_LEDs_avalon_parallel_port_slave_end_xfer),
      .registered_cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave (registered_cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave),
      .reset_n                                                                          (clk_reset_n)
    );

  Green_LEDs the_Green_LEDs
    (
      .LEDG       (LEDG_from_the_Green_LEDs),
      .address    (Green_LEDs_avalon_parallel_port_slave_address),
      .byteenable (Green_LEDs_avalon_parallel_port_slave_byteenable),
      .chipselect (Green_LEDs_avalon_parallel_port_slave_chipselect),
      .clk        (clk),
      .read       (Green_LEDs_avalon_parallel_port_slave_read),
      .readdata   (Green_LEDs_avalon_parallel_port_slave_readdata),
      .reset      (clk_reset),
      .write      (Green_LEDs_avalon_parallel_port_slave_write),
      .writedata  (Green_LEDs_avalon_parallel_port_slave_writedata)
    );

  HEX3_HEX0_avalon_parallel_port_slave_arbitrator the_HEX3_HEX0_avalon_parallel_port_slave
    (
      .HEX3_HEX0_avalon_parallel_port_slave_address                                    (HEX3_HEX0_avalon_parallel_port_slave_address),
      .HEX3_HEX0_avalon_parallel_port_slave_byteenable                                 (HEX3_HEX0_avalon_parallel_port_slave_byteenable),
      .HEX3_HEX0_avalon_parallel_port_slave_chipselect                                 (HEX3_HEX0_avalon_parallel_port_slave_chipselect),
      .HEX3_HEX0_avalon_parallel_port_slave_read                                       (HEX3_HEX0_avalon_parallel_port_slave_read),
      .HEX3_HEX0_avalon_parallel_port_slave_readdata                                   (HEX3_HEX0_avalon_parallel_port_slave_readdata),
      .HEX3_HEX0_avalon_parallel_port_slave_readdata_from_sa                           (HEX3_HEX0_avalon_parallel_port_slave_readdata_from_sa),
      .HEX3_HEX0_avalon_parallel_port_slave_write                                      (HEX3_HEX0_avalon_parallel_port_slave_write),
      .HEX3_HEX0_avalon_parallel_port_slave_writedata                                  (HEX3_HEX0_avalon_parallel_port_slave_writedata),
      .clk                                                                             (clk),
      .cpu_data_master_address_to_slave                                                (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                                                      (cpu_data_master_byteenable),
      .cpu_data_master_granted_HEX3_HEX0_avalon_parallel_port_slave                    (cpu_data_master_granted_HEX3_HEX0_avalon_parallel_port_slave),
      .cpu_data_master_qualified_request_HEX3_HEX0_avalon_parallel_port_slave          (cpu_data_master_qualified_request_HEX3_HEX0_avalon_parallel_port_slave),
      .cpu_data_master_read                                                            (cpu_data_master_read),
      .cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave            (cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave),
      .cpu_data_master_requests_HEX3_HEX0_avalon_parallel_port_slave                   (cpu_data_master_requests_HEX3_HEX0_avalon_parallel_port_slave),
      .cpu_data_master_waitrequest                                                     (cpu_data_master_waitrequest),
      .cpu_data_master_write                                                           (cpu_data_master_write),
      .cpu_data_master_writedata                                                       (cpu_data_master_writedata),
      .d1_HEX3_HEX0_avalon_parallel_port_slave_end_xfer                                (d1_HEX3_HEX0_avalon_parallel_port_slave_end_xfer),
      .registered_cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave (registered_cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave),
      .reset_n                                                                         (clk_reset_n)
    );

  HEX3_HEX0 the_HEX3_HEX0
    (
      .HEX0       (HEX0_from_the_HEX3_HEX0),
      .HEX1       (HEX1_from_the_HEX3_HEX0),
      .HEX2       (HEX2_from_the_HEX3_HEX0),
      .HEX3       (HEX3_from_the_HEX3_HEX0),
      .address    (HEX3_HEX0_avalon_parallel_port_slave_address),
      .byteenable (HEX3_HEX0_avalon_parallel_port_slave_byteenable),
      .chipselect (HEX3_HEX0_avalon_parallel_port_slave_chipselect),
      .clk        (clk),
      .read       (HEX3_HEX0_avalon_parallel_port_slave_read),
      .readdata   (HEX3_HEX0_avalon_parallel_port_slave_readdata),
      .reset      (clk_reset),
      .write      (HEX3_HEX0_avalon_parallel_port_slave_write),
      .writedata  (HEX3_HEX0_avalon_parallel_port_slave_writedata)
    );

  Interval_timer_s1_arbitrator the_Interval_timer_s1
    (
      .Interval_timer_s1_address                           (Interval_timer_s1_address),
      .Interval_timer_s1_chipselect                        (Interval_timer_s1_chipselect),
      .Interval_timer_s1_irq                               (Interval_timer_s1_irq),
      .Interval_timer_s1_irq_from_sa                       (Interval_timer_s1_irq_from_sa),
      .Interval_timer_s1_readdata                          (Interval_timer_s1_readdata),
      .Interval_timer_s1_readdata_from_sa                  (Interval_timer_s1_readdata_from_sa),
      .Interval_timer_s1_reset_n                           (Interval_timer_s1_reset_n),
      .Interval_timer_s1_write_n                           (Interval_timer_s1_write_n),
      .Interval_timer_s1_writedata                         (Interval_timer_s1_writedata),
      .clk                                                 (clk),
      .cpu_data_master_address_to_slave                    (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_Interval_timer_s1           (cpu_data_master_granted_Interval_timer_s1),
      .cpu_data_master_qualified_request_Interval_timer_s1 (cpu_data_master_qualified_request_Interval_timer_s1),
      .cpu_data_master_read                                (cpu_data_master_read),
      .cpu_data_master_read_data_valid_Interval_timer_s1   (cpu_data_master_read_data_valid_Interval_timer_s1),
      .cpu_data_master_requests_Interval_timer_s1          (cpu_data_master_requests_Interval_timer_s1),
      .cpu_data_master_waitrequest                         (cpu_data_master_waitrequest),
      .cpu_data_master_write                               (cpu_data_master_write),
      .cpu_data_master_writedata                           (cpu_data_master_writedata),
      .d1_Interval_timer_s1_end_xfer                       (d1_Interval_timer_s1_end_xfer),
      .reset_n                                             (clk_reset_n)
    );

  Interval_timer the_Interval_timer
    (
      .address    (Interval_timer_s1_address),
      .chipselect (Interval_timer_s1_chipselect),
      .clk        (clk),
      .irq        (Interval_timer_s1_irq),
      .readdata   (Interval_timer_s1_readdata),
      .reset_n    (Interval_timer_s1_reset_n),
      .write_n    (Interval_timer_s1_write_n),
      .writedata  (Interval_timer_s1_writedata)
    );

  JTAG_UART_avalon_jtag_slave_arbitrator the_JTAG_UART_avalon_jtag_slave
    (
      .JTAG_UART_avalon_jtag_slave_address                           (JTAG_UART_avalon_jtag_slave_address),
      .JTAG_UART_avalon_jtag_slave_chipselect                        (JTAG_UART_avalon_jtag_slave_chipselect),
      .JTAG_UART_avalon_jtag_slave_dataavailable                     (JTAG_UART_avalon_jtag_slave_dataavailable),
      .JTAG_UART_avalon_jtag_slave_dataavailable_from_sa             (JTAG_UART_avalon_jtag_slave_dataavailable_from_sa),
      .JTAG_UART_avalon_jtag_slave_irq                               (JTAG_UART_avalon_jtag_slave_irq),
      .JTAG_UART_avalon_jtag_slave_irq_from_sa                       (JTAG_UART_avalon_jtag_slave_irq_from_sa),
      .JTAG_UART_avalon_jtag_slave_read_n                            (JTAG_UART_avalon_jtag_slave_read_n),
      .JTAG_UART_avalon_jtag_slave_readdata                          (JTAG_UART_avalon_jtag_slave_readdata),
      .JTAG_UART_avalon_jtag_slave_readdata_from_sa                  (JTAG_UART_avalon_jtag_slave_readdata_from_sa),
      .JTAG_UART_avalon_jtag_slave_readyfordata                      (JTAG_UART_avalon_jtag_slave_readyfordata),
      .JTAG_UART_avalon_jtag_slave_readyfordata_from_sa              (JTAG_UART_avalon_jtag_slave_readyfordata_from_sa),
      .JTAG_UART_avalon_jtag_slave_reset_n                           (JTAG_UART_avalon_jtag_slave_reset_n),
      .JTAG_UART_avalon_jtag_slave_waitrequest                       (JTAG_UART_avalon_jtag_slave_waitrequest),
      .JTAG_UART_avalon_jtag_slave_waitrequest_from_sa               (JTAG_UART_avalon_jtag_slave_waitrequest_from_sa),
      .JTAG_UART_avalon_jtag_slave_write_n                           (JTAG_UART_avalon_jtag_slave_write_n),
      .JTAG_UART_avalon_jtag_slave_writedata                         (JTAG_UART_avalon_jtag_slave_writedata),
      .clk                                                           (clk),
      .cpu_data_master_address_to_slave                              (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_JTAG_UART_avalon_jtag_slave           (cpu_data_master_granted_JTAG_UART_avalon_jtag_slave),
      .cpu_data_master_qualified_request_JTAG_UART_avalon_jtag_slave (cpu_data_master_qualified_request_JTAG_UART_avalon_jtag_slave),
      .cpu_data_master_read                                          (cpu_data_master_read),
      .cpu_data_master_read_data_valid_JTAG_UART_avalon_jtag_slave   (cpu_data_master_read_data_valid_JTAG_UART_avalon_jtag_slave),
      .cpu_data_master_requests_JTAG_UART_avalon_jtag_slave          (cpu_data_master_requests_JTAG_UART_avalon_jtag_slave),
      .cpu_data_master_waitrequest                                   (cpu_data_master_waitrequest),
      .cpu_data_master_write                                         (cpu_data_master_write),
      .cpu_data_master_writedata                                     (cpu_data_master_writedata),
      .d1_JTAG_UART_avalon_jtag_slave_end_xfer                       (d1_JTAG_UART_avalon_jtag_slave_end_xfer),
      .reset_n                                                       (clk_reset_n)
    );

  JTAG_UART the_JTAG_UART
    (
      .av_address     (JTAG_UART_avalon_jtag_slave_address),
      .av_chipselect  (JTAG_UART_avalon_jtag_slave_chipselect),
      .av_irq         (JTAG_UART_avalon_jtag_slave_irq),
      .av_read_n      (JTAG_UART_avalon_jtag_slave_read_n),
      .av_readdata    (JTAG_UART_avalon_jtag_slave_readdata),
      .av_waitrequest (JTAG_UART_avalon_jtag_slave_waitrequest),
      .av_write_n     (JTAG_UART_avalon_jtag_slave_write_n),
      .av_writedata   (JTAG_UART_avalon_jtag_slave_writedata),
      .clk            (clk),
      .dataavailable  (JTAG_UART_avalon_jtag_slave_dataavailable),
      .readyfordata   (JTAG_UART_avalon_jtag_slave_readyfordata),
      .rst_n          (JTAG_UART_avalon_jtag_slave_reset_n)
    );

  Onchip_memory_s1_arbitrator the_Onchip_memory_s1
    (
      .Onchip_memory_s1_address                                  (Onchip_memory_s1_address),
      .Onchip_memory_s1_byteenable                               (Onchip_memory_s1_byteenable),
      .Onchip_memory_s1_chipselect                               (Onchip_memory_s1_chipselect),
      .Onchip_memory_s1_clken                                    (Onchip_memory_s1_clken),
      .Onchip_memory_s1_readdata                                 (Onchip_memory_s1_readdata),
      .Onchip_memory_s1_readdata_from_sa                         (Onchip_memory_s1_readdata_from_sa),
      .Onchip_memory_s1_write                                    (Onchip_memory_s1_write),
      .Onchip_memory_s1_writedata                                (Onchip_memory_s1_writedata),
      .clk                                                       (clk),
      .cpu_instruction_master_address_to_slave                   (cpu_instruction_master_address_to_slave),
      .cpu_instruction_master_granted_Onchip_memory_s1           (cpu_instruction_master_granted_Onchip_memory_s1),
      .cpu_instruction_master_latency_counter                    (cpu_instruction_master_latency_counter),
      .cpu_instruction_master_qualified_request_Onchip_memory_s1 (cpu_instruction_master_qualified_request_Onchip_memory_s1),
      .cpu_instruction_master_read                               (cpu_instruction_master_read),
      .cpu_instruction_master_read_data_valid_Onchip_memory_s1   (cpu_instruction_master_read_data_valid_Onchip_memory_s1),
      .cpu_instruction_master_requests_Onchip_memory_s1          (cpu_instruction_master_requests_Onchip_memory_s1),
      .d1_Onchip_memory_s1_end_xfer                              (d1_Onchip_memory_s1_end_xfer),
      .reset_n                                                   (clk_reset_n)
    );

  Onchip_memory_s2_arbitrator the_Onchip_memory_s2
    (
      .Onchip_memory_s2_address                                    (Onchip_memory_s2_address),
      .Onchip_memory_s2_byteenable                                 (Onchip_memory_s2_byteenable),
      .Onchip_memory_s2_chipselect                                 (Onchip_memory_s2_chipselect),
      .Onchip_memory_s2_clken                                      (Onchip_memory_s2_clken),
      .Onchip_memory_s2_readdata                                   (Onchip_memory_s2_readdata),
      .Onchip_memory_s2_readdata_from_sa                           (Onchip_memory_s2_readdata_from_sa),
      .Onchip_memory_s2_write                                      (Onchip_memory_s2_write),
      .Onchip_memory_s2_writedata                                  (Onchip_memory_s2_writedata),
      .clk                                                         (clk),
      .cpu_data_master_address_to_slave                            (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                                  (cpu_data_master_byteenable),
      .cpu_data_master_granted_Onchip_memory_s2                    (cpu_data_master_granted_Onchip_memory_s2),
      .cpu_data_master_qualified_request_Onchip_memory_s2          (cpu_data_master_qualified_request_Onchip_memory_s2),
      .cpu_data_master_read                                        (cpu_data_master_read),
      .cpu_data_master_read_data_valid_Onchip_memory_s2            (cpu_data_master_read_data_valid_Onchip_memory_s2),
      .cpu_data_master_requests_Onchip_memory_s2                   (cpu_data_master_requests_Onchip_memory_s2),
      .cpu_data_master_waitrequest                                 (cpu_data_master_waitrequest),
      .cpu_data_master_write                                       (cpu_data_master_write),
      .cpu_data_master_writedata                                   (cpu_data_master_writedata),
      .d1_Onchip_memory_s2_end_xfer                                (d1_Onchip_memory_s2_end_xfer),
      .registered_cpu_data_master_read_data_valid_Onchip_memory_s2 (registered_cpu_data_master_read_data_valid_Onchip_memory_s2),
      .reset_n                                                     (clk_reset_n)
    );

  Onchip_memory the_Onchip_memory
    (
      .address     (Onchip_memory_s1_address),
      .address2    (Onchip_memory_s2_address),
      .byteenable  (Onchip_memory_s1_byteenable),
      .byteenable2 (Onchip_memory_s2_byteenable),
      .chipselect  (Onchip_memory_s1_chipselect),
      .chipselect2 (Onchip_memory_s2_chipselect),
      .clk         (clk),
      .clk2        (clk),
      .clken       (Onchip_memory_s1_clken),
      .clken2      (Onchip_memory_s2_clken),
      .readdata    (Onchip_memory_s1_readdata),
      .readdata2   (Onchip_memory_s2_readdata),
      .write       (Onchip_memory_s1_write),
      .write2      (Onchip_memory_s2_write),
      .writedata   (Onchip_memory_s1_writedata),
      .writedata2  (Onchip_memory_s2_writedata)
    );

  Pushbuttons_avalon_parallel_port_slave_arbitrator the_Pushbuttons_avalon_parallel_port_slave
    (
      .Pushbuttons_avalon_parallel_port_slave_address                                    (Pushbuttons_avalon_parallel_port_slave_address),
      .Pushbuttons_avalon_parallel_port_slave_byteenable                                 (Pushbuttons_avalon_parallel_port_slave_byteenable),
      .Pushbuttons_avalon_parallel_port_slave_chipselect                                 (Pushbuttons_avalon_parallel_port_slave_chipselect),
      .Pushbuttons_avalon_parallel_port_slave_irq                                        (Pushbuttons_avalon_parallel_port_slave_irq),
      .Pushbuttons_avalon_parallel_port_slave_irq_from_sa                                (Pushbuttons_avalon_parallel_port_slave_irq_from_sa),
      .Pushbuttons_avalon_parallel_port_slave_read                                       (Pushbuttons_avalon_parallel_port_slave_read),
      .Pushbuttons_avalon_parallel_port_slave_readdata                                   (Pushbuttons_avalon_parallel_port_slave_readdata),
      .Pushbuttons_avalon_parallel_port_slave_readdata_from_sa                           (Pushbuttons_avalon_parallel_port_slave_readdata_from_sa),
      .Pushbuttons_avalon_parallel_port_slave_write                                      (Pushbuttons_avalon_parallel_port_slave_write),
      .Pushbuttons_avalon_parallel_port_slave_writedata                                  (Pushbuttons_avalon_parallel_port_slave_writedata),
      .clk                                                                               (clk),
      .cpu_data_master_address_to_slave                                                  (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                                                        (cpu_data_master_byteenable),
      .cpu_data_master_granted_Pushbuttons_avalon_parallel_port_slave                    (cpu_data_master_granted_Pushbuttons_avalon_parallel_port_slave),
      .cpu_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave          (cpu_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave),
      .cpu_data_master_read                                                              (cpu_data_master_read),
      .cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave            (cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave),
      .cpu_data_master_requests_Pushbuttons_avalon_parallel_port_slave                   (cpu_data_master_requests_Pushbuttons_avalon_parallel_port_slave),
      .cpu_data_master_waitrequest                                                       (cpu_data_master_waitrequest),
      .cpu_data_master_write                                                             (cpu_data_master_write),
      .cpu_data_master_writedata                                                         (cpu_data_master_writedata),
      .d1_Pushbuttons_avalon_parallel_port_slave_end_xfer                                (d1_Pushbuttons_avalon_parallel_port_slave_end_xfer),
      .registered_cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave (registered_cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave),
      .reset_n                                                                           (clk_reset_n)
    );

  Pushbuttons the_Pushbuttons
    (
      .KEY        (KEY_to_the_Pushbuttons),
      .address    (Pushbuttons_avalon_parallel_port_slave_address),
      .byteenable (Pushbuttons_avalon_parallel_port_slave_byteenable),
      .chipselect (Pushbuttons_avalon_parallel_port_slave_chipselect),
      .clk        (clk),
      .irq        (Pushbuttons_avalon_parallel_port_slave_irq),
      .read       (Pushbuttons_avalon_parallel_port_slave_read),
      .readdata   (Pushbuttons_avalon_parallel_port_slave_readdata),
      .reset      (clk_reset),
      .write      (Pushbuttons_avalon_parallel_port_slave_write),
      .writedata  (Pushbuttons_avalon_parallel_port_slave_writedata)
    );

  Red_LEDs_avalon_parallel_port_slave_arbitrator the_Red_LEDs_avalon_parallel_port_slave
    (
      .Red_LEDs_avalon_parallel_port_slave_address                                    (Red_LEDs_avalon_parallel_port_slave_address),
      .Red_LEDs_avalon_parallel_port_slave_byteenable                                 (Red_LEDs_avalon_parallel_port_slave_byteenable),
      .Red_LEDs_avalon_parallel_port_slave_chipselect                                 (Red_LEDs_avalon_parallel_port_slave_chipselect),
      .Red_LEDs_avalon_parallel_port_slave_read                                       (Red_LEDs_avalon_parallel_port_slave_read),
      .Red_LEDs_avalon_parallel_port_slave_readdata                                   (Red_LEDs_avalon_parallel_port_slave_readdata),
      .Red_LEDs_avalon_parallel_port_slave_readdata_from_sa                           (Red_LEDs_avalon_parallel_port_slave_readdata_from_sa),
      .Red_LEDs_avalon_parallel_port_slave_write                                      (Red_LEDs_avalon_parallel_port_slave_write),
      .Red_LEDs_avalon_parallel_port_slave_writedata                                  (Red_LEDs_avalon_parallel_port_slave_writedata),
      .clk                                                                            (clk),
      .cpu_data_master_address_to_slave                                               (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                                                     (cpu_data_master_byteenable),
      .cpu_data_master_granted_Red_LEDs_avalon_parallel_port_slave                    (cpu_data_master_granted_Red_LEDs_avalon_parallel_port_slave),
      .cpu_data_master_qualified_request_Red_LEDs_avalon_parallel_port_slave          (cpu_data_master_qualified_request_Red_LEDs_avalon_parallel_port_slave),
      .cpu_data_master_read                                                           (cpu_data_master_read),
      .cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave            (cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave),
      .cpu_data_master_requests_Red_LEDs_avalon_parallel_port_slave                   (cpu_data_master_requests_Red_LEDs_avalon_parallel_port_slave),
      .cpu_data_master_waitrequest                                                    (cpu_data_master_waitrequest),
      .cpu_data_master_write                                                          (cpu_data_master_write),
      .cpu_data_master_writedata                                                      (cpu_data_master_writedata),
      .d1_Red_LEDs_avalon_parallel_port_slave_end_xfer                                (d1_Red_LEDs_avalon_parallel_port_slave_end_xfer),
      .registered_cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave (registered_cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave),
      .reset_n                                                                        (clk_reset_n)
    );

  Red_LEDs the_Red_LEDs
    (
      .LEDR       (LEDR_from_the_Red_LEDs),
      .address    (Red_LEDs_avalon_parallel_port_slave_address),
      .byteenable (Red_LEDs_avalon_parallel_port_slave_byteenable),
      .chipselect (Red_LEDs_avalon_parallel_port_slave_chipselect),
      .clk        (clk),
      .read       (Red_LEDs_avalon_parallel_port_slave_read),
      .readdata   (Red_LEDs_avalon_parallel_port_slave_readdata),
      .reset      (clk_reset),
      .write      (Red_LEDs_avalon_parallel_port_slave_write),
      .writedata  (Red_LEDs_avalon_parallel_port_slave_writedata)
    );

  SRAM_avalon_sram_slave_arbitrator the_SRAM_avalon_sram_slave
    (
      .SRAM_avalon_sram_slave_address                                    (SRAM_avalon_sram_slave_address),
      .SRAM_avalon_sram_slave_byteenable                                 (SRAM_avalon_sram_slave_byteenable),
      .SRAM_avalon_sram_slave_chipselect                                 (SRAM_avalon_sram_slave_chipselect),
      .SRAM_avalon_sram_slave_read                                       (SRAM_avalon_sram_slave_read),
      .SRAM_avalon_sram_slave_readdata                                   (SRAM_avalon_sram_slave_readdata),
      .SRAM_avalon_sram_slave_readdata_from_sa                           (SRAM_avalon_sram_slave_readdata_from_sa),
      .SRAM_avalon_sram_slave_write                                      (SRAM_avalon_sram_slave_write),
      .SRAM_avalon_sram_slave_writedata                                  (SRAM_avalon_sram_slave_writedata),
      .clk                                                               (clk),
      .cpu_data_master_address_to_slave                                  (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                                        (cpu_data_master_byteenable),
      .cpu_data_master_byteenable_SRAM_avalon_sram_slave                 (cpu_data_master_byteenable_SRAM_avalon_sram_slave),
      .cpu_data_master_dbs_address                                       (cpu_data_master_dbs_address),
      .cpu_data_master_dbs_write_16                                      (cpu_data_master_dbs_write_16),
      .cpu_data_master_granted_SRAM_avalon_sram_slave                    (cpu_data_master_granted_SRAM_avalon_sram_slave),
      .cpu_data_master_no_byte_enables_and_last_term                     (cpu_data_master_no_byte_enables_and_last_term),
      .cpu_data_master_qualified_request_SRAM_avalon_sram_slave          (cpu_data_master_qualified_request_SRAM_avalon_sram_slave),
      .cpu_data_master_read                                              (cpu_data_master_read),
      .cpu_data_master_read_data_valid_SRAM_avalon_sram_slave            (cpu_data_master_read_data_valid_SRAM_avalon_sram_slave),
      .cpu_data_master_requests_SRAM_avalon_sram_slave                   (cpu_data_master_requests_SRAM_avalon_sram_slave),
      .cpu_data_master_waitrequest                                       (cpu_data_master_waitrequest),
      .cpu_data_master_write                                             (cpu_data_master_write),
      .cpu_instruction_master_address_to_slave                           (cpu_instruction_master_address_to_slave),
      .cpu_instruction_master_dbs_address                                (cpu_instruction_master_dbs_address),
      .cpu_instruction_master_granted_SRAM_avalon_sram_slave             (cpu_instruction_master_granted_SRAM_avalon_sram_slave),
      .cpu_instruction_master_latency_counter                            (cpu_instruction_master_latency_counter),
      .cpu_instruction_master_qualified_request_SRAM_avalon_sram_slave   (cpu_instruction_master_qualified_request_SRAM_avalon_sram_slave),
      .cpu_instruction_master_read                                       (cpu_instruction_master_read),
      .cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave     (cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave),
      .cpu_instruction_master_requests_SRAM_avalon_sram_slave            (cpu_instruction_master_requests_SRAM_avalon_sram_slave),
      .d1_SRAM_avalon_sram_slave_end_xfer                                (d1_SRAM_avalon_sram_slave_end_xfer),
      .registered_cpu_data_master_read_data_valid_SRAM_avalon_sram_slave (registered_cpu_data_master_read_data_valid_SRAM_avalon_sram_slave),
      .reset_n                                                           (clk_reset_n)
    );

  SRAM the_SRAM
    (
      .SRAM_ADDR  (SRAM_ADDR_from_the_SRAM),
      .SRAM_CE_N  (SRAM_CE_N_from_the_SRAM),
      .SRAM_DQ    (SRAM_DQ_to_and_from_the_SRAM),
      .SRAM_LB_N  (SRAM_LB_N_from_the_SRAM),
      .SRAM_OE_N  (SRAM_OE_N_from_the_SRAM),
      .SRAM_UB_N  (SRAM_UB_N_from_the_SRAM),
      .SRAM_WE_N  (SRAM_WE_N_from_the_SRAM),
      .address    (SRAM_avalon_sram_slave_address),
      .byteenable (SRAM_avalon_sram_slave_byteenable),
      .chipselect (SRAM_avalon_sram_slave_chipselect),
      .clk        (clk),
      .read       (SRAM_avalon_sram_slave_read),
      .readdata   (SRAM_avalon_sram_slave_readdata),
      .reset      (clk_reset),
      .write      (SRAM_avalon_sram_slave_write),
      .writedata  (SRAM_avalon_sram_slave_writedata)
    );

  Serial_port_avalon_rs232_slave_arbitrator the_Serial_port_avalon_rs232_slave
    (
      .Serial_port_avalon_rs232_slave_address                                    (Serial_port_avalon_rs232_slave_address),
      .Serial_port_avalon_rs232_slave_byteenable                                 (Serial_port_avalon_rs232_slave_byteenable),
      .Serial_port_avalon_rs232_slave_chipselect                                 (Serial_port_avalon_rs232_slave_chipselect),
      .Serial_port_avalon_rs232_slave_irq                                        (Serial_port_avalon_rs232_slave_irq),
      .Serial_port_avalon_rs232_slave_irq_from_sa                                (Serial_port_avalon_rs232_slave_irq_from_sa),
      .Serial_port_avalon_rs232_slave_read                                       (Serial_port_avalon_rs232_slave_read),
      .Serial_port_avalon_rs232_slave_readdata                                   (Serial_port_avalon_rs232_slave_readdata),
      .Serial_port_avalon_rs232_slave_readdata_from_sa                           (Serial_port_avalon_rs232_slave_readdata_from_sa),
      .Serial_port_avalon_rs232_slave_write                                      (Serial_port_avalon_rs232_slave_write),
      .Serial_port_avalon_rs232_slave_writedata                                  (Serial_port_avalon_rs232_slave_writedata),
      .clk                                                                       (clk),
      .cpu_data_master_address_to_slave                                          (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                                                (cpu_data_master_byteenable),
      .cpu_data_master_granted_Serial_port_avalon_rs232_slave                    (cpu_data_master_granted_Serial_port_avalon_rs232_slave),
      .cpu_data_master_qualified_request_Serial_port_avalon_rs232_slave          (cpu_data_master_qualified_request_Serial_port_avalon_rs232_slave),
      .cpu_data_master_read                                                      (cpu_data_master_read),
      .cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave            (cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave),
      .cpu_data_master_requests_Serial_port_avalon_rs232_slave                   (cpu_data_master_requests_Serial_port_avalon_rs232_slave),
      .cpu_data_master_waitrequest                                               (cpu_data_master_waitrequest),
      .cpu_data_master_write                                                     (cpu_data_master_write),
      .cpu_data_master_writedata                                                 (cpu_data_master_writedata),
      .d1_Serial_port_avalon_rs232_slave_end_xfer                                (d1_Serial_port_avalon_rs232_slave_end_xfer),
      .registered_cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave (registered_cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave),
      .reset_n                                                                   (clk_reset_n)
    );

  Serial_port the_Serial_port
    (
      .UART_RXD   (UART_RXD_to_the_Serial_port),
      .UART_TXD   (UART_TXD_from_the_Serial_port),
      .address    (Serial_port_avalon_rs232_slave_address),
      .byteenable (Serial_port_avalon_rs232_slave_byteenable),
      .chipselect (Serial_port_avalon_rs232_slave_chipselect),
      .clk        (clk),
      .irq        (Serial_port_avalon_rs232_slave_irq),
      .read       (Serial_port_avalon_rs232_slave_read),
      .readdata   (Serial_port_avalon_rs232_slave_readdata),
      .reset      (clk_reset),
      .write      (Serial_port_avalon_rs232_slave_write),
      .writedata  (Serial_port_avalon_rs232_slave_writedata)
    );

  Slider_switches_avalon_parallel_port_slave_arbitrator the_Slider_switches_avalon_parallel_port_slave
    (
      .Slider_switches_avalon_parallel_port_slave_address                                    (Slider_switches_avalon_parallel_port_slave_address),
      .Slider_switches_avalon_parallel_port_slave_byteenable                                 (Slider_switches_avalon_parallel_port_slave_byteenable),
      .Slider_switches_avalon_parallel_port_slave_chipselect                                 (Slider_switches_avalon_parallel_port_slave_chipselect),
      .Slider_switches_avalon_parallel_port_slave_read                                       (Slider_switches_avalon_parallel_port_slave_read),
      .Slider_switches_avalon_parallel_port_slave_readdata                                   (Slider_switches_avalon_parallel_port_slave_readdata),
      .Slider_switches_avalon_parallel_port_slave_readdata_from_sa                           (Slider_switches_avalon_parallel_port_slave_readdata_from_sa),
      .Slider_switches_avalon_parallel_port_slave_write                                      (Slider_switches_avalon_parallel_port_slave_write),
      .Slider_switches_avalon_parallel_port_slave_writedata                                  (Slider_switches_avalon_parallel_port_slave_writedata),
      .clk                                                                                   (clk),
      .cpu_data_master_address_to_slave                                                      (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                                                            (cpu_data_master_byteenable),
      .cpu_data_master_granted_Slider_switches_avalon_parallel_port_slave                    (cpu_data_master_granted_Slider_switches_avalon_parallel_port_slave),
      .cpu_data_master_qualified_request_Slider_switches_avalon_parallel_port_slave          (cpu_data_master_qualified_request_Slider_switches_avalon_parallel_port_slave),
      .cpu_data_master_read                                                                  (cpu_data_master_read),
      .cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave            (cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave),
      .cpu_data_master_requests_Slider_switches_avalon_parallel_port_slave                   (cpu_data_master_requests_Slider_switches_avalon_parallel_port_slave),
      .cpu_data_master_waitrequest                                                           (cpu_data_master_waitrequest),
      .cpu_data_master_write                                                                 (cpu_data_master_write),
      .cpu_data_master_writedata                                                             (cpu_data_master_writedata),
      .d1_Slider_switches_avalon_parallel_port_slave_end_xfer                                (d1_Slider_switches_avalon_parallel_port_slave_end_xfer),
      .registered_cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave (registered_cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave),
      .reset_n                                                                               (clk_reset_n)
    );

  Slider_switches the_Slider_switches
    (
      .SW         (SW_to_the_Slider_switches),
      .address    (Slider_switches_avalon_parallel_port_slave_address),
      .byteenable (Slider_switches_avalon_parallel_port_slave_byteenable),
      .chipselect (Slider_switches_avalon_parallel_port_slave_chipselect),
      .clk        (clk),
      .read       (Slider_switches_avalon_parallel_port_slave_read),
      .readdata   (Slider_switches_avalon_parallel_port_slave_readdata),
      .reset      (clk_reset),
      .write      (Slider_switches_avalon_parallel_port_slave_write),
      .writedata  (Slider_switches_avalon_parallel_port_slave_writedata)
    );

  cpu_jtag_debug_module_arbitrator the_cpu_jtag_debug_module
    (
      .clk                                                            (clk),
      .cpu_data_master_address_to_slave                               (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable                                     (cpu_data_master_byteenable),
      .cpu_data_master_debugaccess                                    (cpu_data_master_debugaccess),
      .cpu_data_master_granted_cpu_jtag_debug_module                  (cpu_data_master_granted_cpu_jtag_debug_module),
      .cpu_data_master_qualified_request_cpu_jtag_debug_module        (cpu_data_master_qualified_request_cpu_jtag_debug_module),
      .cpu_data_master_read                                           (cpu_data_master_read),
      .cpu_data_master_read_data_valid_cpu_jtag_debug_module          (cpu_data_master_read_data_valid_cpu_jtag_debug_module),
      .cpu_data_master_requests_cpu_jtag_debug_module                 (cpu_data_master_requests_cpu_jtag_debug_module),
      .cpu_data_master_waitrequest                                    (cpu_data_master_waitrequest),
      .cpu_data_master_write                                          (cpu_data_master_write),
      .cpu_data_master_writedata                                      (cpu_data_master_writedata),
      .cpu_instruction_master_address_to_slave                        (cpu_instruction_master_address_to_slave),
      .cpu_instruction_master_granted_cpu_jtag_debug_module           (cpu_instruction_master_granted_cpu_jtag_debug_module),
      .cpu_instruction_master_latency_counter                         (cpu_instruction_master_latency_counter),
      .cpu_instruction_master_qualified_request_cpu_jtag_debug_module (cpu_instruction_master_qualified_request_cpu_jtag_debug_module),
      .cpu_instruction_master_read                                    (cpu_instruction_master_read),
      .cpu_instruction_master_read_data_valid_cpu_jtag_debug_module   (cpu_instruction_master_read_data_valid_cpu_jtag_debug_module),
      .cpu_instruction_master_requests_cpu_jtag_debug_module          (cpu_instruction_master_requests_cpu_jtag_debug_module),
      .cpu_jtag_debug_module_address                                  (cpu_jtag_debug_module_address),
      .cpu_jtag_debug_module_begintransfer                            (cpu_jtag_debug_module_begintransfer),
      .cpu_jtag_debug_module_byteenable                               (cpu_jtag_debug_module_byteenable),
      .cpu_jtag_debug_module_chipselect                               (cpu_jtag_debug_module_chipselect),
      .cpu_jtag_debug_module_debugaccess                              (cpu_jtag_debug_module_debugaccess),
      .cpu_jtag_debug_module_readdata                                 (cpu_jtag_debug_module_readdata),
      .cpu_jtag_debug_module_readdata_from_sa                         (cpu_jtag_debug_module_readdata_from_sa),
      .cpu_jtag_debug_module_reset                                    (cpu_jtag_debug_module_reset),
      .cpu_jtag_debug_module_reset_n                                  (cpu_jtag_debug_module_reset_n),
      .cpu_jtag_debug_module_resetrequest                             (cpu_jtag_debug_module_resetrequest),
      .cpu_jtag_debug_module_resetrequest_from_sa                     (cpu_jtag_debug_module_resetrequest_from_sa),
      .cpu_jtag_debug_module_write                                    (cpu_jtag_debug_module_write),
      .cpu_jtag_debug_module_writedata                                (cpu_jtag_debug_module_writedata),
      .d1_cpu_jtag_debug_module_end_xfer                              (d1_cpu_jtag_debug_module_end_xfer),
      .reset_n                                                        (clk_reset_n)
    );

  cpu_data_master_arbitrator the_cpu_data_master
    (
      .Expansion_JP1_avalon_parallel_port_slave_irq_from_sa                                  (Expansion_JP1_avalon_parallel_port_slave_irq_from_sa),
      .Expansion_JP1_avalon_parallel_port_slave_readdata_from_sa                             (Expansion_JP1_avalon_parallel_port_slave_readdata_from_sa),
      .Expansion_JP2_avalon_parallel_port_slave_irq_from_sa                                  (Expansion_JP2_avalon_parallel_port_slave_irq_from_sa),
      .Expansion_JP2_avalon_parallel_port_slave_readdata_from_sa                             (Expansion_JP2_avalon_parallel_port_slave_readdata_from_sa),
      .Green_LEDs_avalon_parallel_port_slave_readdata_from_sa                                (Green_LEDs_avalon_parallel_port_slave_readdata_from_sa),
      .HEX3_HEX0_avalon_parallel_port_slave_readdata_from_sa                                 (HEX3_HEX0_avalon_parallel_port_slave_readdata_from_sa),
      .Interval_timer_s1_irq_from_sa                                                         (Interval_timer_s1_irq_from_sa),
      .Interval_timer_s1_readdata_from_sa                                                    (Interval_timer_s1_readdata_from_sa),
      .JTAG_UART_avalon_jtag_slave_irq_from_sa                                               (JTAG_UART_avalon_jtag_slave_irq_from_sa),
      .JTAG_UART_avalon_jtag_slave_readdata_from_sa                                          (JTAG_UART_avalon_jtag_slave_readdata_from_sa),
      .JTAG_UART_avalon_jtag_slave_waitrequest_from_sa                                       (JTAG_UART_avalon_jtag_slave_waitrequest_from_sa),
      .Onchip_memory_s2_readdata_from_sa                                                     (Onchip_memory_s2_readdata_from_sa),
      .Pushbuttons_avalon_parallel_port_slave_irq_from_sa                                    (Pushbuttons_avalon_parallel_port_slave_irq_from_sa),
      .Pushbuttons_avalon_parallel_port_slave_readdata_from_sa                               (Pushbuttons_avalon_parallel_port_slave_readdata_from_sa),
      .Red_LEDs_avalon_parallel_port_slave_readdata_from_sa                                  (Red_LEDs_avalon_parallel_port_slave_readdata_from_sa),
      .SRAM_avalon_sram_slave_readdata_from_sa                                               (SRAM_avalon_sram_slave_readdata_from_sa),
      .Serial_port_avalon_rs232_slave_irq_from_sa                                            (Serial_port_avalon_rs232_slave_irq_from_sa),
      .Serial_port_avalon_rs232_slave_readdata_from_sa                                       (Serial_port_avalon_rs232_slave_readdata_from_sa),
      .Slider_switches_avalon_parallel_port_slave_readdata_from_sa                           (Slider_switches_avalon_parallel_port_slave_readdata_from_sa),
      .clk                                                                                   (clk),
      .cpu_data_master_address                                                               (cpu_data_master_address),
      .cpu_data_master_address_to_slave                                                      (cpu_data_master_address_to_slave),
      .cpu_data_master_byteenable_SRAM_avalon_sram_slave                                     (cpu_data_master_byteenable_SRAM_avalon_sram_slave),
      .cpu_data_master_dbs_address                                                           (cpu_data_master_dbs_address),
      .cpu_data_master_dbs_write_16                                                          (cpu_data_master_dbs_write_16),
      .cpu_data_master_debugaccess                                                           (cpu_data_master_debugaccess),
      .cpu_data_master_granted_Expansion_JP1_avalon_parallel_port_slave                      (cpu_data_master_granted_Expansion_JP1_avalon_parallel_port_slave),
      .cpu_data_master_granted_Expansion_JP2_avalon_parallel_port_slave                      (cpu_data_master_granted_Expansion_JP2_avalon_parallel_port_slave),
      .cpu_data_master_granted_Green_LEDs_avalon_parallel_port_slave                         (cpu_data_master_granted_Green_LEDs_avalon_parallel_port_slave),
      .cpu_data_master_granted_HEX3_HEX0_avalon_parallel_port_slave                          (cpu_data_master_granted_HEX3_HEX0_avalon_parallel_port_slave),
      .cpu_data_master_granted_Interval_timer_s1                                             (cpu_data_master_granted_Interval_timer_s1),
      .cpu_data_master_granted_JTAG_UART_avalon_jtag_slave                                   (cpu_data_master_granted_JTAG_UART_avalon_jtag_slave),
      .cpu_data_master_granted_Onchip_memory_s2                                              (cpu_data_master_granted_Onchip_memory_s2),
      .cpu_data_master_granted_Pushbuttons_avalon_parallel_port_slave                        (cpu_data_master_granted_Pushbuttons_avalon_parallel_port_slave),
      .cpu_data_master_granted_Red_LEDs_avalon_parallel_port_slave                           (cpu_data_master_granted_Red_LEDs_avalon_parallel_port_slave),
      .cpu_data_master_granted_SRAM_avalon_sram_slave                                        (cpu_data_master_granted_SRAM_avalon_sram_slave),
      .cpu_data_master_granted_Serial_port_avalon_rs232_slave                                (cpu_data_master_granted_Serial_port_avalon_rs232_slave),
      .cpu_data_master_granted_Slider_switches_avalon_parallel_port_slave                    (cpu_data_master_granted_Slider_switches_avalon_parallel_port_slave),
      .cpu_data_master_granted_cpu_jtag_debug_module                                         (cpu_data_master_granted_cpu_jtag_debug_module),
      .cpu_data_master_granted_sysid_control_slave                                           (cpu_data_master_granted_sysid_control_slave),
      .cpu_data_master_irq                                                                   (cpu_data_master_irq),
      .cpu_data_master_no_byte_enables_and_last_term                                         (cpu_data_master_no_byte_enables_and_last_term),
      .cpu_data_master_qualified_request_Expansion_JP1_avalon_parallel_port_slave            (cpu_data_master_qualified_request_Expansion_JP1_avalon_parallel_port_slave),
      .cpu_data_master_qualified_request_Expansion_JP2_avalon_parallel_port_slave            (cpu_data_master_qualified_request_Expansion_JP2_avalon_parallel_port_slave),
      .cpu_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave               (cpu_data_master_qualified_request_Green_LEDs_avalon_parallel_port_slave),
      .cpu_data_master_qualified_request_HEX3_HEX0_avalon_parallel_port_slave                (cpu_data_master_qualified_request_HEX3_HEX0_avalon_parallel_port_slave),
      .cpu_data_master_qualified_request_Interval_timer_s1                                   (cpu_data_master_qualified_request_Interval_timer_s1),
      .cpu_data_master_qualified_request_JTAG_UART_avalon_jtag_slave                         (cpu_data_master_qualified_request_JTAG_UART_avalon_jtag_slave),
      .cpu_data_master_qualified_request_Onchip_memory_s2                                    (cpu_data_master_qualified_request_Onchip_memory_s2),
      .cpu_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave              (cpu_data_master_qualified_request_Pushbuttons_avalon_parallel_port_slave),
      .cpu_data_master_qualified_request_Red_LEDs_avalon_parallel_port_slave                 (cpu_data_master_qualified_request_Red_LEDs_avalon_parallel_port_slave),
      .cpu_data_master_qualified_request_SRAM_avalon_sram_slave                              (cpu_data_master_qualified_request_SRAM_avalon_sram_slave),
      .cpu_data_master_qualified_request_Serial_port_avalon_rs232_slave                      (cpu_data_master_qualified_request_Serial_port_avalon_rs232_slave),
      .cpu_data_master_qualified_request_Slider_switches_avalon_parallel_port_slave          (cpu_data_master_qualified_request_Slider_switches_avalon_parallel_port_slave),
      .cpu_data_master_qualified_request_cpu_jtag_debug_module                               (cpu_data_master_qualified_request_cpu_jtag_debug_module),
      .cpu_data_master_qualified_request_sysid_control_slave                                 (cpu_data_master_qualified_request_sysid_control_slave),
      .cpu_data_master_read                                                                  (cpu_data_master_read),
      .cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave              (cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave),
      .cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave              (cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave),
      .cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave                 (cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave),
      .cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave                  (cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave),
      .cpu_data_master_read_data_valid_Interval_timer_s1                                     (cpu_data_master_read_data_valid_Interval_timer_s1),
      .cpu_data_master_read_data_valid_JTAG_UART_avalon_jtag_slave                           (cpu_data_master_read_data_valid_JTAG_UART_avalon_jtag_slave),
      .cpu_data_master_read_data_valid_Onchip_memory_s2                                      (cpu_data_master_read_data_valid_Onchip_memory_s2),
      .cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave                (cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave),
      .cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave                   (cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave),
      .cpu_data_master_read_data_valid_SRAM_avalon_sram_slave                                (cpu_data_master_read_data_valid_SRAM_avalon_sram_slave),
      .cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave                        (cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave),
      .cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave            (cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave),
      .cpu_data_master_read_data_valid_cpu_jtag_debug_module                                 (cpu_data_master_read_data_valid_cpu_jtag_debug_module),
      .cpu_data_master_read_data_valid_sysid_control_slave                                   (cpu_data_master_read_data_valid_sysid_control_slave),
      .cpu_data_master_readdata                                                              (cpu_data_master_readdata),
      .cpu_data_master_requests_Expansion_JP1_avalon_parallel_port_slave                     (cpu_data_master_requests_Expansion_JP1_avalon_parallel_port_slave),
      .cpu_data_master_requests_Expansion_JP2_avalon_parallel_port_slave                     (cpu_data_master_requests_Expansion_JP2_avalon_parallel_port_slave),
      .cpu_data_master_requests_Green_LEDs_avalon_parallel_port_slave                        (cpu_data_master_requests_Green_LEDs_avalon_parallel_port_slave),
      .cpu_data_master_requests_HEX3_HEX0_avalon_parallel_port_slave                         (cpu_data_master_requests_HEX3_HEX0_avalon_parallel_port_slave),
      .cpu_data_master_requests_Interval_timer_s1                                            (cpu_data_master_requests_Interval_timer_s1),
      .cpu_data_master_requests_JTAG_UART_avalon_jtag_slave                                  (cpu_data_master_requests_JTAG_UART_avalon_jtag_slave),
      .cpu_data_master_requests_Onchip_memory_s2                                             (cpu_data_master_requests_Onchip_memory_s2),
      .cpu_data_master_requests_Pushbuttons_avalon_parallel_port_slave                       (cpu_data_master_requests_Pushbuttons_avalon_parallel_port_slave),
      .cpu_data_master_requests_Red_LEDs_avalon_parallel_port_slave                          (cpu_data_master_requests_Red_LEDs_avalon_parallel_port_slave),
      .cpu_data_master_requests_SRAM_avalon_sram_slave                                       (cpu_data_master_requests_SRAM_avalon_sram_slave),
      .cpu_data_master_requests_Serial_port_avalon_rs232_slave                               (cpu_data_master_requests_Serial_port_avalon_rs232_slave),
      .cpu_data_master_requests_Slider_switches_avalon_parallel_port_slave                   (cpu_data_master_requests_Slider_switches_avalon_parallel_port_slave),
      .cpu_data_master_requests_cpu_jtag_debug_module                                        (cpu_data_master_requests_cpu_jtag_debug_module),
      .cpu_data_master_requests_sysid_control_slave                                          (cpu_data_master_requests_sysid_control_slave),
      .cpu_data_master_waitrequest                                                           (cpu_data_master_waitrequest),
      .cpu_data_master_write                                                                 (cpu_data_master_write),
      .cpu_data_master_writedata                                                             (cpu_data_master_writedata),
      .cpu_jtag_debug_module_readdata_from_sa                                                (cpu_jtag_debug_module_readdata_from_sa),
      .d1_Expansion_JP1_avalon_parallel_port_slave_end_xfer                                  (d1_Expansion_JP1_avalon_parallel_port_slave_end_xfer),
      .d1_Expansion_JP2_avalon_parallel_port_slave_end_xfer                                  (d1_Expansion_JP2_avalon_parallel_port_slave_end_xfer),
      .d1_Green_LEDs_avalon_parallel_port_slave_end_xfer                                     (d1_Green_LEDs_avalon_parallel_port_slave_end_xfer),
      .d1_HEX3_HEX0_avalon_parallel_port_slave_end_xfer                                      (d1_HEX3_HEX0_avalon_parallel_port_slave_end_xfer),
      .d1_Interval_timer_s1_end_xfer                                                         (d1_Interval_timer_s1_end_xfer),
      .d1_JTAG_UART_avalon_jtag_slave_end_xfer                                               (d1_JTAG_UART_avalon_jtag_slave_end_xfer),
      .d1_Onchip_memory_s2_end_xfer                                                          (d1_Onchip_memory_s2_end_xfer),
      .d1_Pushbuttons_avalon_parallel_port_slave_end_xfer                                    (d1_Pushbuttons_avalon_parallel_port_slave_end_xfer),
      .d1_Red_LEDs_avalon_parallel_port_slave_end_xfer                                       (d1_Red_LEDs_avalon_parallel_port_slave_end_xfer),
      .d1_SRAM_avalon_sram_slave_end_xfer                                                    (d1_SRAM_avalon_sram_slave_end_xfer),
      .d1_Serial_port_avalon_rs232_slave_end_xfer                                            (d1_Serial_port_avalon_rs232_slave_end_xfer),
      .d1_Slider_switches_avalon_parallel_port_slave_end_xfer                                (d1_Slider_switches_avalon_parallel_port_slave_end_xfer),
      .d1_cpu_jtag_debug_module_end_xfer                                                     (d1_cpu_jtag_debug_module_end_xfer),
      .d1_sysid_control_slave_end_xfer                                                       (d1_sysid_control_slave_end_xfer),
      .registered_cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave   (registered_cpu_data_master_read_data_valid_Expansion_JP1_avalon_parallel_port_slave),
      .registered_cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave   (registered_cpu_data_master_read_data_valid_Expansion_JP2_avalon_parallel_port_slave),
      .registered_cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave      (registered_cpu_data_master_read_data_valid_Green_LEDs_avalon_parallel_port_slave),
      .registered_cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave       (registered_cpu_data_master_read_data_valid_HEX3_HEX0_avalon_parallel_port_slave),
      .registered_cpu_data_master_read_data_valid_Onchip_memory_s2                           (registered_cpu_data_master_read_data_valid_Onchip_memory_s2),
      .registered_cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave     (registered_cpu_data_master_read_data_valid_Pushbuttons_avalon_parallel_port_slave),
      .registered_cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave        (registered_cpu_data_master_read_data_valid_Red_LEDs_avalon_parallel_port_slave),
      .registered_cpu_data_master_read_data_valid_SRAM_avalon_sram_slave                     (registered_cpu_data_master_read_data_valid_SRAM_avalon_sram_slave),
      .registered_cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave             (registered_cpu_data_master_read_data_valid_Serial_port_avalon_rs232_slave),
      .registered_cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave (registered_cpu_data_master_read_data_valid_Slider_switches_avalon_parallel_port_slave),
      .reset_n                                                                               (clk_reset_n),
      .sysid_control_slave_readdata_from_sa                                                  (sysid_control_slave_readdata_from_sa)
    );

  cpu_instruction_master_arbitrator the_cpu_instruction_master
    (
      .Onchip_memory_s1_readdata_from_sa                               (Onchip_memory_s1_readdata_from_sa),
      .SRAM_avalon_sram_slave_readdata_from_sa                         (SRAM_avalon_sram_slave_readdata_from_sa),
      .clk                                                             (clk),
      .cpu_instruction_master_address                                  (cpu_instruction_master_address),
      .cpu_instruction_master_address_to_slave                         (cpu_instruction_master_address_to_slave),
      .cpu_instruction_master_dbs_address                              (cpu_instruction_master_dbs_address),
      .cpu_instruction_master_granted_Onchip_memory_s1                 (cpu_instruction_master_granted_Onchip_memory_s1),
      .cpu_instruction_master_granted_SRAM_avalon_sram_slave           (cpu_instruction_master_granted_SRAM_avalon_sram_slave),
      .cpu_instruction_master_granted_cpu_jtag_debug_module            (cpu_instruction_master_granted_cpu_jtag_debug_module),
      .cpu_instruction_master_latency_counter                          (cpu_instruction_master_latency_counter),
      .cpu_instruction_master_qualified_request_Onchip_memory_s1       (cpu_instruction_master_qualified_request_Onchip_memory_s1),
      .cpu_instruction_master_qualified_request_SRAM_avalon_sram_slave (cpu_instruction_master_qualified_request_SRAM_avalon_sram_slave),
      .cpu_instruction_master_qualified_request_cpu_jtag_debug_module  (cpu_instruction_master_qualified_request_cpu_jtag_debug_module),
      .cpu_instruction_master_read                                     (cpu_instruction_master_read),
      .cpu_instruction_master_read_data_valid_Onchip_memory_s1         (cpu_instruction_master_read_data_valid_Onchip_memory_s1),
      .cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave   (cpu_instruction_master_read_data_valid_SRAM_avalon_sram_slave),
      .cpu_instruction_master_read_data_valid_cpu_jtag_debug_module    (cpu_instruction_master_read_data_valid_cpu_jtag_debug_module),
      .cpu_instruction_master_readdata                                 (cpu_instruction_master_readdata),
      .cpu_instruction_master_readdatavalid                            (cpu_instruction_master_readdatavalid),
      .cpu_instruction_master_requests_Onchip_memory_s1                (cpu_instruction_master_requests_Onchip_memory_s1),
      .cpu_instruction_master_requests_SRAM_avalon_sram_slave          (cpu_instruction_master_requests_SRAM_avalon_sram_slave),
      .cpu_instruction_master_requests_cpu_jtag_debug_module           (cpu_instruction_master_requests_cpu_jtag_debug_module),
      .cpu_instruction_master_waitrequest                              (cpu_instruction_master_waitrequest),
      .cpu_jtag_debug_module_readdata_from_sa                          (cpu_jtag_debug_module_readdata_from_sa),
      .d1_Onchip_memory_s1_end_xfer                                    (d1_Onchip_memory_s1_end_xfer),
      .d1_SRAM_avalon_sram_slave_end_xfer                              (d1_SRAM_avalon_sram_slave_end_xfer),
      .d1_cpu_jtag_debug_module_end_xfer                               (d1_cpu_jtag_debug_module_end_xfer),
      .reset_n                                                         (clk_reset_n)
    );

  cpu the_cpu
    (
      .clk                                   (clk),
      .d_address                             (cpu_data_master_address),
      .d_byteenable                          (cpu_data_master_byteenable),
      .d_irq                                 (cpu_data_master_irq),
      .d_read                                (cpu_data_master_read),
      .d_readdata                            (cpu_data_master_readdata),
      .d_waitrequest                         (cpu_data_master_waitrequest),
      .d_write                               (cpu_data_master_write),
      .d_writedata                           (cpu_data_master_writedata),
      .i_address                             (cpu_instruction_master_address),
      .i_read                                (cpu_instruction_master_read),
      .i_readdata                            (cpu_instruction_master_readdata),
      .i_readdatavalid                       (cpu_instruction_master_readdatavalid),
      .i_waitrequest                         (cpu_instruction_master_waitrequest),
      .jtag_debug_module_address             (cpu_jtag_debug_module_address),
      .jtag_debug_module_begintransfer       (cpu_jtag_debug_module_begintransfer),
      .jtag_debug_module_byteenable          (cpu_jtag_debug_module_byteenable),
      .jtag_debug_module_clk                 (clk),
      .jtag_debug_module_debugaccess         (cpu_jtag_debug_module_debugaccess),
      .jtag_debug_module_debugaccess_to_roms (cpu_data_master_debugaccess),
      .jtag_debug_module_readdata            (cpu_jtag_debug_module_readdata),
      .jtag_debug_module_reset               (cpu_jtag_debug_module_reset),
      .jtag_debug_module_resetrequest        (cpu_jtag_debug_module_resetrequest),
      .jtag_debug_module_select              (cpu_jtag_debug_module_chipselect),
      .jtag_debug_module_write               (cpu_jtag_debug_module_write),
      .jtag_debug_module_writedata           (cpu_jtag_debug_module_writedata),
      .reset_n                               (cpu_jtag_debug_module_reset_n)
    );

  sysid_control_slave_arbitrator the_sysid_control_slave
    (
      .clk                                                   (clk),
      .cpu_data_master_address_to_slave                      (cpu_data_master_address_to_slave),
      .cpu_data_master_granted_sysid_control_slave           (cpu_data_master_granted_sysid_control_slave),
      .cpu_data_master_qualified_request_sysid_control_slave (cpu_data_master_qualified_request_sysid_control_slave),
      .cpu_data_master_read                                  (cpu_data_master_read),
      .cpu_data_master_read_data_valid_sysid_control_slave   (cpu_data_master_read_data_valid_sysid_control_slave),
      .cpu_data_master_requests_sysid_control_slave          (cpu_data_master_requests_sysid_control_slave),
      .cpu_data_master_write                                 (cpu_data_master_write),
      .d1_sysid_control_slave_end_xfer                       (d1_sysid_control_slave_end_xfer),
      .reset_n                                               (clk_reset_n),
      .sysid_control_slave_address                           (sysid_control_slave_address),
      .sysid_control_slave_readdata                          (sysid_control_slave_readdata),
      .sysid_control_slave_readdata_from_sa                  (sysid_control_slave_readdata_from_sa)
    );

  sysid the_sysid
    (
      .address  (sysid_control_slave_address),
      .readdata (sysid_control_slave_readdata)
    );


endmodule


//synthesis translate_off



// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE

// AND HERE WILL BE PRESERVED </ALTERA_NOTE>


// If user logic components use Altsync_Ram with convert_hex2ver.dll,
// set USE_convert_hex2ver in the user comments section above

// `ifdef USE_convert_hex2ver
// `else
// `define NO_PLI 1
// `endif

`include "c:/altera/72/quartus/eda/sim_lib/altera_mf.v"
`include "c:/altera/72/quartus/eda/sim_lib/220model.v"
`include "c:/altera/72/quartus/eda/sim_lib/sgate.v"
`include "cpu_test_bench.v"
`include "cpu_mult_cell.v"
`include "cpu_jtag_debug_module.v"
`include "cpu_jtag_debug_module_wrapper.v"
`include "cpu.v"
`include "sysid.v"
`include "Interval_timer.v"
`include "Onchip_memory.v"
`include "JTAG_UART.v"

`timescale 1ns / 1ps

module test_bench 
;


  wire    [ 35: 0] GPIO_0_to_and_from_the_Expansion_JP1;
  wire    [ 35: 0] GPIO_1_to_and_from_the_Expansion_JP2;
  wire    [  6: 0] HEX0_from_the_HEX3_HEX0;
  wire    [  6: 0] HEX1_from_the_HEX3_HEX0;
  wire    [  6: 0] HEX2_from_the_HEX3_HEX0;
  wire    [  6: 0] HEX3_from_the_HEX3_HEX0;
  wire             JTAG_UART_avalon_jtag_slave_dataavailable_from_sa;
  wire             JTAG_UART_avalon_jtag_slave_readyfordata_from_sa;
  wire    [  3: 0] KEY_to_the_Pushbuttons;
  wire    [  7: 0] LEDG_from_the_Green_LEDs;
  wire    [  9: 0] LEDR_from_the_Red_LEDs;
  wire    [ 17: 0] SRAM_ADDR_from_the_SRAM;
  wire             SRAM_CE_N_from_the_SRAM;
  wire    [ 15: 0] SRAM_DQ_to_and_from_the_SRAM;
  wire             SRAM_LB_N_from_the_SRAM;
  wire             SRAM_OE_N_from_the_SRAM;
  wire             SRAM_UB_N_from_the_SRAM;
  wire             SRAM_WE_N_from_the_SRAM;
  wire    [  9: 0] SW_to_the_Slider_switches;
  wire             UART_RXD_to_the_Serial_port;
  wire             UART_TXD_from_the_Serial_port;
  reg              clk;
  reg              reset_n;


// <ALTERA_NOTE> CODE INSERTED BETWEEN HERE
//  add your signals and additional architecture here
// AND HERE WILL BE PRESERVED </ALTERA_NOTE>

  //Set us up the Dut
  nios_system DUT
    (
      .GPIO_0_to_and_from_the_Expansion_JP1 (GPIO_0_to_and_from_the_Expansion_JP1),
      .GPIO_1_to_and_from_the_Expansion_JP2 (GPIO_1_to_and_from_the_Expansion_JP2),
      .HEX0_from_the_HEX3_HEX0              (HEX0_from_the_HEX3_HEX0),
      .HEX1_from_the_HEX3_HEX0              (HEX1_from_the_HEX3_HEX0),
      .HEX2_from_the_HEX3_HEX0              (HEX2_from_the_HEX3_HEX0),
      .HEX3_from_the_HEX3_HEX0              (HEX3_from_the_HEX3_HEX0),
      .KEY_to_the_Pushbuttons               (KEY_to_the_Pushbuttons),
      .LEDG_from_the_Green_LEDs             (LEDG_from_the_Green_LEDs),
      .LEDR_from_the_Red_LEDs               (LEDR_from_the_Red_LEDs),
      .SRAM_ADDR_from_the_SRAM              (SRAM_ADDR_from_the_SRAM),
      .SRAM_CE_N_from_the_SRAM              (SRAM_CE_N_from_the_SRAM),
      .SRAM_DQ_to_and_from_the_SRAM         (SRAM_DQ_to_and_from_the_SRAM),
      .SRAM_LB_N_from_the_SRAM              (SRAM_LB_N_from_the_SRAM),
      .SRAM_OE_N_from_the_SRAM              (SRAM_OE_N_from_the_SRAM),
      .SRAM_UB_N_from_the_SRAM              (SRAM_UB_N_from_the_SRAM),
      .SRAM_WE_N_from_the_SRAM              (SRAM_WE_N_from_the_SRAM),
      .SW_to_the_Slider_switches            (SW_to_the_Slider_switches),
      .UART_RXD_to_the_Serial_port          (UART_RXD_to_the_Serial_port),
      .UART_TXD_from_the_Serial_port        (UART_TXD_from_the_Serial_port),
      .clk                                  (clk),
      .reset_n                              (reset_n)
    );

  initial
    clk = 1'b0;
  always
    #10 clk <= ~clk;
  
  initial 
    begin
      reset_n <= 0;
      #200 reset_n <= 1;
    end

endmodule


//synthesis translate_on