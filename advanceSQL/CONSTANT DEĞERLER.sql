-- ******** CONSTANT DEĞERLER ********
do $$
declare
	-- selling_price := net_price * 0.1;
	kdv constant numeric := 0.1; -- constant değer, sabit değer. Begin içerisinde tekrar değiştirilemez.
begin
	
	raise notice 'KDV: %', kdv;
	
	--kdv := 10;
	
end $$;

-- CONSTANT'ların değişmediğinin kanıt örneği
do $$
declare
	olusturulma constant integer := 17;
begin
	raise notice 'Olusturulma zamanı: %', olusturulma;
	
	--olusturulma := 18;
	
	raise notice 'Yeni Olusturulma zamanı: %', olusturulma;
	
end $$;