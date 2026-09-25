create table sailors(
    sid number(10) primary key,
    sname char(20),
    rating number(5),
    age number(1,100));

ALTER TABLE sailors MODIFY (rating number(10));
ALTER TABLE sailors MODIFY (age number(3));
desc sailors
select * from sailors;
    
create table boats(
    bid number(18) primary key,
    bname char(20),
    color char(30));
    
select * from boats;

INSERT INTO sailors (sid,sname,rating,age) VALUES (&sid,'&sname',&rating,&age);
    
