`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/23/2024 02:48:21 PM
// Design Name: 
// Module Name: nds_capture_top
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


module nds_capture_top(
    input sys_clk,
    input rst_n,
    output TMDS_clk_n,
    output TMDS_clk_p,
    output [2:0]TMDS_data_n,
    output [2:0]TMDS_data_p,
    output hdmi_oen,
    //NDS signals (remember to define these in xdc)
    // 40pin gpio
    input logic T_R0,
    input logic T_R1,
    input logic T_R2,
    input logic T_R3,
    input logic T_R4,
    input logic T_R5,
    
    input logic T_G0,
    input logic T_G1,
    input logic T_G2,
    input logic T_G3,
    input logic T_G4,
    input logic T_G5,
    
    input logic T_B0,
    input logic T_B1,
    input logic T_B2,
    input logic T_B3,
    input logic T_B4,
    input logic T_B5,
    
    input logic DCLK,
    input logic GSP,
    input logic LS,
    output logic [3:0] led
);

logic dclk_prev, dclk_newpixel;

always_ff @(posedge sys_clk) begin
    dclk_prev <= DCLK;
    if (dclk_prev == 1'b0 && DCLK == 1'b1) begin
        dclk_newpixel <= 1'b1;
    end else if (dclk_prev == 1'b1 && DCLK == 1'b0) begin
        dclk_newpixel <= 1'b1;
    end else begin
        dclk_newpixel <= 1'b0;
    end
end


assign hdmi_oen = 1'b1;

logic reset;
assign reset = ~rst_n;

logic video_clk, video_clk_5x, locked; // clocking wizard signals, pixel clock, 5x pixel clock, locked

clk_wiz_0 clk_wiz_0
(
    .clk_in1(sys_clk),
    .clk_out1(video_clk),
    .clk_out2(video_clk_5x),
    .reset(reset),
    .locked(locked)
);

logic hsync, vsync, vde; // sync from vga controller
logic [9:0] drawX, drawY; // drawX and drawY coords

vga_controller vga (
        .pixel_clk(video_clk),
        .reset(reset),
        .hs(hsync),
        .vs(vsync),
        .active_nblank(vde),
        .drawX(drawX),
        .drawY(drawY)
);  

logic [5:0] nds_red, nds_green, nds_blue; //inputs from the nds board into fpga
assign nds_red = {T_R5, T_R4, T_R3, T_R2, T_R1, T_R0}; // pack the array for simplicity
assign nds_green = {T_G5, T_G4, T_G3, T_G2, T_G1, T_G0};
assign nds_blue = {T_B5, T_B4, T_B3, T_B2, T_B1, T_B0};
logic [5:0] red, green, blue; // output from bram calculated from drawX and drawY
logic [17:0] nds_colordata;
assign nds_colordata = {nds_red, nds_green, nds_blue};

nds_bram nds (
    .red(nds_red),
    .green(nds_green),
    .blue(nds_blue),
    .dclk(DCLK),
    .ls(LS),
    .gsp(GSP),
    .reset(reset),
    .clk(video_clk),
    .hdmi_red(red),
    .hdmi_green(green),
    .hdmi_blue(blue),
    .drawX(drawX),
    .drawY(drawY)
);

hdmi_tx_0 vga_to_hdmi (
        .pix_clk(video_clk),
        .pix_clkx5(video_clk_5x),
        .pix_clk_locked(locked),
        .rst(reset),
        .red(red),
        .green(green),
        .blue(blue),
        .hsync(hsync),
        .vsync(vsync),
        .vde(vde),
        
        .aux0_din(4'b0),
        .aux1_din(4'b0),
        .aux2_din(4'b0),
        .ade(1'b0),
        
        .TMDS_CLK_P(TMDS_clk_p),          
        .TMDS_CLK_N(TMDS_clk_n),          
        .TMDS_DATA_P(TMDS_data_p),         
        .TMDS_DATA_N(TMDS_data_n)          
);


pin_xor pins_xor (
    .R0(T_R0),
    .R1(T_R1),
    .R2(T_R2),
    .R3(T_R3),
    .R4(T_R4),
    .R5(T_R5),
    
    .G0(T_G0),
    .G1(T_G1),
    .G2(T_G2),
    .G3(T_G3),
    .G4(T_G4),
    .G5(T_G5),
    
    .B0(T_B0),
    .B1(T_B1),
    .B2(T_B2),
    .B3(T_B3),
    .B4(T_B4),
    .B5(T_B5),
    
    .reset_n(rst_n),
    
    .DCLK(dclk_bufg),
    .GSP(GSP),
    .LS(LS),
    .CLK(video_clk),
    .LED0(led[0])
    
    
);

endmodule
