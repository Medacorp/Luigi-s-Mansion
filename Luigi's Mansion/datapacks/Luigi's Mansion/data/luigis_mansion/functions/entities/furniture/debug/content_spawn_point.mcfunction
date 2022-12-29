summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence"]}
scoreboard players operation #temp2 FurnitureSizeU = @s FurnitureUp
scoreboard players operation #temp2 FurnitureSizeF = @s FurnitureForward

execute as @e[tag=temp,limit=1] positioned as @s run function luigis_mansion:entities/furniture/debug/move_content_spawn_point

execute at @e[tag=temp] run function luigis_mansion:entities/furniture/debug/highlight_content_spawn_point
kill @e[tag=temp]

scoreboard players reset #temp2 FurnitureSizeU
scoreboard players reset #temp2 FurnitureSizeF