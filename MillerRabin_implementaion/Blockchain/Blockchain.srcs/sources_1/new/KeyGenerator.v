`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 03:25:25 PM
// Design Name: 
// Module Name: KeyGenerator
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


module KeyGenerator(resetKey ,clk, signalKey, primeValid);
    input resetKey ,clk, signalKey;
    output primeValid;
    reg[127:0] privKey;
    reg[15:0] step;
    reg[1:0] sel;
    reg[2:0] count;
    reg keyFlag, genNum, primeDet, primeDetCS ;
    wire[15:0] tempKey;
    always @ (posedge clk)
    begin
        if (resetKey) 
//----------------------------------------------------------Initialization--------------------------------------------------------------------------//
        begin
            keyFlag     <= 1'b1; 
            privKey     <= 127'h0;
            step        <= 16'h0;
            genNum      <= 1'b0;
            count       <= 4'h0;
            primeDet    <= 1'b0;
            primeDetCS  <= 1'b0;
        end
        else if (signalKey & keyFlag)
//---------------------------------------------Button Pressed Increases step register by 3 every 50ns-----------------------------------------------//        
        begin
            step <= step + 3;
            genNum <= 1;
        end        
        else if (!signalKey & genNum & keyFlag)
//---------------------------------------------When Button released generate 256 random number------------------------------------------------------//        
        begin
            if (!count[0] | !count[1] | !count[2])
//------------------------------------------------------------Repeat process 16 times---------------------------------------------------------------//        
            begin
                count <= count + 1;
                step <= {step[1:0],step[15:2]};   
            end
            else
//--------------------------------------------------------------After 16 repetitions----------------------------------------------------------------//
            begin
                genNum <= !genNum;
                primeDet <= 1'b1;
                primeDetCS <= 1'b1;

            end
//------------------------------------------------------------------------Decoder-------------------------------------------------------------------//
            case(count)
                3'b000     :  privKey[15:0]    = {tempKey[15:1], 1'b1}; 
                3'b001     :  privKey[31:16]   = tempKey; 
                3'b010     :  privKey[47:32]   = tempKey; 
                3'b011     :  privKey[63:48]   = tempKey; 
                3'b100     :  privKey[79:64]   = tempKey; 
                3'b101     :  privKey[95:80]   = tempKey; 
                3'b110     :  privKey[111:96]  = tempKey; 
                default    :  privKey[127:112] = {1'b0, tempKey[14:0]};    
             endcase
        end 
        else if (primeDet & keyFlag & !primeValid & !waitCalc)
//--------------------------------------------------------Check random numbers primality------------------------------------------------------------//
        begin
            if (numNotPrime)  
            begin
//--------------------------------------------------------If number odd decrease by 2---------------------------------------------------------------//
                privKey <= privKey - 2;
            end
        end
        else if (primeValid)
//--------------------------------------------------------If number prime end module----------------------------------------------------------------//
        begin
            primeDet <= 0;
            keyFlag <= 0;
            primeDetCS <= 0;
        end
    end
    PowerMod pmod(      .randNum    (privKey),
                        .clk        (clk),
                        .cs         (primeDetCS),
                        .waitCalc   (waitCalc),
                        .primeFound (primeValid),
                        .primeNotFound(numNotPrime));
    
    RandomNumGen gnum(  .base (step),
                        .sel  (step[1:0]), 
                        .out  (tempKey));
  
endmodule
                  