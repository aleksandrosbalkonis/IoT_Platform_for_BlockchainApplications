`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2021 10:23:37 AM
// Design Name: 
// Module Name: KeyGeneratorTB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module KeyGeneratorTB;
    reg clk;  
    reg signalKey;  
    reg resetKey;  
    wire primeValid;  
  
    KeyGenerator kgen ( .resetKey(resetKey),  
                        .clk (clk), 
                        .signalKey (signalKey),   
                        .primeValid (primeValid));  
  
    // Generate clock  
    always #25 clk = ~clk;  
  
    // Testcase  
    initial begin  
        clk <= 0;  
        #60 resetKey <= 1; 
        #25 resetKey <= 0; 
        #25 signalKey <= 1; 
        #999890 signalKey <= 0;
        if(primeValid)
            $stop;
    end  
endmodule
