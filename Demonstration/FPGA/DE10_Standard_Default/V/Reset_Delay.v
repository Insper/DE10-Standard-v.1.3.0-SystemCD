module	Reset_Delay(iREST_N, iCLK,oRESET);
input    iREST_N ; 
input		iCLK;
output reg	oRESET;
reg	[31:0]	Cont;

parameter SEC = 50_000_000;
always@(negedge iREST_N or posedge iCLK)
if (!iREST_N) begin 
oRESET	<=	0;
Cont	 	<=	0;
end
else 
begin
	if(Cont<SEC/5)
	begin
		Cont	<=	Cont+1;
		oRESET	<=	1'b0;
	end
	else
	oRESET	<=	1'b1;
end

endmodule