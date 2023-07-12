create table customer(
 cust_id serial,
cust_name varchar(30),
constraint pk_cust_id primary key (cust_id)
);

alter table customer add cust_lastname varchar(20);

select * from customer

create table account (
acc_number varchar(13),
cust_id int,
constraint pk_acc_number primary key (acc_number),
constraint fk_cust_id foreign key (cust_id) references customer(cust_id) on delete cascade on update cascade
);

insert into account(acc_number, cust_id) values 
	('1',1),
	('2',1),
	('3',1),
	('4',2);

create table transaction_transfer(
	trf_id varchar(20),
	acc_number varchar(20),
	constraint pk_trf_id primary key (trf_id),
	constraint fk_acc_number foreign key (acc_number) references account(acc_number) on delete cascade on update cascade
);

insert into

create table transaction(
	trs_id varchar(20),
	acc_number varchar(20), 
	trs_date date,
	constraint pk_trs_id primary key (trs_id),
	constraint fk_acc_number foreign key (acc_number) references account(acc_number) on delete cascade on update cascade
);

insert into transaction (trs_id,acc_number,trs_date) values
	('trs2', '1', '2023-07-10') ,
	('trs3', '1', '2023-07-11') ,
	('trs4', '1', '2023-07-10') ,
	('trs5', '2', '2023-07-10') ,
	('trs6', '3', '2023-07-11') ,
	('trs7', '3', '2023-07-12') ,
	('trs8', '4', '2023-07-12') ;
	
	
	
		

insert into customer (cust_name) values 
	('John Michael'),
	('Soffie Anastya');
	
select * from transaction
	
-- Recapitulation of number of accounts owned by every customer.
SELECT CONCAT(customer.cust_name, ' ',customer.cust_lastname) AS cust_fullname, COUNT(account.acc_number) AS number_accounts_owned
FROM customer
JOIN account ON customer.cust_id = account.cust_id
GROUP BY cust_fullname;

-- All transactions created by John Michael sorted by account number and transaction date
SELECT account.acc_number, transaction.trs_date
FROM transaction
JOIN account ON account.acc_number = transaction.acc_number
JOIN customer ON customer.cust_id = account.cust_id
WHERE CONCAT(customer.cust_name, ' ',customer.cust_lastname) = 'John Michael'
ORDER BY account.acc_number ASC, transaction.trs_date DESC;
