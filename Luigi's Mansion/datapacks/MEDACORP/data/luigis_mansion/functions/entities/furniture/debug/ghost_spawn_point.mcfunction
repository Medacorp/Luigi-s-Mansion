summon minecraft:marker ~ ~1.4 ~ {Tags:["location","remove_from_existence"]}
scoreboard players operation #temp2 FurnitureSizeLeft = @s FurnitureGhostLeft
scoreboard players operation #temp2 FurnitureSizeUp = @s FurnitureGhostUp
scoreboard players operation #temp2 FurnitureSizeForward = @s FurnitureGhostForward
execute as @e[tag=location,limit=1] positioned as @s run function luigis_mansion:entities/furniture/debug/move_content_spawn_point
scoreboard players reset #temp2 FurnitureSizeLeft
scoreboard players reset #temp2 FurnitureSizeUp
scoreboard players reset #temp2 FurnitureSizeForward
execute positioned as @e[tag=location,limit=1] run particle minecraft:dust 0 1 0 1 ~ ~ ~ 0 0 0 0 1 force @a[tag=same_room]
kill @e[tag=location,limit=1]