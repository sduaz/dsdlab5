`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2024 08:57:15 AM
// Design Name: 
// Module Name: dsdlab4b
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


module dsdlab4b( input [3:0] num, [2:0] sel,
        output logic and0, and1, and2, and3, and4, and5, and6, and7,
        output logic segA, segB, segC, segD, segE, segF, segG
            );
logic a, b, c, d;
logic A, B, C, D;
always_comb
begin
    A = sel[2];
    B = sel[1];
    C = sel[0];
end
always_comb
begin
        d = num[0];
        c = num[1];
        b = num[2];
        a = num[3];
end

assign and0 = A | B | C;
assign and1 = (!C) | A | B;
assign and2 = (!B) | C | A;
assign and3 = (!(B & C)) | A;
assign and4 = C | (!A) | B;
assign and5 = B | !(C & A);
assign and6 = C | !(A & B);
assign and7 = !(B & C & A);

assign segA = ((!(a | c)) & (b ^ d)) | ((a & d) &(b ^ c));
assign segB = (a&c&d) | (b&c&(!d)) | (a&b&(!d)) | ((!a)&b&(!c)&d);
assign segC = (a&b&c) | (a&b&(!d)) | ((!a)&(!b)&c&(!d));
assign segD = (b&c&d) | ((!(a | c))&(b ^ d)) | (a&(!b)&c&(!d));
assign segE = ((!a)&d) | ((!a)&b&(!c)) | ((!b)&(!c)&d);
assign segF = ((!a)&(!b)&d) | ((!a)&c&d) | ((!a)&(!b)&c) | (a&b&(!c)&d);
assign segG = (!(a | b | c)) | (a&b&(!c)&(!d)) | ((!a)&b&c&d);


endmodule
