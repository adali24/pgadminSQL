-- ******** BEKLETME KOMUTU ********
do $$
declare
	created_at time := now(); -- time -> data type, now() -> oluşturulduğu zaman
begin
	raise notice '%', created_at;
	perform pg_sleep(5); -- 5 saniye bekle!
	raise notice '%', created_at;
end $$;