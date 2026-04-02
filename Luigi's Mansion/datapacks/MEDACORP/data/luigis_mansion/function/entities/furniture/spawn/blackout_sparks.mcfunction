summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
execute store result entity @e[tag=temp,limit=1] Pos[1] double 0.1 run scoreboard players get @s PositionY
scoreboard players operation #temp Time = @s FurnitureLightLeft
scoreboard players operation #temp2 Time = @s FurnitureLightUp
scoreboard players operation #temp3 Time = @s FurnitureLightForward
execute as @e[tag=temp,limit=1] positioned as @s run function luigis_mansion:entities/furniture/spawn/move
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
tag @s add me
execute positioned as @e[tag=temp,limit=1] run particle minecraft:bubble_pop ~ ~ ~ 0.3 0.3 0.3 0 10 normal @a[tag=same_room]
execute if entity @s[scores={MirrorX=-2147483648..}] as @e[tag=temp,limit=1] at @s run function luigis_mansion:entities/furniture/spawn/blackout_sparks/mirror_x
execute if entity @s[scores={MirrorZ=-2147483648..}] as @e[tag=temp,limit=1] at @s run function luigis_mansion:entities/furniture/spawn/blackout_sparks/mirror_z
tag @s remove me
teleport @s ~ ~ ~ ~ ~
kill @e[tag=temp,limit=1]