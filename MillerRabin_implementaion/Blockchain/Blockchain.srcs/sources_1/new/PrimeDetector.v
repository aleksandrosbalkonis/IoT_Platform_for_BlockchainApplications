`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2021 09:04:47 AM
// Design Name: 
// Module Name: PrimeDetector
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

module PrimeDetector(randomNum, cs, clk, waitCalc, numIsPrime, numNotPrime);
    input [255:0] randomNum;
    input cs, clk;
    output reg waitCalc, numIsPrime, numNotPrime;
    reg dividentRdy, calcing, retry;
    reg[7:0] primeNr;
    reg[127:0] dividedNum, tempNum, divident;
    wire[11:0] data, diff;
    initial waitCalc = 1'b0;
    initial numNotPrime = 1'b0;
    initial numIsPrime = 1'b0;
    initial retry = 1'b0;
    always @ (posedge clk)
    begin
        if(!waitCalc & !retry & cs)
//-----------------------------------------------------------------Initialization-------------------------------------------------------------------//
        begin
            waitCalc    <= 1'b1;
            dividedNum  <= randomNum;
            primeNr     <= 8'h0;
            calcing     <= 0;
            dividentRdy <= 0;
            numNotPrime <= 0;
        end
        else if (retry & cs)
        begin
            retry <= !retry;
            numNotPrime <= 0;
        end
        else if(equal & !retry & waitCalc & cs)
//-------------------------------------If 244 MSBs are 0 and there is no remainder fail partial primality check-------------------------------------// 
            begin
                calcing     <= 0;  
                waitCalc    <= 0;
                numNotPrime <= 1;
                retry <= 1'b1;
            end
        else if (!randomNum[0] & !retry & waitCalc & cs)
//-------------------------------------------------------If number is even exit subrutine-----------------------------------------------------------//
        begin
            waitCalc <= 1'b0;
            numNotPrime <= 1'b1;
            retry <= 1'b1;
        end
        else if(randomNum[0] & !retry & waitCalc & cs )
//-------------------------------------------------------If number is odd check primality-----------------------------------------------------------//
        begin
            if (primeNr[0] | primeNr[1] | primeNr[2] | !primeNr[3] | primeNr[4] | primeNr[5] | !primeNr[6] | !primeNr[7])
//-----------------------------------------------------------Make 200 primality checks--------------------------------------------------------------//
            begin
                if (!calcing)
//--------------------------------------------------Add next prime nr on the primality checker------------------------------------------------------//
                begin
                    calcing  <= 1;
                    divident <= {data, 126'h0};
                end     
                else if (calcing)
//--------------------------------------------Next prime prime nr is ready to be used by the checker------------------------------------------------//
                begin
                    if (!equal2 | !modFound )
//-----------------------------------If divided Nr is not smaller then the original prime used for the division-------------------------------------//
                    begin
                        if (!dividentRdy)
//-----------------------------------------------------Divident is not in the required format-------------------------------------------------------//
                        begin
                            if (!divident[126])
//---------------------------------------------Multiply divident by 2 until the is a 1 on the second MSB -------------------------------------------//
                                divident    <= divident << 1;
                            else
//-------------------------------------------------------------Subtract nr by x*2^y-----------------------------------------------------------------//
//--------------------------------------(x is a prime nr, y is the possition of the leftest 1 of the divided nr)------------------------------------//
                            begin
                                dividentRdy <= 1;
                                tempNum     <= dividedNum; 
                            end
                        end
                        else if(dividentRdy)
//----------------------------------------------------Divident is allready in the required format---------------------------------------------------//
                        begin
                            if(tempNum[127:111] != 16'h0)
//-----------------------------------Check if 16 MSBs are 0 to speed up the process after multiple repetitions--------------------------------------//
                            begin           
                                if (!tempNum[127])
//------------------------------LeftShift temporary divided nr and RightShift divident until there is 1 on the MSB----------------------------------//
                                begin
                                    tempNum  <= {tempNum[126:0], 1'b0};    
                                    divident <= {1'b0, divident[111:1]}; 
                                end
                                else if(tempNum[255])
//-------------------------------If there is 1 on the temporary divided nr MSB subtract divident from the original----------------------------------//
                                begin
                                    dividedNum  <= dividedNum - divident; 
                                    divident    <= {data, 115'h0};
                                    dividentRdy <= 0;
                                end
                            end    
                            else
//-----------------------------------------If first 16 bits of divident are 0 speed up process by 16------------------------------------------------//
                            begin
                                tempNum  <= {tempNum[111:0],16'h0}; 
                                divident <= {16'h0, divident[127:16]}; 
                            end
                        end
                    end            
                    else
//---------------------------------------If divident is smaller then the original prime used for the division---------------------------------------//
                    begin
                        if (dividedNum[11:0] != 12'h0)
//-------------------------------------If 244 MSBs are 0 and there is a remainder pass partial primality check--------------------------------------//   
                        begin
                            calcing <= 0;  
                            primeNr <=primeNr + 1;   
                            dividedNum  <= randomNum;
                        end  
                    end
                end
            end        
            else if(!primeNr[0] & !primeNr[1] & !primeNr[2] & primeNr[3] & !primeNr[4] & !primeNr[5] & primeNr[6] & primeNr[7])
//----------------------------If the partial primality check was succesful for all 200 prime numbers pass the primality check----------------------// 
                numIsPrime <= 1;
        end
    end
    
//----------------------------Used to check for ----------------------// 
    assign diff = dividedNum[11:0] - data;
    assign modFound = diff[11] & !dividedNum[11];
    
    assign special1 = (diff[11:2] == 8'h0) ? 1'b1: 1'b0;
    assign special2 = (data[11:0] == 11'h3) ? 1'b0: 1'b1;
    assign special = special1 & special2;
    
    assign equal1 = (dividedNum[11:0] == data[11:0]) ? 1'b1: 1'b0;
    assign equal2  = (dividedNum[127:12] == 244'h0) ? 1'b1: 1'b0;
    assign equal = equal1 & equal2;
    
    TestRam tram(  .address (primeNr),
                   .data    (data));    
endmodule
