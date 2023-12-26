module vgac (
    input vga_clk,  // 25MHz
    input clrn,  // clear (active low)
    input [11:0] d_in,  // bbbb_gggg_rrrr, pixel
    output reg [8:0] row_addr,  // pixel ram row address, 480 (512) lines
    output reg [9:0] col_addr,  // pixel ram col address, 640 (1024) pixels
    output reg rdn,  // read pixel RAM (active_low)
    output reg [3:0] r,  // 4-bit red
    output reg [3:0] g,  // 4-bit green
    output reg [3:0] b,  // 4-bit blue
    output reg hs,  // horizontal synchronization
    output reg vs  // vertical synchronization
);
    // h_count: VGA horizontal counter (0-799)
    reg [9:0] h_count;  // VGA horizontal counter (0-799): pixels
    always @(posedge vga_clk) begin
        if (!clrn) begin
            h_count <= 10'h0;
        end else if (h_count == 10'd799) begin
            h_count <= 10'h0;
        end else begin
            h_count <= h_count + 10'h1;
        end
    end

    // v_count: VGA vertical counter (0-524)
    reg [9:0] v_count;  // VGA vertical counter (0-524): lines
    always @(posedge vga_clk or negedge clrn) begin
        if (!clrn) begin
            v_count <= 10'h0;
        end else if (h_count == 10'd799) begin
            if (v_count == 10'd524) begin
                v_count <= 10'h0;
            end else begin
                v_count <= v_count + 10'h1;
            end
        end
    end

    // signals, will be latched for outputs
    wire [9:0] row = v_count - 10'd35;  // pixel ram row addr 
    wire [9:0] col = h_count - 10'd143;  // pixel ram col addr 
    wire h_sync = (h_count > 10'd95);  //  96 -> 799
    wire v_sync = (v_count > 10'd1);  //  2 -> 524
    wire read = h_count > 10'd142 && h_count < 10'd783 &&  // 143 -> 782, 640 pixels
    v_count > 10'd34 && v_count < 10'd515;  // 35 -> 514, 480 lines
    // vga signals
    always @(posedge vga_clk) begin
        row_addr <= row[8:0];  // pixel ram row address
        col_addr <= col;  // pixel ram col address
        rdn      <= ~read;  // read pixel (active low)
        hs       <= h_sync;  // horizontal synchronization
        vs       <= v_sync;  // vertical   synchronization
        r        <= rdn ? 4'h0 : d_in[3:0];  // 4-bit red
        g        <= rdn ? 4'h0 : d_in[7:4];  // 4-bit green
        b        <= rdn ? 4'h0 : d_in[11:8];  // 4-bit blue
    end
endmodule
