//
module top (
    input   logic           clkin100,
    input   logic           rstn,
    //
    output  logic[7:0]      led,
    //output  logic[24:1]     io_led,
    //
    input   logic           usb_uart_rxd,
    output  logic           usb_uart_txd
);

    logic clk;
    assign clk = clkin100;
    
    logic[31:0] gpo;
    system system_i (
        //
        .clkin100           (clk),
        .rstn               (rstn),
        //    
        .usb_uart_rxd       (usb_uart_rxd),
        .usb_uart_txd       (usb_uart_txd),
        //
        .led_gpio_tri_o     (gpo)
    );
    
    // LEDs
    assign led = gpo[7:0];
    //assign io_led = gpo[31:8];
    
    // debug
    logic[8:0] dbg_count=0;
    always_ff @(posedge clk) dbg_count <= dbg_count + 1;
    top_ila ila_inst (.clk(clk), .probe0(dbg_count)); // 9

endmodule
