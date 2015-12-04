entity My_ckt_2 is
port(
	clk: in bit;
	A1, A2, A3, A4: in bit;
	Q: out bit );
end My_ckt_2;

architecture STRUCTURE of My_ckt_2 is
	--Component List--
	component MY_CKT is
		port (
			A1, A2, A3, A4: in bit;
			D: out bit);
	end component MY_CKT;
	component D_FF is
		port (
			clk: in bit;
			D: in bit;
			Q: out bit);
	end component D_FF;
	--Signal List--
	signal D: bit;
begin
	--Component Port Mapping--
	C1: MY_CKT port map (A1, A2, A3, A4, D);
	C2: D_FF port map (clk, D, Q);
end STRUCTURE;