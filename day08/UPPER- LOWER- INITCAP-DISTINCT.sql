/*
        UPPER- LOWER- INITCAP-DISTINCT 
        ------------------------------
UPPER ==> Sütunudaki verileri Büyük Harf ile listeler.
Syntax:
-------
select UPPER(Sutun_adi) from tablo_adi;



LOWER ==> Sütunudaki verileri Küçük Harf ile listeler.
Syntax:
-------
select LOWER(Sutun_adi) from tablo_adi;



INITCAP ==> Sütunudaki verileri ilk Harfi Büyük Diger Harfleri Küçük listeler.
Syntax:
-------
select INITCAP(Sutun_adi) from tablo_adi;



DISTINCT ==> Sütunudaki verileri tekrarsız listeler.
Syntax:
-------
select DISTINCT(Sutun_adi) from tablo_adi;

*/


create table ornek
(
isim varchar(20),
soyisim varchar(25)
);

insert into ornek values('Hasan','YAN');
insert into ornek values('Veli','TURK');
insert into ornek values('Ramiz','KARA');
insert into ornek values('Elif','GUL');
insert into ornek values('Hasan','VURAL');
select * from ornek

--SORU1: isim sutununu buyuk harflerle listeleyiniz.
select UPPER(isim) from ornek;

--SORU2: isim sutununu kucuk harflerle listeleyiniz.
select lower(soyisim) from ornek;

--SORU3: soyisim sutununu ilk harfi buyuk diger harfleri küçük listeleyiniz.
select initcap (soyisim) from ornek;

--SORU4: isim sutununu buyuk harflerle, soyisim sutununu kucuk harflerle listeleyiniz.
select upper (isim) , lower (soyisim) from ornek;


--SORU5: isim sutununu tekrarsız listeleyiniz.
select distinct(isim) from ornek;

/*
NOT: IS NULL ==> null olan verileri getirir
	  IS NOT NULL ==> null olmayan verileri getirir
*/

create table deneme
(
id char(9),
isim varchar(50),
adres varchar(50)
);


insert into deneme values(123456789, 'Ali', 'Istanbul');
insert into deneme values(846256716, 'Veli', 'Ankara');
insert into deneme values(714931862, 'Mine', 'Izmir');
insert into deneme values(562481742, null, 'Ankara');

select *from deneme

--SORU1: isim sutununda null olan verileri listeleyiniz.

select * from deneme where isim is null; 

--SORU2: isim sutununda null olmayan verileri listeleyiniz.
select * from deneme where isim is not null; 

