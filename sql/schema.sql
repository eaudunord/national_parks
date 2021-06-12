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
        "park_name"
     )
);

CREATE TABLE "park_trails" (
	"trail_id" int PRIMARY KEY,
	"trail_name" varchar,
	"park_name" varchar(100),
	"city" varchar,
	"state" varchar,
	"country" varchar,
	"popularity" float,
	"length" float,
	"elevation_gain" float,
	"difficulty rating" int,
	"route_type" varchar,
	"visitor_usage" decimal,
	"avg_rating" decimal,
	"num_reviews" int,
	"units" char(1),
	"latitude" decimal,
	"longitude" decimal,
	CONSTRAINT "fk_park_name" FOREIGN KEY("park_name")
	REFERENCES national_parks(park_name)
);

CREATE TABLE "trail_activities" (
	id int PRIMARY KEY,
	"trail_id" int,
	"park_name" varchar(100),
	"activities" varchar,
	CONSTRAINT "fk_park_name" FOREIGN KEY("park_name")
	REFERENCES national_parks(park_name),
	CONSTRAINT "fk_trail_id" FOREIGN KEY("trail_id")
	REFERENCES park_trails(trail_id)
);

CREATE TABLE "trail_features" (
	id int PRIMARY KEY,
	"trail_id" int,
	"park_name" varchar(100),
	"features" varchar,
	CONSTRAINT "fk_park_name" FOREIGN KEY("park_name")
	REFERENCES national_parks(park_name),
	CONSTRAINT "fk_trail_id" FOREIGN KEY("trail_id")
	REFERENCES park_trails(trail_id)
);