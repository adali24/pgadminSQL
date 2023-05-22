

/*============================ALTER==================================

DDL Grubundan==> ALTER komutu tabloyu günceller.


add column ==> yeni sutun ekleyerek tabloda güncellemeler yapar

drop column ==> mevcut olan sutunu silerek tabloda güncellemeler yapar

rename column ==> sutunun ismini degistirerek tabloda güncellemeler yapar       

rename ==> tablonun ismini degistirerek tabloda güncellemeler yapar 


Syntax:
-------

alter table tablo_adi güncelleme;

=====================================================================*/
create table arabalar
(
id int,
marka varchar(20),
model varchar(20),
vites varchar(20),
fiyat int
);


insert into arabalar values(1,'Mercedes','C180','Otomatik',900000);
insert into arabalar values(2,'Toyota','Corolla','Otomatik',400000);
insert into arabalar values(3,'Honda','Civic','Otomatik',500000);
insert into arabalar values(4,'Citroen','C3','Manuel',450000);

select * from arabalar

--SORU1: arabalar tablosuna kilometre varchar(10) seklinde yeni sutun ekleyiniz
alter table arabalar add column kilometre varchar(10)

--SORU2: arabalar tablosuna  yas int seklinde yeni sutun ekleyiniz
alter table arabalar add column  yas int;
update arabalar set yas = 32  where id=1;


--SORU3: arabalar tablosundan vites sutununu siliniz
alter table arabalar drop column vites;

--SORU4: arabalar tablosundaki fiyat sutununun ismini bedel olarak güncelleyiniz
alter table arabalar rename column fiyat to bedel 

--SORU5: arabalar tablosunun ismini galeri olarak güncelleyiniz
alter table arabalar rename  to galeri;

select * from galeri

