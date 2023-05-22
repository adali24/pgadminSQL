/*
TRANSACTİON: Verileri silinmeye karşı korur.

Tabloya ekledigimiz verileri silinmeye karşı korumak istiyorsak TRANSACTION işlemi kullanılmalıdır.


Begin: Transaction'ı başlatmak için kullanılır.

Savepoint: Verileri silinmeye karşı save eder.

Rollback: Silinen verileri geri getirir.

Commit: Transaction'ı sonlandırmak için kullanılır.

*/


create table evraklar(
id int,
onem_derecesi varchar(40),
konusu varchar(100)
)

begin; --Transaction'ı başlatmak için kullanılır.

insert into evraklar values (100,'Cok Onemli','Saglik');
insert into evraklar values (101,'Cok Onemli','Maliye');
insert into evraklar values (102,'Cok Onemli','Nufus');
insert into evraklar values (103,'Cok Onemli','Mezuniyet');

savepoint x;

insert into evraklar values (104,'Onemsiz','Apartman makbuzu');
insert into evraklar values (104,'Onemsiz','Su Faturasi');

select * from evraklar;

delete from evraklar;

select * from evraklar;

rollback to x;

select * from evraklar;

commit;

delete from evraklar;

select * from evraklar;

