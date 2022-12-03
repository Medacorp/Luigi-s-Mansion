summon minecraft:marker ~ ~1.4 ~ {Tags:["location","remove_from_existence"]}
scoreboard players operation #temp Time = @s FurnitureForward
scoreboard players operation #temp2 Time = @s FurnitureUp
execute as @e[tag=location,limit=1] positioned as @s run function luigis_mansion:entities/furniture/spawn/move
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
execute positioned as @e[tag=location,limit=1] run function luigis_mansion:blocks/dust
execute if entity @s[scores={MirrorX=-2147483648..}] as @e[tag=location,limit=1] at @s run function luigis_mansion:entities/furniture/spawn/dust/mirror_x
execute if entity @s[scores={MirrorZ=-2147483648..}] as @e[tag=location,limit=1] at @s run function luigis_mansion:entities/furniture/spawn/dust/mirror_z
kill @e[tag=location,limit=1]