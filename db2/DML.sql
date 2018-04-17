SELECT * FROM pb.comp_inf;

insert into pb.comp_inf (COMP_NMBR, COMP_NM) values (2, "치킨");

delete from pb.comp_inf where COMP_NMBR = "1";

update pb.comp_inf set COMP_NMBR = "3" where COMP_NM = "치킨";
update pb.comp_inf set COMP_NMBR = "2" where COMP_NM = "배그";

set sql_safe_updates=0;
---------------------------------------------------------------------------------
SELECT * FROM pb.mmbr_inf;

insert into pb.mmbr_inf  (MMBR_NMBR, MMBR_ID, MMBR_EMAIL, MMBR_NM, 
							MMBR_PHOTO) 
values (1, "친구1", "rlaehdtn14@daum.net", "�??��?��", " ");

delete from pb.mmbr_inf where MMBR_NMBR = "1";

update pb.mmbr_inf set MMBR_NMBR = 2 where MMBR_ID = "친구1";

set sql_safe_updates=0;
----------------------------------------------------------------------------------
SELECT * FROM pb.univ_inf;

insert into pb.univ_inf  (univ_NMBR, MAJ, GRD) 
values (1, 123, 1);

delete from pb.univ_inf where univ_NMBR = "1";

update pb.univ_inf set univ_NMBR = 2 where MAJ = "123";

set sql_safe_updates=0;
------------------------------------------------------------------------------------
SELECT * FROM pb.fren_inf;

insert into pb.fren_inf  (FREN_NMBR, FREN_NM, FREN_PHN_NMBR, FREN_EMAIL, 
							FREN_ADDR, FREN_PHOTO, MMBR_NMBR, id, id2) 
values (1, "친구1", "0100000000", "rlaehdtn14@naver.com", "RIP", " ", 1, null,null);

delete from pb.fren_inf where FREN_NMBR = "1";

update pb.fren_inf set FREN_NMBR = "2" where FREN_NM = "친구1";

set sql_safe_updates=0;

