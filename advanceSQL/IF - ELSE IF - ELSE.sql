-- ******** IF - ELSE IF - ELSE
-- syntax:
/*
	IF condition THEN
		işlemler;
	ELSEIF condition_2 THEN
		işlemler;
	ELSEIF condition_3 THEN
		işlemler;
	ELSE
		işlemler;
	END IF;
*/
/*
	Task:
	
	1 ID'li film bulunursa:
	
		Süresi 50 dakikanın altında ise "Kısa",
		50 ile 120 arasında ise "Ortalama",
		120 dakikadan fazla ise "Uzun"
		print edelim.
*/
do $$
declare
	oFilm film%rowtype;
	lenDescription varchar(50);
	film_id film.id%type :=1;
begin
	SELECT * FROM film
	INTO oFilm
	WHERE id=film_id;
	
	if not found then
		raise notice 'Film bulunamadı!';
	else
		if oFilm.length>0 and oFilm.length<50 then
			lenDescription := 'Kısa';
		elseif oFilm.length>50 and oFilm.length<120 then
			lenDescription := 'Ortalama';
		elseif oFilm.length>120 then
			lenDescription := 'Uzun';
		else
			lenDescription := 'Tanımlanamıyor.';
		end if;
		
		raise notice '% filminin süresi: %', oFilm.title, lenDescription;
		
	end if;
	
end $$;