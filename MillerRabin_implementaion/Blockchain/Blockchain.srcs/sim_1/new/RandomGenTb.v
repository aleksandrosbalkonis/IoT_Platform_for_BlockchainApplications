`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2021 02:58:20 PM
// Design Name: 
// Module Name: RandomGenTb
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


module RandomGenTb();
    reg[127:0] privKey;
    reg[127:0] finalKey;
    reg clk, stop;
    reg[2:0] count;
    reg[15:0] step, prevStep;
    wire[15:0] tempKey; 
    initial step = 16'h0;
    initial prevStep = 16'h0;
    initial count =3'h0;
    initial stop = 0;
    initial privKey = 127'h0;
    initial clk = 0;
    integer f,i;
     
RandomNumGen gnum(  .base (step),
                        .sel  (step[1:0]), 
                        .out  (tempKey));
                        
    assign telos = (step == 16'hffff) ? 1: 0;
    always #25 clk = ~clk;  
    
    initial 
    begin
        f = $fopen("alekosOutput.txt","w");
    end  
    
      //@(posedge clk);   //Wait for fisrt clock out of reset
        
        always @ (posedge clk)
        begin    
            case(count)
                    3'b000     :  privKey[15:0]    = tempKey; 
                    3'b001     :  privKey[31:16]   = tempKey; 
                    3'b010     :  privKey[47:32]   = tempKey; 
                    3'b011     :  privKey[63:48]   = tempKey; 
                    3'b100     :  privKey[79:64]   = tempKey; 
                    3'b101     :  privKey[95:80]   = tempKey; 
                    3'b110     :  privKey[111:96]  = tempKey; 
                    default    :  privKey[127:112] = tempKey;    
            endcase  
            if(count == 3'h7)  
            begin
                for (i = 0; i<128; i=i+1)
                begin
                    $fwrite(f,"%b",finalKey[127-i]);
                end
                $fwrite(f,"\n");
                
            end  
            if (!telos & !stop)  
            begin
                step <= {step[2:0],step[15:2]};
                count <= count + 1;
                if (count == 3'h7)
                begin   
                    step <= prevStep + 1;
                    finalKey <= privKey;
                end
                else if (count == 3'h0)
                begin
                    prevStep <= step;
                end
            end              
            else 
                stop <= 1;  
        end   
    initial 
    begin    
        #1000000000 $fclose(f);    
    end
      
endmodule
