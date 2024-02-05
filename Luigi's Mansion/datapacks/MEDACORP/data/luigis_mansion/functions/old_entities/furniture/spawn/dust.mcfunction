summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
execute store result entity @e[tag=temp,limit=1] Pos[1] double 0.1 run scoreboard players get @s PositionY
scoreboard players operation #temp Time = @s FurnitureDustLeft
scoreboard players operation #temp2 Time = @s FurnitureDustUp
scoreboard players operation #temp3 Time = @s FurnitureDustForward
execute as @e[tag=temp,limit=1] positioned as @s run function luigis_mansion:old_entities/furniture/spawn/move
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
execute positioned as @e[tag=temp,limit=1] run function luigis_mansion:blocks/dust
execute if entity @s[scores={MirrorX=-2147483648..}] as @e[tag=temp,limit=1] at @s run function luigis_mansion:old_entities/furniture/spawn/dust/mirror_x
execute if entity @s[scores={MirrorZ=-2147483648..}] as @e[tag=temp,limit=1] at @s run function luigis_mansion:old_entities/furniture/spawn/dust/mirror_z
kill @e[tag=temp,limit=1]