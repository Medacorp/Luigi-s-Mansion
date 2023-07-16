summon minecraft:marker ~ ~1.4 ~ {Tags:["location","remove_from_existence"]}
scoreboard players operation #temp2 FurnitureSizeLeft = @s FurnitureElementLeft
scoreboard players operation #temp2 FurnitureSizeUp = @s FurnitureElementUp
scoreboard players operation #temp2 FurnitureSizeForward = @s FurnitureElementForward
execute as @e[tag=location,limit=1] positioned as @s run function luigis_mansion:entities/furniture/debug/move_content_spawn_point
scoreboard players reset #temp2 FurnitureSizeLeft
scoreboard players reset #temp2 FurnitureSizeUp
scoreboard players reset #temp2 FurnitureSizeForward
execute positioned as @e[tag=location,limit=1] run function luigis_mansion:entities/furniture/debug/highlight_elemental_ghost_spawn_point
kill @e[tag=location,limit=1]