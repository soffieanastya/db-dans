-- -- STEP 1, create table users

CREATE TABLE users  (
	id_user SERIAL,
	username VARCHAR(50),
	password VARCHAR(255),
	constraint pk_id_user PRIMARY KEY (id_user)
);

select * from users

-- -- STEP 2,insert data

INSERT INTO users(username,password) VALUES
	('soffie','$2b$10$ohx/wibuj/HM21w6yTfolu8U2/KoZLyLvFWsVsfZVBjPOw4SyLGh2'),
	('anastya','$2b$10$Zr7bLsM4PTI9Fcu0fwtfYOtYhKoL4oBze96sjNQRFxmsQs.fvLYgG'),
	('putri','$2b$10$d9dAT24a2oL/i8HmV0i0zOTgQhShzu9lToFHoPW7kM/fLk.98riA2');