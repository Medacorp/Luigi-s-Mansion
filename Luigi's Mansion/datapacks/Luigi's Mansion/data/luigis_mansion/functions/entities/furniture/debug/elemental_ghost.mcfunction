summon minecraft:marker ~ ~1.4 ~ {Tags:["location","remove_from_existence"]}
scoreboard players operation #temp2 FurnitureSizeUp = @s FurnitureElementUp
scoreboard players operation #temp2 FurnitureSizeForward = @s FurnitureElementForward
execute as @e[tag=location,limit=1] positioned as @s run function luigis_mansion:entities/furniture/debug/move_content_spawn_point
scoreboard players reset #temp2 FurnitureSizeUp
scoreboard players reset #temp2 FurnitureSizeForward
execute positioned as @e[tag=location,limit=1] if entity @s[tag=fire_elemental_source] run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force @a[tag=same_room]
execute positioned as @e[tag=location,limit=1] if entity @s[tag=water_elemental_source] run particle minecraft:dripping_water ~ ~ ~ 0 0 0 0 1 force @a[tag=same_room]
execute positioned as @e[tag=location,limit=1] if entity @s[tag=ice_elemental_source] run particle minecraft:firework ~ ~ ~ 0 0 0 0 1 force @a[tag=same_room]
kill @e[tag=location,limit=1]