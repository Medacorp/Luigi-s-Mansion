function luigis_mansion:spawn_entities/portrait_ghost/boolossus/merged
scoreboard players operation @e[tag=boolossus,tag=!split,limit=1] Room = @s Room
tag @e[tag=boolossus,tag=!split,limit=1] add intro_done
tag @e[tag=boolossus,tag=split,tag=!remove_from_existence] add remove_from_existence