
-- ******** RECORD TYPE ********
-- Film tablosundan id'si 2 olan data'nın yalnızca id, title ve type bilgisini al
do $$
declare
	rec record;
begin
	SELECT id,title,type
	FROM film
	INTO rec
	WHERE id=2;
	
	raise notice 'ID: %, Film İsmi: %, Tür: %', rec.id, rec.title, rec.type;
end $$;