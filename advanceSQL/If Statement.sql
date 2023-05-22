-- //////////////// Control Yapıları ////////////////
-- ******** If Statement ********
-- syntax
/*
	IF condition THEN -- eğer ... ise/o halde -> işlemler'i yap.
		işlemler
	END IF;
*/
-- Task: 1 ID'li filmi bulmaya çalış, bulunursa "Bulundu" yazısını print et.
do $$
declare
	selected_film film%rowtype; -- Film objesi kullanılacak
	input_film_id film.id%type := 1; -- Kullanıcının girdiği id numarası
begin
	
	SELECT * FROM film
	INTO selected_film
	WHERE id=input_film_id;
 	
	-- Bulduğumuz filmin title'ını getir
	--raise notice '%', selected_film.title;
	
	if found then
		raise notice 'Bulundu: %', selected_film.title;
	end if;
end $$;

--*******************************************************8
do $$
declare
	selected_film film%rowtype; -- Film objesi kullanılacak
	input_film_id film.id%type := 10; -- Kullanıcının girdiği id numarası
begin
	
	SELECT * FROM film
	INTO selected_film
	WHERE id=input_film_id;
 	
	-- Bulduğumuz filmin title'ını getir
	--raise notice '%', selected_film.title;
	
	if not found then
		raise notice 'Bulunamadı! -----> %', selected_film.title;
	end if;
end $$;
