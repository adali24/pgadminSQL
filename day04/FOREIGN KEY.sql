/*----------------------------FOREIGN KEY---------------------------------------------------

	FOREIGN KEY --> Başka bir tablodaki PRİMARY KEY'i referans göstermek için kullanılır. 
	Böylelikle, tablolar arasında parent - child ilişkisi oluşur.
	
	FOREIGN KEY'in bulundugu tablo Child tablodur.
	PRIMARY KEY'in bulundugu tablo ise Parent tablodur.

	FOREIGN KEY KISITLAMASI SAYESİNDE:
	---------------------------------
	
	1-) parent tabloda olmayan primary key ile, child tabloya veri girişi yapılamaz.
	(child tablo null deger kabul eder)

	2-) child tablodaki veri silinmeden, parent tablodaki veri silinemez

	3-) child tablo silinmeden, parent tablo silinemez
----------------------------------------------------------------------------------------------*/

create table hastaneler
(
hastane_adi varchar(30) PRIMARY KEY,
adres varchar(30),
alan_kodu int
);
insert into hastaneler values('Meddem', 'Isparta', '0246');
insert into hastaneler values('Sifa', 'Ankara', '0236');
insert into hastaneler values('Davraz', 'Istanbul', '0216');
insert into hastaneler values('Deva', 'Antalya', '0242');


create table doktorlar
(
gorev_yeri varchar(30),
doktor_adi varchar(30),
diploma_no int,
brans_adı varchar(30),
	
CONSTRAINT fk FOREIGN KEY(gorev_yeri) REFERENCES hastaneler(hastane_adi)
);	
insert into doktorlar values('Meddem', 'Hasan Bal', '123456', 'psikiyatri');
insert into doktorlar values('Sifa', 'Vedat Sen', '123865', 'pediatri');
insert into doktorlar values('Davraz', 'Huseyin Oz', '123568', 'noroloji');
insert into doktorlar values('Deva', 'Ahmet Kar', '123852', 'dahiliye');
insert into doktorlar values('Meddem', 'Hakan Kar', '123369', 'dermatoloji');
insert into doktorlar values('Sifa', 'Ramiz Kara', '123147', 'anestezi');
insert into doktorlar values('Davraz', 'Okan Pul', '123147', 'ortopedi');

select * from doktorlar;

--SORU 1: doktorlar tablosuna gorev_yeri 'Meddem' olan veri girişi yapınız

insert into doktorlar values('Meddem','Esma',159753,'noroloji');

--SORU 2: .doktorlar tablosuna gorev_yeri 'Okmeydanı' olan veri girişi yapınız.

--> parent tabloda olmayan primary key ile child tabloya veri girisi yapılamaz.
insert into doktorlar values('Okmeydanı','Hatice Kar',147852,'ortopedi'); -- bu sebeple bu kod eror verir.

--SORU 3: doktorlar tablosuna gorev_yeri null olan veri girişi yapınız

--child tablo null deger kabul eder.

insert into doktorlar values(null,'Latife',147852,'noroloji');

select * from doktorlar;


--SORU 4: .hastaneler tablosundaki hastane_adi 'Meddem' olan veriyi siliniz. 

-- child tablodaki veri silinmeden parent tablodaki veri silinemez

delete from hastaneler where hastane_adi='Meddem'; -- bu sebeple bu kod eror verir.

--SORU 5: doktorlar tablosundaki gorev_yeri 'Meddem' olan verileri siliniz

delete from doktorlar where gorev_yeri='Meddem';
select * from doktorlar;

--SORU 6: .hastaneler tablosundaki hastane_adi 'Meddem' olan veriyi siliniz. 

delete from hastaneler where hastane_adi='Meddem';

--SORU 7: .hastaneler tablosunu siliniz. 

-- child tablo silinmeden parent tablo silinemez

drop table hastaneler; -- bu sebeple bu kod eror verir

--SORU 8: doktorlar tablosunu siliniz 

drop table doktorlar;

--SORU 9: .hastaneler tablosunu siliniz. 

drop table hastaneler;



/*

FOREIGN KEY'LERDE ON DELETE CASCADE KOMUTU YAZILMAZSA

1-) Child tablo silinmeden Parent tablo silinmeye çalışıldıgında PgAdmin Eror verir.
yani Child tablo silinmeden Parent tablo silinemez

2-) Child tablodaki veri silinmeden Parent tablodaki veri silinmeye çalışıldıgında Pg Admin Eror verir.
yani Child tablodaki veri silinmeden Parent tablodaki veri silinemez






FOREIGN KEY'LERDE ON DELETE CASCADE KOMUTU YAZILIRSA

1-) Child tablo silinmeden Parent tablo silinebilir.
PgAdmin Eror vermez

2-) Child tablodaki veri silinmeden Parent tablodaki veri silinmeye çalışıldıgında PgAdmin Error vermez
Parent tablodaki veriyi siler.
Fakat bu durumda Child tablodaki veride silinir.

*/