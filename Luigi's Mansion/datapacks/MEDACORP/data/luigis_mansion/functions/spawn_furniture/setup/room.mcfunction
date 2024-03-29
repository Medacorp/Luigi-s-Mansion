scoreboard players set @e[tag=this_entity,limit=1] Room 0
scoreboard players operation @e[tag=this_entity,limit=1] Room = @s Room
execute store result score @e[tag=this_entity,limit=1] Room run data get storage luigis_mansion:data furniture.room