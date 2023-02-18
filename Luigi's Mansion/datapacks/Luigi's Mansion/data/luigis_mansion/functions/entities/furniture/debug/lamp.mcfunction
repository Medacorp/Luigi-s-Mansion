summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence"]}
scoreboard players operation #temp2 FurnitureSizeUp = @s FurnitureLampUp
scoreboard players operation #temp2 FurnitureSizeForward = @s FurnitureLampForward

execute as @e[tag=temp,limit=1] positioned as @s run function luigis_mansion:entities/furniture/debug/move_lamp

execute at @e[tag=temp] run function luigis_mansion:entities/furniture/debug/highlight_lamp
kill @e[tag=temp]

scoreboard players reset #temp2 FurnitureSizeUp
scoreboard players reset #temp2 FurnitureSizeForward