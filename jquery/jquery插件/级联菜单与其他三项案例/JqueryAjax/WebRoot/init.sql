create table  t_address(
   id  integer  primary key,
   city   varchar2(100),
   parentid  integer
)
insert  into  t_address values(1,'֣��',null);
insert  into  t_address values(2,'��ˮ',1);
insert  into  t_address values(3,'����',1);
insert  into  t_address values(4,'�ݼ�',1);
insert  into  t_address values(13,'�ܳ�',1);
insert  into  t_address values(5,'���',null);
insert  into  t_address values(6,'�Ӷ�',5);
insert  into  t_address values(7,'����',5);
insert  into  t_address values(8,'�Ͽ�',5);
insert  into  t_address values(9,'����',null);
insert  into  t_address values(10,'����',9);
insert  into  t_address values(11,'����',9);
insert  into  t_address values(12,'��̨',9);

insert  into  t_address values(14,'ʯ��ɽ',9);
select  *  from  t_address


 select   e.id  eid,e.city  ecity ,a.id aid,a.city acity  from  t_address e
          inner  join  t_address a on  e.id=a.parentid