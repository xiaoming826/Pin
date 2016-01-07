drop table company;
	 create table company(
	 	id int primary key AUTO_INCREMENT,
	 	name varchar(50),
	 	age varchar(50),
	 	tel varchar(50),
	 	companyName varchar(50),
	 	companyAddrs varchar(50),
	 	pwd varchar(50)
	 );
	 
	 insert into company (name,tel,companyName,companyAddrs,pwd) values ("某某","12345678901","某某公司","济南","123");
     
     drop table user;
	 create table user(
	 	id int primary key AUTO_INCREMENT,
	 	name varchar(50),
	 	sex varchar(50),
	 	age varchar(50),
	 	tel varchar(50),
	 	addrs varchar(50),
	 	school varchar(50),
	 	descc varchar(50),
		pwd varchar(50)
	 );
	 insert into user (name,sex,age,tel,addrs,school,descc,pwd) values ("xinxin","女","22","121212112","济南","济南大学","求职一个某某职务","123");
     
     drop table jobinfo;
	create table jobinfo(
		id int primary key AUTO_INCREMENT,
		title varchar(50),
		content varchar(50),
		dateTime varchar(50),
		money varchar(50),
		experience varchar(50),
		cid int 
		);
		
	insert into jobinfo (title,content,dateTime,money,experience,cid) values ("招聘保险业务员","招聘保险业务员","2016年01月06日00:40:20","6000/月","本科",1);