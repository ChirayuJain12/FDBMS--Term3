create database chirayumusic;
use chirayumusic;

create table song(
 song_id varchar(4) PRIMARY KEY,
 song_title varchar(50),
 duration varchar(8),
 song_year YEAR,
 album_id varchar(4),
 FOREIGN KEY (album_id) REFERENCES album(album_id),
 movie_id varchar(4),
 FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
 genre_id varchar (4),
 FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);

insert into song values ('13','Alone','00:03:30', '2016');
insert into song values ('10','American Idiot','00:02:23', '2004');
insert into song values ('17','Bad guy','00:03:23', '2019');
insert into song values ('16','Complicated','00:02:30', '2017');
insert into song values ('09','Headlights','00:04:30', '2013');

create table singer
(
 singer_id varchar(4) PRIMARY KEY,
 song_id varchar(4),
 FOREIGN KEY (song_id) REFERENCES song(song_id),
 singer_name varchar(30),
 singer_gender ENUM('M','F'),
 singer_rating ENUM('5','6','7','8','9'),
 album_id varchar(4),
 FOREIGN KEY (album_id) REFERENCES album(album_id)
);

insert into singer values ('1101','13','Diljit Dosanjh','M', '8');
insert into singer values ('1102','10','Karan Aujla','M', '6');
insert into singer values ('1103','17','Chirayu Jain','M', '7');
insert into singer values ('1104','16','Kalua','F', '8');
insert into singer values ('1105','09','Abhiram','M', '9');

create table album 
(
 album_id varchar(4) PRIMARY KEY,
 album_name varchar(30),
 album_release_date DATE,
 album_year YEAR,
 movie_id varchar(4),
 FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

insert into album values ('901','Loky','2020-12-20','2012','13','1101');
insert into album values ('903','Red','2012-05-21','2012','10','1102');
insert into album values ('903','Yellow','2014-06-12','2012','17','1103');

create table genre
(
 genre_id varchar (4) PRIMARY KEY,
 genre_name varchar(30)
);

insert into genre values ('8071', 'Sad','901');
insert into genre values ('8072', 'Rock','902');
insert into genre values ('8073', 'Pop','903');

create table movie
(
 movie_id varchar(4) PRIMARY KEY,
 movie_name varchar(30),
 movie_year YEAR,
 singer_id varchar(4)
);

insert into movie values ('201','abc', '2012','1101');
insert into movie values ('202','cdf', '2013','1102');
insert into movie values ('203','ghe', '2010','1103');

select * from song;
select * from singer;
select * from movie;
select * from album;
select * from genre;