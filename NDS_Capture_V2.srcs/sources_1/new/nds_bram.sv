`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/12/2024 01:01:29 AM
// Design Name: 
// Module Name: nds_bram5
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


module nds_bram(
    input logic [5:0] red, 
    input logic [5:0] green, 
    input logic [5:0] blue, // NDS Display RGB
    input logic dclk, // NDS Display Clock
    input logic ls, // NDS hsync
    input logic gsp, // NDS vsync
    input logic reset,
    input logic clk,

    output logic [5:0] hdmi_red, hdmi_green, hdmi_blue, // outputs from bram
    input logic [11:0] drawX, drawY // indexing bram
);

    
    logic [17:0] dina; // input data from nds to bram
    logic [17:0] doutb; // output data from bram to hdmi_tx
    logic [15:0] addra, addrb; // addra is write address, addrb is read address
    logic wea; // bram port a write enable
    
    logic [15:0] pixel_count; // count the pixels we are storing into bram (address calculation)
    assign dina = {red, green, blue}; // packed input data

    blk_mem_gen_0 bram (
        .addra(addra),     // Write address (Port A)
        .clka(clk),        // Write clock (Port A)
        .dina(dina),       // Data input (Port A)
        .douta(),          // Unused output (Port A)
        .ena(1'b1),        // Always enable Port A
        .wea(wea),         // Write enable (Port A)
        .addrb(addrb),     // Read address (Port B)
        .clkb(clk),        // Read clock (Port B)
        .dinb(24'b0),      // Unused input (Port B)
        .doutb(doutb),     // Data output (Port B)
        .enb(1'b1),        // Always enable Port B
        .web(1'b0)         // Write disabled for Port B
    );
    
logic dclk_sync1, dclk_sync2;

always_ff @(posedge clk or posedge reset) begin // sync dclk to the input clock
    if (reset) begin
        dclk_sync1 <= 1'b0;
        dclk_sync2 <= 1'b0;
    end else begin
        dclk_sync1 <= dclk;
        dclk_sync2 <= dclk_sync1;
    end
end

logic dclk_prev, dclk_rising, dclk_falling;

always_ff @(posedge clk or posedge reset) begin // rising and falling edge detection for bram writes
    if (reset) begin
        dclk_prev <= 1'b0;
        dclk_rising <= 1'b0;
        dclk_falling <= 1'b0;
    end else begin
        dclk_rising <= dclk_sync2 && !dclk_prev;
        dclk_falling <= !dclk_sync2 && dclk_prev;
        dclk_prev <= dclk_sync2;
    end
end

always_ff @(posedge clk or posedge reset) begin // bram write from nds
    if (reset) begin
        addra <= 0; 
        pixel_count <= 0;
        wea <= 1'b0;
    end else begin
        if (!gsp) begin // if gsp goes low we have a frame to render in bram
            pixel_count <= 0;
            addra <= 0;
            wea <= 1'b0;
        end else if ((dclk_rising || dclk_falling) && pixel_count < 57600) begin
        //write to bram if we have a rising or falling edge and pixel count is below 300 * 192
        // nds display is 256*192 but there is additional 44 blanking pixels per line
        // with no vertical blanking
            addra <= pixel_count; // address is given by our current pixel count
            wea <= 1'b1; // enable write
            pixel_count <= pixel_count + 1; //increment the counter/address
            end else if (pixel_count >= 57600) begin
            pixel_count <= 0;
            wea <= 1'b1; // enable write
            addra <= pixel_count;
        end else begin
            wea <= 1'b0; // disable writes when conditions are not met
        end
    end
end

logic [17:0] doutb_reg;

always_ff @(posedge clk or posedge reset) begin // this logic could have been done better ngl
    if (reset) begin
        doutb_reg <= 18'b0; // reset the data register on reset
        hdmi_red <= 6'b000000; // reset the output hdmi on reset
        hdmi_green <= 6'b000000;
        hdmi_blue <= 6'b000000;
    end else begin
    
        //addrb <= (drawX - 170) + ((drawY - 144) * 300) - 421; // set the current address
        
        if (drawY <= 336 && drawY > 144) begin
            
            if (drawX > 170 && drawX <= 470) begin
                addrb <= (drawX - 170) + ((drawY - 144) * 300) - 421; // set the current address
                // RUN BITSTREAM WITHOUT -421 TO SHOW HOW DATA IS GIVEN TO THE SCREEN
                doutb_reg <= doutb;
                hdmi_red <= doutb_reg[5:0]; // set the hdmi signals from the data register if we are in bounds
                hdmi_green <= doutb_reg[11:6];
                hdmi_blue <= doutb_reg[17:12];
                
            end else begin
                hdmi_red <= 6'b000000;
                hdmi_green <= 6'b000000;
                hdmi_blue <= 6'b000000;
            end
            
        end else begin
            hdmi_red <= 6'b000000;
            hdmi_green <= 6'b000000;
            hdmi_blue <= 6'b000000;
        end
    
        /*if (drawX > 170 && drawX < 470 && drawY > 144 && drawY = 336) begin // center the draw into 300X192
            addrb <= (drawX - 170) + ((drawY - 144) * 300); // set the current address
            // dont ask why i need to offset by -420 in order to properly draw the screen
        end else begin
            addrb <= 16'b0; // if we are out of range dont set our address
        end
        
        doutb_reg <= doutb; // ensure doutb is stable for at least 1 clock cycle before putting on output hdmi

        if (drawX > 170 && drawX <= 470 && drawY > 144 && drawY <= 336) begin
            hdmi_red <= doutb_reg[5:0]; // set the hdmi signals from the data register if we are in bounds
            hdmi_green <= doutb_reg[11:6];
            hdmi_blue <= doutb_reg[17:12];
        end else begin
            hdmi_red <= 6'b000000;
            hdmi_green <= 6'b000000;
            hdmi_blue <= 6'b000000;
        end*/
    end
end


endmodule
