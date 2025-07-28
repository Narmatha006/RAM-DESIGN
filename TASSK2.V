module simple_sync_ram #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 4
)(
    input wire clk,
    input wire we,           // Write Enable
    input wire [ADDR_WIDTH-1:0] addr,
    input wire [DATA_WIDTH-1:0] din, // Data input
    output reg [DATA_WIDTH-1:0] dout // Data output
);

    // RAM memory array
    reg [DATA_WIDTH-1:0] mem [0:(1<<ADDR_WIDTH)-1];

    always @(posedge clk) begin
        if (we) begin
            mem[addr] <= din;    // Write operation
        end
        dout <= mem[addr];       // Read operation
    end

endmodule

`timescale 1ns/1ps

module tb_simple_sync_ram;

    // Parameters
    localparam DATA_WIDTH = 8;
    localparam ADDR_WIDTH = 4;

    // DUT Inputs
    reg clk;
    reg we;
    reg [ADDR_WIDTH-1:0] addr;
    reg [DATA_WIDTH-1:0] din;

    // DUT Output
    wire [DATA_WIDTH-1:0] dout;

    // Instantiate the DUT
    simple_sync_ram #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) dut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .din(din),
        .dout(dout)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Test sequence
    initial begin
        $display("Starting RAM Simulation");
        $dumpfile("ram_test.vcd");
        $dumpvars(0, tb_simple_sync_ram);

        clk = 0;
        we = 0;
        addr = 0;
        din = 0;

        // Write to RAM
        #10;
        we = 1;
        addr = 4'd1; din = 8'hAA; #10;
        addr = 4'd2; din = 8'hBB; #10;
        addr = 4'd3; din = 8'hCC; #10;

        // Read from RAM
        we = 0;
        addr = 4'd1; #10;
        $display("Read from addr 1: %h", dout);
        addr = 4'd2; #10;
        $display("Read from addr 2: %h", dout);
        addr = 4'd3; #10;
        $display("Read from addr 3: %h", dout);

        // End simulation
        #50;
        $finish;
    end

endmodule
