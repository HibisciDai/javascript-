create table  t_address(
   id  integer  primary key,
   city   varchar2(100),
   parentid  integer
)
insert  into  t_address values(1,'郑州',null);
insert  into  t_address values(2,'金水',1);
insert  into  t_address values(3,'二七',1);
insert  into  t_address values(4,'惠济',1);
insert  into  t_address values(13,'管城',1);
insert  into  t_address values(5,'天津',null);
insert  into  t_address values(6,'河东',5);
insert  into  t_address values(7,'河西',5);
insert  into  t_address values(8,'南开',5);
insert  into  t_address values(9,'北京',null);
insert  into  t_address values(10,'海淀',9);
insert  into  t_address values(11,'朝阳',9);
insert  into  t_address values(12,'丰台',9);

insert  into  t_address values(14,'石景山',9);
select  *  from  t_address


 select   e.id  eid,e.city  ecity ,a.id aid,a.city acity  from  t_address e
          inner  join  t_address a on  e.id=a.parentid