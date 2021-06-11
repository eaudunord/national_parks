CREATE TABLE bear_attacks (
    id int PRIMARY KEY,
    name varchar(40) NOT NULL,
    age int,
    date date,
    type varchar(25),
	location varchar(100),
	description varchar,
	bear_type varchar(25)
);

CREATE TABLE parks_visitation (
	id int PRIMARY KEY,
	region VARCHAR (10),
	state VARCHAR (2),
	park_name VARCHAR (50) NOT NULL,
	visitors FLOAT,
	year INT
);

CREATE TABLE "national_parks" (
    "id" int   NOT NULL,
    "park_code" varchar(30)   NOT NULL,
    "park_name" varchar(100)   NOT NULL,
    "state" varchar(30)   NOT NULL,
    "acres" int   NULL,
    "latitude" decimal   NOT NULL,
    "longitude" decimal   NOT NULL,
    CONSTRAINT "pk_national_parks" PRIMARY KEY (
        "id"
     )
);