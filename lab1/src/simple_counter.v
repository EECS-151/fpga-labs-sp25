module simple_counter (
    input clk,
    input reset,
    output [1:0] counter_out
);
    reg [1:0] counter;

    always @(________ or ________) begin
        if (____) begin // TODO
            counter <= 2'b00;
        end else begin
            case (____) // TODO
                // TODO
            endcase
        end
    end

    ____ counter_out = ____; // TODO
endmodule
