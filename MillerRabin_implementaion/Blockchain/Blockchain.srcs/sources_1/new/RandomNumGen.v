`timescale 1ns / 1ps

module RandomNumGen( base ,sel, out);
    input[15:0] base;
    input[1:0] sel;
    output reg [15:0] out;
    always @ (sel, base) 
    begin
        case(sel)
            2'b00     :     out = base;
            2'b01     :     begin
                                out[0]  = !base[0];
                                out[1]  = !base[1];
                                out[2]  = !base[2];
                                out[3]  = !base[3];
                                out[4]  = !base[4];
                                out[5]  = !base[5];
                                out[6]  = !base[6];
                                out[7]  = !base[7];
                                out[8]  = !base[8];
                                out[9]  = !base[9];
                                out[10] = !base[10];
                                out[11] = !base[11];
                                out[12] = !base[12];
                                out[13] = !base[13];
                                out[14] = !base[14];
                                out[15] = !base[15];
                            end 
            2'b10     :     begin
                                out[0]  = base[15];
                                out[1]  = base[14];
                                out[2]  = base[13];
                                out[3]  = base[12];
                                out[4]  = base[11];
                                out[5]  = base[10];
                                out[6]  = base[9];
                                out[7]  = base[8];
                                out[8]  = base[7];
                                out[9]  = base[6];
                                out[10] = base[5];
                                out[11] = base[4];
                                out[12] = base[3];
                                out[13] = base[2];
                                out[14] = base[1];
                                out[15] = base[0];
                            end    
            default   :     begin
                                out[0]  = !base[15];
                                out[1]  = !base[14];
                                out[2]  = !base[13];
                                out[3]  = !base[12];
                                out[4]  = !base[11];
                                out[5]  = !base[10];
                                out[6]  = !base[9];
                                out[7]  = !base[8];
                                out[8]  = !base[7];
                                out[9]  = !base[6];
                                out[10] = !base[5];
                                out[11] = !base[4];
                                out[12] = !base[3];
                                out[13] = !base[2];
                                out[14] = !base[1];
                                out[15] = !base[0];
                            end   
        endcase    
    end
endmodule
