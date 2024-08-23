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
tag @s add no_loot
tag @s[tag=!searchable_by_time,tag=!affected_by_dust,tag=!affected_by_fire,tag=!affected_by_ice,tag=!affected_by_interact,tag=!affected_by_vacuum,tag=!affected_by_water,tag=no_dust,tag=no_loot] add no_ai