-- ******** ROW TYPE ********
-- ID'si 1 olan aktörün tüm bilgilerini alalım
do $$
declare
	selected_actor actor%rowtype; -- Rowtype: Seçili row'un tüm bilgilerini depolayabilmek için kullanılır.
begin
	SELECT *
	FROM Actor
	INTO selected_actor
	WHERE id=1;
	
	raise notice '% %', selected_actor.first_name, selected_actor.last_name;
end $$;