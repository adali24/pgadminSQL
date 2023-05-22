--- ******** İÇ İÇE BLOK YAPILARI ********
do $$
<<tepeblok>>
declare -- Tepedeki blok, outer block olarak geçiyor.
	counter integer := 0;
begin
	counter := counter+1; -- counter: 1
	raise notice 'Tepe Blok, Counter Değeri: %', counter;
	declare -- Inner Block başlangıcı
		counter integer :=0;
	begin
		counter := counter+10; -- counter: 10
		raise notice 'İç, Counter Değeri: %', counter;
		
		raise notice 'Dış Bloktaki Counter Değeri: %', tepeblok.counter;
	
	end; -- Inner Block sonu
	
	raise notice 'Tepe Blok, Counter Değeri: %', counter;
	
	
end $$; -- Outer Block sonu.