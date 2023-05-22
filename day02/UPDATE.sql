

/*==========================UPDATE===========================


DML Grubundan ==> UPDATE komutu Tablodaki Veriyi Günceller


Syntax:
------

update tablo_adi set sutun_adi=yeni_deger where şart;


==============================================================*/

create table film
(
film_no int,
film_ismi varchar(30),
film_turu varchar(30)
);

insert into film values (100, 'Eyvah Eyvah', 'Komedi');
insert into film values (200, 'Kurtlar Vadisi', 'Aksiyon');
insert into film values (300, 'Eltilerin Savasi', 'Komedi');
insert into film values (400, 'Aile Arasinda', 'Komedi');
insert into film values (500, 'GORA', 'Bilim Kurgu');
insert into film values (600, 'Organize Isler', 'Komedi');
insert into film values (700, 'Babam ve Oglum', 'Dram');

select * from film

-- SORU1: film_no'su 300 olan film'in film_ismi'ni 'Recep İvedik' olarak güncelleyeniz.
update film set film_ismi='Recep İvedik' where film_no='300'

--  SORU2: film tablosundaki tüm film_turu'nu 'Aksiyon' olarak güncelleyeniz.
update film set film_turu='Aksiyon'


-- SORU3: film_no'su 100 olan film'in ,film_ismi'ni 'Cakallarla Dans' , film_turu'nu 'Komedi' olarak güncelleyiniz.
update film set film_ismi='Cakallarla dans' , film_turu='Komedi' where film_no='100'

-- SORU4: film_ismi 'Babam ve Oglum' olan film'in film_turu'nu 'Dram' olarak güncelleyiniz.
update film set film_turu='Dram' where film_ismi='Babam ve Oglum'

-- SORU5: film tablosundaki 'GORA' olan değeri, 'AROG' olarak güncelleyiniz.
update film set Film_ismi='Arog' where film_ismi='GORA'

-- SORU6: film tablosundaki film_no değeri 300'den büyük olanların,film_no'sunu 1 artırarak güncelleyiniz.
update film set film_no=film_no+1 where film_no>300