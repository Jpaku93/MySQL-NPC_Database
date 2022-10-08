create database  GameNPCS;
use GameNPCS;

create table Faction(
	Faction_code varchar(9) not null,
	faction_name varchar(30) not null,
	faction_motto varchar(80) null,
	Primary key (Faction_code)
);

create table Skill(
	Skill_name varchar(30) not null,
	skill_type varchar(60) not null,
	Primary key(Skill_name)
);

create table Region(
	Region_code varchar(9) not null,
	region_name varchar(30) not null,
	region_type varchar(60) not null,
	Primary key(Region_code)
);
create table Location(
	Location_name varchar(30) not null,
    Region_code varchar(9) not null,
	Primary key(Location_name),
    foreign key (Region_code) references Region(Region_code)
);

create table Quest(
	Quest_name varchar(90) not null,
    Location_name varchar(30) not null,
	Primary key(Quest_name),
	foreign key (Location_name) references Location(Location_name)
);

create table NPC_NAME(
    first_name varchar(30) not null,
    last_name varchar(30) not null,
    gender varchar(3) not null,
    Primary key(first_name)
);

create table NPC(
	NPC_id int not null,
    first_name varchar(30) not null,
    Faction varchar(9) null,
    Skill varchar(30) null,
    Quest varchar(180) null,
    Location_name varchar(30) null,
	Region_code varchar(9) null,
    Primary key (NPC_id),
    foreign key (first_name) references NPC_NAME(first_name),
    foreign key (Faction) references Faction(faction_code),
    foreign key (Skill) references Skill(Skill_name),
    foreign key (Quest) references Quest(Quest_name),
    foreign key (Location_name) references Location(Location_name),
    foreign key (Region_code) references Region(Region_code)
);

