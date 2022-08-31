summon minecraft:marker ~ ~1.3 ~ {Tags:["location","remove_from_existence"]}
scoreboard players operation #temp Time = @s FurnitureForward
scoreboard players operation #temp2 Time = @s FurnitureUp
execute unless score #temp Time matches 0 as @e[tag=location,limit=1] positioned as @s run function luigis_mansion:entities/furniture/tick/spawn_contents/move_forward
execute unless score #temp2 Time matches 0 as @e[tag=location,limit=1] positioned as @s run function luigis_mansion:entities/furniture/tick/spawn_contents/move_up
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
execute positioned as @e[tag=location,limit=1] run function luigis_mansion:other/drop_loot
kill @e[tag=location,limit=1]