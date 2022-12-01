summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence"]}
scoreboard players operation #temp2 FurnitureSizeU = @s LampUp
scoreboard players operation #temp2 FurnitureSizeF = @s LampForward

execute as @e[tag=temp,limit=1] positioned as @s run function luigis_mansion:entities/furniture/tick/debug/move_lamp

execute at @e[tag=temp] run function luigis_mansion:entities/furniture/tick/debug/highlight_lamp
kill @e[tag=temp]

scoreboard players reset #temp2 FurnitureSizeU
scoreboard players reset #temp2 FurnitureSizeF