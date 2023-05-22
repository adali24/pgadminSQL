/*========================================= JOIN İSLEMLERİ ===================================================
 
  
    Join islemleri: iki tabloyu birlestirmek için kullanılır.

    
    1) LEFT JOIN:  ilk tabloda olan tum verileri listeler.
    2) RIGHT JOIN: ikinci tabloda olan tum verileri listeler.
    3) INNER JOIN: Tablolardaki ortak olan verileri listeler.
    4) FULL JOIN: her iki tablodaki verilerin tamamını listeler 

 	Syntax
    -----------
    SELECT sutun1,sutun2... FROM tablo1_adi    
           
    ....JOIN tablo2_adi 
        
    ON tablo1_adi.ortak_sutun = tablo2_adi.ortak_sutun;
	
	===================================================================================================================*/ 
	
create table filmler
(film_id int,
film_name varchar(30),
category varchar(30)
);

insert into filmler values (100, 'Eyvah Eyvah', 'Komedi');
insert into filmler values (200, 'Kurtlar Vadisi', 'Aksiyon');
insert into filmler values (300, 'Eltilerin Savasi', 'Komedi');
insert into filmler values (400, 'Aile Arasinda', 'Komedi');
insert into filmler values (500, 'GORA', 'Bilim Kurgu');
insert into filmler values (600, 'Organize Isler', 'Komedi');
insert into filmler values (700, 'Babam ve Oglum', 'Dram');


select * from filmler
create table aktorler
(
actor_name varchar(30),
film_id int
);

insert into aktorler values ('Ata Demirer', 100);
insert into aktorler values ('Necati Sasmaz', 200);
insert into aktorler values ('Gupse Ozay', 300);
insert into aktorler values ('Engin Gunaydin', 400);
insert into aktorler values ('Cem Yilmaz', 500);
insert into aktorler values ('Yilmaz Erdogan', 800);
insert into aktorler values ('Haluk Bilginer', 900);
select * from aktorler	
	
-- SORU1: Tüm film_name'leri, tüm category'lerini ve bu filmlerde oynayan actor_name'leri listeleyiniz.	
	
SELECT film_name,category,actor_name FROM filmler            
left JOIN aktorler
ON filmler.film_id =aktorler.film_id;

--2.yol
SELECT film_name,category,actor_name FROM aktorler            
right JOIN filmler
ON filmler.film_id =aktorler.film_id;


-- SORU2: Tüm actor_name'leri ve bu actorlerin oynadıgı film_name'lerini listeleyiniz.
SELECT actor_name,film_name FROM aktorler           
left JOIN filmler
ON filmler.film_id =aktorler.film_id;

--SORU3: Her iki tabloda film_id'si ortak olan verilerin film_name ve actor_name'lerini listeleyiniz

SELECT film_name,actor_name FROM filmler            
inner JOIN aktorler
ON filmler.film_id =aktorler.film_id;

--SORU4: Tüm film_name'leri ve tüm actor_name'leri listeleyiniz

SELECT film_name,actor_name FROM filmler            
full JOIN aktorler
ON filmler.film_id =aktorler.film_id;