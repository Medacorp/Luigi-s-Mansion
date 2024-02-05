summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
execute store result entity @e[tag=temp,limit=1] Pos[1] double 0.1 run scoreboard players get @s PositionY
scoreboard players operation #temp2 FurnitureSizeLeft = @s FurnitureContentLeft
scoreboard players operation #temp2 FurnitureSizeUp = @s FurnitureContentUp
scoreboard players operation #temp2 FurnitureSizeForward = @s FurnitureContentForward

execute as @e[tag=temp,limit=1] positioned as @s run function luigis_mansion:old_entities/furniture/debug/move_content_spawn_point

execute at @e[tag=temp,limit=1] run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force @a[tag=same_room]
kill @e[tag=temp,limit=1]

scoreboard players reset #temp2 FurnitureSizeLeft
scoreboard players reset #temp2 FurnitureSizeUp
scoreboard players reset #temp2 FurnitureSizeForward