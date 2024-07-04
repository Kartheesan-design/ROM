// Test bench for 16 bit by 4 bit Read only Memory 

`timescale 1ns / 1ps

module tb();

    reg clk;
    reg en;
    reg [3:0] addr;
    wire [3:0] data;
    
    rom r1(
        .clk(clk),
        .en(en),
        .addr(addr),
        .data(data)
    );
    
    initial
    begin
        clk = 1'b1;
        forever #5 clk = ~clk;
    end
    
    initial
        begin
            en = 1'b0;
            #10
            
            en = 1'b1;
            addr = 4'b1010;
            
            #10
            
            en = 1'b1;
            addr = 4'b1011;
            
            #10
            
            en = 1'b0;
            addr = 4'b1000;
            
            #10
            
            en = 1'b1;
            addr = 4'b1111;
            
            #10
            
            en = 1'b1;
            addr = 4'b1001;
            
            #10
            
            en = 1'b0;
            
            #10 
            
            en = 1'b1;
            addr = 4'b0010;
      end
     
     initial 
     
        #80 $stop;
endmodule
