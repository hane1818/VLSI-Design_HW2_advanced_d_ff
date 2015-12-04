entity D_FF is
port (
	clk: in bit;
	D: in bit;
	Q: out bit );
end D_FF;

architecture BEHAVIOR of D_FF is
begin
	process(clk)
	begin
		if (clk'EVENT and clk = '0') then
			Q <= D;
		end if;
	end process;
end BEHAVIOR;