-- ******** TABLODAN DATA TIPINI KOPYALAMA ********


do $$
declare 
  f_title film.title%type; -- text

begin
    -- 1 id li filmin ismini getirin
select title
from film 
into f_title
where id=1;

raise notice '%', f_title;
end $$;