create database db_gameScores;
--------------------------------------------------------------------

create table games (
game_name varchar(30),
other_facts varchar(100));

create table game_sessions(
session_ID int NOT NULL UNIQUE,
game_played varchar(30) foreign key references games(game_name),
round_nmb int,
wild_card_value INT,
Magen int,
Aaron int,
Ammon int);

create table final_score_tracker(
game_ID int foreign key references game_sessions(session_ID),
Magen int,
Aaron int,
Ammon int,
Lindsay int);

----

insert into tbl_072018(wild_card_value,Magen,Aaron,Ammon)
values (3,0,0,0),
(4,9,6,0),
(5,33,13,0),
(6,0,10,6),
(7,0,0,26),
(8,0,22,3),
(9,28,0,15),
(10,39,0,0),
(11, 15, 20, 0),
(12,12,4,0),
(13, 0, 15, 0);


insert into final_score_tracker (Magen, Aaron, Ammon, game_date)
values ((select SUM(Magen) from tbl_072018),(select SUM(Aaron) from tbl_072018), (select SUM(Ammon) from tbl_072018),'2018-07-20');
----------------------------------------------------
select SUM(Magen), SUM(Aaron), SUM(Ammon) from tbl_072018;

select * from tbl_072018;
select * from final_score_tracker;
----------------------------------------------------
drop table tbl_072018;
drop table final_score_tracker;

