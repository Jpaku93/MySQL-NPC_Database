use GameNPCS;

select * from NPC;

select * from Skill;

select * from NPC_NAME where gender = "F";

select first_name, Faction from NPC where Faction = "ROG" order by first_name asc;

select Quest, first_name from NPC where Location_name = "Arcane Capital";

select Quest, first_name from NPC where Faction = "WAR" and Region_code = "ARC";

select Quest_name from Quest where Location_name = "Arcane Capital";

select Quest_name from Quest where Location_name = "Warriors HQ";

select Quest_name from Quest where Location_name = "Arena Pits";

select Quest_name from Quest where Location_name = "The Void";

select Quest_name from Quest where Location_name = "Poor Quarter";


alter table Faction add Favourite_skill varchar(30) null;
alter table Faction add constraint fk_Favourite_skill FOREIGN KEY (Favourite_skill) references Skill(Skill_name);
UPDATE Faction
SET Favourite_skill = 'Fire Ball'
where Faction_code = "MAG";
UPDATE Faction
SET Favourite_skill = 'Steal'
where Faction_code = "ROG";
UPDATE Faction
SET Favourite_skill = 'Lunging Strike'
where Faction_code = "WAR";
select faction_name, Favourite_skill from Faction;

alter table NPC_NAME
modify column gender char(9);

SELECT first_name, last_name, IF(gender='F','Female', 'Male')  AS gender from NPC_NAME;



