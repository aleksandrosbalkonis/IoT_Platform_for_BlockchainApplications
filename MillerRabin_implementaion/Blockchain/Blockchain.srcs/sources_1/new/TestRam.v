`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2021 10:33:47 AM
// Design Name: 
// Module Name: TestRam
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


module TestRam(address, data);
    input[7:0] address;
    output [11:0] data;
    assign data=(address == 8'd000) ? 12'd0003:
                (address == 8'd001) ? 12'd0005:
                (address == 8'd002) ? 12'd0007:
                (address == 8'd003) ? 12'd0011:
                (address == 8'd004) ? 12'd0013:
                (address == 8'd005) ? 12'd0017:
                (address == 8'd006) ? 12'd0019:
                (address == 8'd007) ? 12'd0023:
                (address == 8'd008) ? 12'd0029:
                (address == 8'd009) ? 12'd0031:
                (address == 8'd010) ? 12'd0037:
                (address == 8'd011) ? 12'd0041:
                (address == 8'd012) ? 12'd0043:
                (address == 8'd013) ? 12'd0047:
                (address == 8'd014) ? 12'd0053:
                (address == 8'd015) ? 12'd0059:
                (address == 8'd016) ? 12'd0061:
                (address == 8'd017) ? 12'd0067:
                (address == 8'd018) ? 12'd0071:
                (address == 8'd019) ? 12'd0073:
                (address == 8'd020) ? 12'd0079:
                (address == 8'd021) ? 12'd0083:
                (address == 8'd022) ? 12'd0089:
                (address == 8'd023) ? 12'd0097:
                (address == 8'd024) ? 12'd0101:
                (address == 8'd025) ? 12'd0103:
                (address == 8'd026) ? 12'd0107:
                (address == 8'd027) ? 12'd0109:
                (address == 8'd028) ? 12'd0113:
                (address == 8'd029) ? 12'd0127:
                (address == 8'd030) ? 12'd0131:
                (address == 8'd031) ? 12'd0137:
                (address == 8'd032) ? 12'd0139:
                (address == 8'd033) ? 12'd0149:
                (address == 8'd034) ? 12'd0151:
                (address == 8'd035) ? 12'd0157:
                (address == 8'd036) ? 12'd0163:
                (address == 8'd037) ? 12'd0167:
                (address == 8'd038) ? 12'd0173:
                (address == 8'd039) ? 12'd0179:
                (address == 8'd040) ? 12'd0181:
                (address == 8'd041) ? 12'd0191:
                (address == 8'd042) ? 12'd0193:
                (address == 8'd043) ? 12'd0197:
                (address == 8'd044) ? 12'd0199:
                (address == 8'd045) ? 12'd0211:
                (address == 8'd046) ? 12'd0223:
                (address == 8'd047) ? 12'd0227:
                (address == 8'd048) ? 12'd0229:
                (address == 8'd049) ? 12'd0233:
                (address == 8'd050) ? 12'd0239:
                (address == 8'd051) ? 12'd0241:
                (address == 8'd052) ? 12'd0251:
                (address == 8'd053) ? 12'd0257:
                (address == 8'd054) ? 12'd0263:
                (address == 8'd055) ? 12'd0269:
                (address == 8'd056) ? 12'd0271:
                (address == 8'd057) ? 12'd0277:
                (address == 8'd058) ? 12'd0281:
                (address == 8'd059) ? 12'd0283:
                (address == 8'd060) ? 12'd0293:
                (address == 8'd061) ? 12'd0307:
                (address == 8'd062) ? 12'd0311:
                (address == 8'd063) ? 12'd0313:
                (address == 8'd064) ? 12'd0317:
                (address == 8'd065) ? 12'd0331:
                (address == 8'd066) ? 12'd0337:
                (address == 8'd067) ? 12'd0347:
                (address == 8'd068) ? 12'd0349:
                (address == 8'd069) ? 12'd0353:
                (address == 8'd070) ? 12'd0359:
                (address == 8'd071) ? 12'd0367:
                (address == 8'd072) ? 12'd0373:
                (address == 8'd073) ? 12'd0379:
                (address == 8'd074) ? 12'd0383:
                (address == 8'd075) ? 12'd0389:
                (address == 8'd076) ? 12'd0397:
                (address == 8'd077) ? 12'd0401:
                (address == 8'd078) ? 12'd0409:
                (address == 8'd079) ? 12'd0419:
                (address == 8'd080) ? 12'd0421:
                (address == 8'd081) ? 12'd0431:
                (address == 8'd082) ? 12'd0433:
                (address == 8'd083) ? 12'd0439:
                (address == 8'd084) ? 12'd0443:
                (address == 8'd085) ? 12'd0449:
                (address == 8'd086) ? 12'd0457:
                (address == 8'd087) ? 12'd0461:
                (address == 8'd088) ? 12'd0463:
                (address == 8'd089) ? 12'd0467:
                (address == 8'd090) ? 12'd0479:
                (address == 8'd091) ? 12'd0487:
                (address == 8'd092) ? 12'd0491:
                (address == 8'd093) ? 12'd0499:
                (address == 8'd094) ? 12'd0503:
                (address == 8'd095) ? 12'd0509:
                (address == 8'd096) ? 12'd0521:
                (address == 8'd097) ? 12'd0523:
                (address == 8'd098) ? 12'd0541:
                (address == 8'd099) ? 12'd0547:
                (address == 8'd100) ? 12'd0557:
                (address == 8'd101) ? 12'd0563:
                (address == 8'd102) ? 12'd0569:
                (address == 8'd103) ? 12'd0571:
                (address == 8'd104) ? 12'd0577:
                (address == 8'd105) ? 12'd0587:
                (address == 8'd106) ? 12'd0593:
                (address == 8'd107) ? 12'd0599:
                (address == 8'd108) ? 12'd0601:
                (address == 8'd109) ? 12'd0607:
                (address == 8'd110) ? 12'd0613:
                (address == 8'd111) ? 12'd0617:
                (address == 8'd112) ? 12'd0619:
                (address == 8'd113) ? 12'd0631:
                (address == 8'd114) ? 12'd0641:
                (address == 8'd115) ? 12'd0643:
                (address == 8'd116) ? 12'd0647:
                (address == 8'd117) ? 12'd0653:
                (address == 8'd118) ? 12'd0659:
                (address == 8'd119) ? 12'd0661:
                (address == 8'd120) ? 12'd0673:
                (address == 8'd121) ? 12'd0677:
                (address == 8'd122) ? 12'd0683:
                (address == 8'd123) ? 12'd0691:
                (address == 8'd124) ? 12'd0701:
                (address == 8'd125) ? 12'd0709:
                (address == 8'd126) ? 12'd0719:
                (address == 8'd127) ? 12'd0727:
                (address == 8'd128) ? 12'd0733:
                (address == 8'd129) ? 12'd0739:
                (address == 8'd130) ? 12'd0743:
                (address == 8'd131) ? 12'd0751:
                (address == 8'd132) ? 12'd0757:
                (address == 8'd133) ? 12'd0761:
                (address == 8'd134) ? 12'd0769:
                (address == 8'd135) ? 12'd0773:
                (address == 8'd136) ? 12'd0787:
                (address == 8'd137) ? 12'd0797:
                (address == 8'd138) ? 12'd0809:
                (address == 8'd139) ? 12'd0811:
                (address == 8'd140) ? 12'd0821:
                (address == 8'd141) ? 12'd0823:
                (address == 8'd142) ? 12'd0827:
                (address == 8'd143) ? 12'd0829:
                (address == 8'd144) ? 12'd0839:
                (address == 8'd145) ? 12'd0853:
                (address == 8'd146) ? 12'd0857:
                (address == 8'd147) ? 12'd0859:
                (address == 8'd148) ? 12'd0863:
                (address == 8'd149) ? 12'd0877:
                (address == 8'd150) ? 12'd0881:
                (address == 8'd151) ? 12'd0883:
                (address == 8'd152) ? 12'd0887:
                (address == 8'd153) ? 12'd0907:
                (address == 8'd154) ? 12'd0911:
                (address == 8'd155) ? 12'd0919:
                (address == 8'd156) ? 12'd0929:
                (address == 8'd157) ? 12'd0937:
                (address == 8'd158) ? 12'd0941:
                (address == 8'd159) ? 12'd0947:
                (address == 8'd160) ? 12'd0953:
                (address == 8'd161) ? 12'd0967:
                (address == 8'd162) ? 12'd0971:
                (address == 8'd163) ? 12'd0977:
                (address == 8'd164) ? 12'd0983:
                (address == 8'd165) ? 12'd0991:
                (address == 8'd166) ? 12'd0997:
                (address == 8'd167) ? 12'd1009:
                (address == 8'd168) ? 12'd1013:
                (address == 8'd169) ? 12'd1019:
                (address == 8'd170) ? 12'd1021:
                (address == 8'd171) ? 12'd1031:
                (address == 8'd172) ? 12'd1033:
                (address == 8'd173) ? 12'd1039:
                (address == 8'd174) ? 12'd1049:
                (address == 8'd175) ? 12'd1051:
                (address == 8'd176) ? 12'd1061:
                (address == 8'd177) ? 12'd1063:
                (address == 8'd178) ? 12'd1069:
                (address == 8'd179) ? 12'd1087:
                (address == 8'd180) ? 12'd1091:
                (address == 8'd181) ? 12'd1093:
                (address == 8'd182) ? 12'd1097:
                (address == 8'd183) ? 12'd1103:
                (address == 8'd184) ? 12'd1109:
                (address == 8'd185) ? 12'd1117:
                (address == 8'd186) ? 12'd1123:
                (address == 8'd187) ? 12'd1129:
                (address == 8'd188) ? 12'd1151:
                (address == 8'd189) ? 12'd1153:
                (address == 8'd190) ? 12'd1163:
                (address == 8'd191) ? 12'd1171:
                (address == 8'd192) ? 12'd1181:
                (address == 8'd193) ? 12'd1187:
                (address == 8'd194) ? 12'd1193:
                (address == 8'd195) ? 12'd1201:
                (address == 8'd196) ? 12'd1213:
                (address == 8'd197) ? 12'd1217:
                (address == 8'd198) ? 12'd1223: 12'd1291;
endmodule
