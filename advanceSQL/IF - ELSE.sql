-- ********* IF - ELSE *********
/*
	IF condition THEN
		işlemler;
	ELSE
		alternatif işlemler;
	END IF;
*/

-- Task: 1 ID'li film bulunabilirse, title bilgisini yazdır, yoksa BULUNAMADI yazdır.

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
	
	if found then
		raise notice 'Bulundu: %', selected_film.title;
	else 
		raise notice 'Bulunnamadi: %', selected_film.title;
	end if;
end $$;



