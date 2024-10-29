select * from users where email is null;
select * from users where email is not null;
select * from users where email is not null and age =15;


#ifnull es cuando tenemos datos que estan en null pero queremos darle un valor 
select name, surname, ifnull(age,0) as age from users