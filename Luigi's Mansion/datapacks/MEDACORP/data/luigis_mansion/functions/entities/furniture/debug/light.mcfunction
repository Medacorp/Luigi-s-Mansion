summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence"]}
scoreboard players operation #temp2 FurnitureSizeLeft = @s FurnitureLightLeft
scoreboard players operation #temp2 FurnitureSizeUp = @s FurnitureLightUp
scoreboard players operation #temp2 FurnitureSizeForward = @s FurnitureLightForward

execute as @e[tag=temp,limit=1] positioned as @s run function luigis_mansion:entities/furniture/debug/move_content_spawn_point

execute at @e[tag=temp,limit=1] run function luigis_mansion:entities/furniture/debug/highlight_light
kill @e[tag=temp,limit=1]

scoreboard players reset #temp2 FurnitureSizeLeft
scoreboard players reset #temp2 FurnitureSizeUp
scoreboard players reset #temp2 FurnitureSizeForward