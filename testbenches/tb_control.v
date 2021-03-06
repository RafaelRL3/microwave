`timescale 1ns/1ps

module tb_control;

    reg startn,stopn,clearn,door_closed,timer_done;
    wire mag;
    integer i;
    
    control c(.startn(startn),.stopn(stopn),.clearn(clearn),.door_closed(door_closed),.timer_done(timer_done),.mag(mag));

    initial begin

        for(i = 0; i<3000;i = i+1)begin
            startn = 1; 
            stopn =1;
            clearn = 1;
            door_closed =  1;
            timer_done =  0;
            #2;
            $display("Start: %b, Stop: %b, clearn: %b, boor_closeb: %b, timer_bone: %b",startn,stopn,clearn,door_closed,timer_done); 
            #2;
            $display("Mag : %b",mag); 
            #20;
        end
          

    end

    initial begin
        $dumpfile("vcd/control.vcd");
        $dumpvars;
    end
    
    


endmodule