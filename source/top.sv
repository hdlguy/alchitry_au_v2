//
module top (
    input   logic           clkin100,
    input   logic           rstn,
    //
    output  logic[7:0]      led,
    //
    input   logic           usb_uart_rxd,
    output  logic           usb_uart_txd
);

    logic clk;
    assign clk = clkin100;
    
    system system_i (
        //
        .clkin100           (clk),
        .rstn               (rstn),
        //    
        .usb_uart_rxd       (usb_uart_rxd),
        .usb_uart_txd       (usb_uart_txd),
        //
        .led_gpio_tri_o     (led)
    );

endmodule
