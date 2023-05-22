/*------------ AGGREGATE METHOD KULLANIMI ---------------------------

AGGREGATE METHODLARI:  Tek bir deger elde etmek istedigimizde kullanılır.

sum() ==>   Verilerin toplamını alır.
count() ==> Verilerin sayisini alır.
min() ==>   Verilerden en kücük degeri alır.
max() ==>   Verilerden en büyük degeri alır.
avg() ==>   Verilerin ortalamasını alır.
*/
create table arac
(
id int,
marka varchar(30),
model varchar(30),
fiyat int,
kilometre int,
vites varchar(20)
);

select * from arac

insert into arac values(100, 'Citroen', 'C3', 500000, 5000, 'Otomatik' );
insert into arac values(101, 'Mercedes', 'C180', 900000, 10000, 'Otomatik' );
insert into arac values(102, 'Honda', 'Cıvıc', 400000, 15000, 'Manuel' );
insert into arac values(103, 'Wolkswagen', 'Golf', 350000, 20000, 'Manuel' );
insert into arac values(104, 'Ford', 'Mustang', 750000, 5000, 'Otomatik' );
insert into arac values(105, 'Porsche', 'Panamera', 850000, 5000, 'Otomatik' );
insert into arac values(106, 'Bugatti', 'Veyron', 950000, 5000, 'Otomatik' );

--SORU1 : arac tablosundaki en yüksek fiyat'ı listele
select max(fiyat) as enyuksek_fiyat from arac;

--SORU2 : arac tablosundaki en düşük fiyat'ı listele
select min(fiyat) as endusuk_fiyat from arac;

--SORU3 : arac tablosundaki fiyatların toplamını listele
select sum(fiyat) as toplam_fiyat from arac;

--SORU4 : arac tablosundaki fiyat ortalamalarını listele
select avg(fiyat) as ortalam_fiyat from arac;
select round(avg(fiyat)) ortalama_fiyat from arac;
select round(avg(fiyat),2) ortalama_fiyat from arac;
--round ondalikli kisimdan kurtulmak icin kullanilan bir komuttur

--SORU5 : arac tablosunda kaç tane araç oldugunu listele
select count(id) as arac_sayisi from arac;

