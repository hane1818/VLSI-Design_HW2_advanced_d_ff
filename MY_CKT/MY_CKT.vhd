entity MY_CKT is
port (
	A1, A2, A3, A4: in bit;
	D: out bit );
end MY_CKT;

architecture DATAFLOW of MY_CKT is 
--signal A: bit_vector(1 to 4);
begin
	--------------------------------------
	---- Concurrent signal assignment ----
	--------------------------------------

	D <= ((A1 nor A2) and (A3 xnor A4)) 
		or (A1 and ((not A3) or (A2 nor A4)));

	--------------------------------------
	----- Selected signal assignment -----
	--------------------------------------

--	A <= A1 & A2 & A3 & A4;
--	with A select
--	D <='1' when "0000",
--		'0' when "0001",
--		'0' when "0010",
--		'1' when "0011",
--		'0' when "0100",
--		'0' when "0101",
--		'0' when "0110",
--		'0' when "0111",
--		'1' when "1000",
--		'1' when "1001",
--		'1' when "1010",
--		'0' when "1011",
--		'1' when "1100",
--		'1' when "1101",
--		'0' when "1110",
--		'0' when "1111";
end DATAFLOW;