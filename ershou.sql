-- 建立用户
CREATE DATABASE db;
-- 切换db数据库
USE db；
-- 修改数据库编码格式
ALTER DATABASE CHARACTER SET utf8;

CREATE TABLE users(
uid INT AUTO_INCREMENT PRIMARY KEY,
uname VARCHAR(50),
accunt VARCHAR(50),
passwd VARCHAR(50)

);

INSERT INTO users(uname,accunt,passwd) VALUES("原","123",'123');

CREATE TABLE all_species(
as_id INT AUTO_INCREMENT PRIMARY KEY,
as_name VARCHAR(50) NOT NULL
);

INSERT INTO all_species(as_name) VALUES ('数码设备');
INSERT INTO all_species(as_name) VALUES ('运动器械');
INSERT INTO all_species(as_name) VALUES ('生活用品');
INSERT INTO all_species(as_name) VALUES ('书籍');

CREATE TABLE specie(
sid INT AUTO_INCREMENT PRIMARY KEY,
gspecie_name VARCHAR(50) NOT NULL,
asid INT,
CONSTRAINT fk_specie_species FOREIGN KEY(asid) REFERENCES all_species(as_id)
);

INSERT INTO specie(gspecie_name,asid) VALUES('手机',1);
INSERT INTO specie(gspecie_name,asid) VALUES('电脑',1);
INSERT INTO specie(gspecie_name,asid) VALUES('摄像机',1);
INSERT INTO specie(gspecie_name,asid) VALUES('体育用品',2);
INSERT INTO specie(gspecie_name,asid) VALUES('运动服饰',2);
INSERT INTO specie(gspecie_name,asid) VALUES('户外装备',2);
INSERT INTO specie(gspecie_name,asid) VALUES('衣服',3);
INSERT INTO specie(gspecie_name,asid) VALUES('洗漱',3);
INSERT INTO specie(gspecie_name,asid) VALUES('体育',4);

CREATE TABLE goods(
gid INT AUTO_INCREMENT PRIMARY KEY,
gname VARCHAR(50) NOT NULL,
gprice FLOAT NOT NULL,
gprice_float FLOAT,
gbuy_time DATE,
gspecies_id INT,
goodsid INT,
picname VARCHAR(100),
CONSTRAINT fk_users_goods FOREIGN KEY(goodsid) REFERENCES users(uid),
CONSTRAINT fk_goods_species FOREIGN KEY(gspecies_id) REFERENCES specie(sid)
);

INSERT INTO goods ( `gname`, `gprice`, `gprice_float`, `gbuy_time`, `gspecies_id`, `goodsid`, `picname`) VALUES('篮球','100','5','2019-10-02','4','1','1571210848902.png');
INSERT INTO `goods` ( `gname`, `gprice`, `gprice_float`, `gbuy_time`, `gspecies_id`, `goodsid`, `picname`) VALUES('足球','200','10','2019-10-02','4','1','1571211265640.png');
INSERT INTO `goods` (`gname`, `gprice`, `gprice_float`, `gbuy_time`, `gspecies_id`, `goodsid`, `picname`) VALUES('iPhone','5000','100','2019-10-01','1','1','1571211281219.png');
INSERT INTO `goods` (`gname`, `gprice`, `gprice_float`, `gbuy_time`, `gspecies_id`, `goodsid`, `picname`) VALUES('联想电脑G510','4500','300','2017-03-01','2','1','1571212369077.png');
INSERT INTO `goods` (`gname`, `gprice`, `gprice_float`, `gbuy_time`, `gspecies_id`, `goodsid`, `picname`) VALUES('哑铃','300','10','2019-10-02','4','1','1571212627501.png');

CREATE TABLE twice(
tuid INT,
tgid INT,
state BOOLEAN
);
INSERT INTO twice VALUES(1,1,TRUE);
SELECT * FROM twice WHERE tuid=1 AND tgid=10;


CREATE VIEW vgoods
AS
SELECT g.*,s.gspecie_name FROM goods g,specie s WHERE	g.gspecies_id=s.sid;

CREATE VIEW vspecie
AS
SELECT s.*,a.as_name FROM all_species a,specie s WHERE s.asid=a.as_id;



SELECT * FROM users;
SELECT * FROM specie;
SELECT * FROM goods;
SELECT * FROM vgoods;
SELECT * FROM all_species;
SELECT * FROM vspecie;

DELETE FROM twice;
DELETE FROM goods;
SELECT uname,accunt,passwd FROM users