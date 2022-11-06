CREATE TABLE member(
    userid varchar(20) NOT NULL,
    userpassword varchar(20),
    userphone varchar(20),
    PRIMARY KEY (userid)
);

select * from member;

insert into member values('nelly', 'sjdlaksj1234#@', '01012345678');

delete from member where userid='nelly';

commit;
