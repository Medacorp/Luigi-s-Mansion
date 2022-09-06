function luigis_mansion:spawn_entities/portrait_ghost/boolossus/fight
scoreboard players operation #temp Room = @s Room
execute as @e[tag=boolossus,tag=!split,limit=1] run function luigis_mansion:entities/boolossus/get_merge_count
tag @e[tag=boolossus,tag=split,tag=!remove_from_existence] add remove_from_existence
scoreboard players reset #temp Room