`ifndef SPI_FD_8B_MASTER_SEQ_INCLUDED_
`define SPI_FD_8B_MASTER_SEQ_INCLUDED_

//--------------------------------------------------------------------------------------------
// class: extended class from base class
//--------------------------------------------------------------------------------------------
class spi_fd_8b_master_seq extends master_base_seq;

  
  //register with factory so can use create uvm_method 
  //and override in future if necessary 
  `uvm_object_utils(spi_fd_8b_master_seq)

  // master_tx req;

  //---------------------------------------------
  // Externally defined tasks and functions
  //---------------------------------------------

  extern function new (string name="spi_fd_8b_master_seq");

  extern virtual task body();

endclass:spi_fd_8b_master_seq

//-----------------------------------------------------------------------------
// Constructor: new
// Initializes the master_sequence class object
//
// Parameters:
//  name - instance name of the config_template
//-----------------------------------------------------------------------------

function spi_fd_8b_master_seq::new(string name="spi_fd_8b_master_seq");
  super.new(name);
endfunction:new

//-----------------------------------------------------------------------------
//task:body
//based on the request from driver task will drive the transaction
//-----------------------------------------------------------------------------
task spi_fd_8b_master_seq::body();
  req = master_tx::type_id::create("req");
  repeat(5) begin
  start_item(req);
  if(!req.randomize() with {req.master_out_slave_in.size() == 1; 
                            //chip select is active low.Below logic is written to select only one slave
                            $countones(req.cs) == NO_OF_SLAVES -1;
                            req.cs[0] == 0;}) begin
    `uvm_fatal(get_type_name(),"Randomization failed")
  end
  req.print();
  finish_item(req);
  end
endtask:body

`endif

