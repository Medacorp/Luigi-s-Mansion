summon minecraft:marker ~ ~1.4 ~ {Tags:["location","remove_from_existence"]}
scoreboard players operation #temp Time = @s FurnitureLightLeft
scoreboard players operation #temp2 Time = @s FurnitureLightUp
scoreboard players operation #temp3 Time = @s FurnitureLightForward
execute as @e[tag=location,limit=1] positioned as @s run function luigis_mansion:entities/furniture/spawn/move
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
execute positioned as @e[tag=location,limit=1] run function luigis_mansion:entities/furniture/spawn/light/level
tag @s add me
execute if entity @s[scores={MirrorX=-2147483648..}] as @e[tag=location,limit=1] at @s run function luigis_mansion:entities/furniture/spawn/light/mirror_x
execute if entity @s[scores={MirrorZ=-2147483648..}] as @e[tag=location,limit=1] at @s run function luigis_mansion:entities/furniture/spawn/light/mirror_z
tag @s remove me
kill @e[tag=location,limit=1]