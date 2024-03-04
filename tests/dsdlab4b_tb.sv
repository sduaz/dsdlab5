`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2024 09:05:38 AM
// Design Name: 
// Module Name: dsdlab4b_tb
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


module dsdlab4b_tb;
logic [3:0]num1;
logic [2:0]sel1;
logic segA1;
logic segB1;
logic segC1;
logic segD1;
logic segE1;
logic segF1;
logic segG1;
logic and00;
logic and11;
logic and22;
logic and33;
logic and44;
logic and55;
logic and66;
logic and77;

dsdlab4b HEY(
.num(num1),
.sel(sel1),
.segA(segA1),
.segB(segB1),
.segC(segC1),
.segD(segD1),
.segE(segE1),
.segF(segF1),
.segG(segG1),
.and0(and00),
.and1(and11),
.and2(and22),
.and3(and33),
.and4(and44),
.and5(and55),
.and6(and66),
.and7(and77)
);
initial
begin
sel1  = 3'b000;
#160;
sel1 = 3'b001;
#160;
sel1 = 3'b010;
#160;
sel1 = 3'b011;
#160;
sel1 = 3'b100;
#160;
sel1 = 3'b101;
#160;
sel1 = 3'b110;
#160;
sel1 = 3'b111;
#160;
$stop;
end

initial
begin
num1 = 4'b0000; 
#10;
num1 = 4'b0001;
#10;
num1 = 4'b0010;
#10;
num1 = 4'b0011;
#10;
num1 = 4'b0100;
#10;
num1 = 4'b0101;
#10;
num1 = 4'b0110;
#10;
num1 = 4'b0111;
#10;
num1 = 4'b1000;
#10;
num1 = 4'b1001;
#10;
num1 = 4'b1010;
#10;
num1 = 4'b1011;
#10;
num1 = 4'b1100;
#10;
num1 = 4'b1101;
#10;
num1 = 4'b1110;
#10;
num1 = 4'b1111;
#10;
$stop;
end

  
endmodule
