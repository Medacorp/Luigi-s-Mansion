summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
execute store result entity @e[tag=temp,limit=1] Pos[1] double 0.1 run scoreboard players get @s PositionY
scoreboard players operation #temp Time = @s FurnitureContentLeft
scoreboard players operation #temp2 Time = @s FurnitureContentUp
scoreboard players operation #temp3 Time = @s FurnitureContentForward
execute as @e[tag=temp,limit=1] positioned as @s run function luigis_mansion:entities/furniture/spawn/move
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
execute positioned as @e[tag=temp,limit=1] run function luigis_mansion:other/drop_loot
kill @e[tag=temp,limit=1]