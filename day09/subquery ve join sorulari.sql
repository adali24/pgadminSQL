CREATE TABLE calisanlar 
(
isim VARCHAR(50), 
sehir VARCHAR(50), 
maas int, 
isyeri VARCHAR(20)
);
INSERT INTO calisanlar VALUES('Ali Seker', 'Istanbul', 2500, 'Vakko');
INSERT INTO calisanlar VALUES('Ayse Gul', 'Istanbul', 1500, 'LCWaikiki');
INSERT INTO calisanlar VALUES('Veli Yilmaz', 'Ankara', 3000, 'Vakko');
INSERT INTO calisanlar VALUES('Veli Yilmaz', 'Ankara', 7000, 'Adidas');
INSERT INTO calisanlar VALUES('Nisa Can', 'Ankara', 1500, 'Pierre Cardin');
INSERT INTO calisanlar VALUES('Fatma Yasa', 'Bursa', 2500, 'Vakko');


CREATE TABLE markalar
(
marka_id int, 
marka_isim VARCHAR(20), 
calisan_sayisi int
);
INSERT INTO markalar VALUES(100, 'Vakko', 12000);
INSERT INTO markalar VALUES(101, 'Pierre Cardin', 18000);
INSERT INTO markalar VALUES(102, 'Adidas', 10000);
INSERT INTO markalar VALUES(103, 'LCWaikiki', 21000);


--SORU1 : Çalisan sayisi 15.000’den cok olan 'isyeri' lerini, calisanlarin 'isim' lerini ve 'maas' larini listeleyin.
select isyeri,isim,maas from calisanlar where isyeri in 
(select marka_isim from markalar where calisan_sayisi>15000)


--SORU2 : marka id'si 101'den buyuk olan 'isyeri' lerini, calisanlarin 'isim' lerini, 'maas' larini ve 'sehir' lerini listeleyiniz 
select isyeri,isim,maas, sehir from calisanlar 
where  isyeri in (select marka_isim from markalar where marka_id >101 )

--SORU3: markalar tablosundaki marka_isim'ini, calisan_sayisi'ni ve o markalara ait toplam maas'ı listeleyiniz
select marka_isim,calisan_sayisi,
(select sum(maas)from calisanlar where marka_isim=isyeri)
from markalar;


-- SORU4: markalar tablosundaki marka_isim'ini, calisan_sayisi'ni 
-- ve o markalara ait max ve min maas'ı listeleyiniz 
select marka_isim,calisan_sayisi,
(select max(maas)from calisanlar where marka_isim=isyeri),
(select min(maas)from calisanlar where marka_isim=isyeri)
from markalar;
-----------------------------------------------****************************************-------------------------------------------------------------------------

create table kitaplar
(
kitap_id int,
kitap_isim varchar(30)
);

insert into kitaplar values (100, 'intibah');
insert into kitaplar values (200, 'Araba Sevdası');
insert into kitaplar values (300, 'Mai ve Siyah');
insert into kitaplar values (400, 'Eylül');
insert into kitaplar values (500, 'Mürebbiye');
insert into kitaplar values (600, 'Handan');



create table yazarlar
(
yazar_isim varchar(30),
kitap_id int
);

insert into yazarlar values ('Namık Kemal', 100);
insert into yazarlar values ('Recaizade Mahmut Ekrem', 200);
insert into yazarlar values ('Halit Ziya', 300);
insert into yazarlar values ('Mehmet Rauf', 400);
insert into yazarlar values ('Hüseyin Rahmi Gürpınar', 500);
insert into yazarlar values ('Yakup Kadri Karaosmanoğlu', 700);


-- SORU1: Tüm kitap_isim'lerini ve bu kitapları yazan yazar_isim'lerini listeleyiniz.
select kitap_isim,yazar_isim from kitaplar right join yazarlar on kitaplar.kitap_id=yazarlar.kitap_id;
