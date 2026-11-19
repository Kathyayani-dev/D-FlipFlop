# code for  dff.v
  ...
     module dff(clk,reset,d,q,qb);

   //Step1 : Declare Port Directions
        input clk,reset,d;
        output reg q;
        output qb;
   /*Understand the Behaviour of D flip-flop &
   check the coding style of synchronous reset*/

   always@(posedge clk)
      begin
         if(reset)
            q <= 1'b0;
         else
            q <= d;
      end

   //Step2 : Write the logic for Qbar
        assign qb = ~q;
endmodule
...
