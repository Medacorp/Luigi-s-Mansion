execute in minecraft:overworld run summon minecraft:marker 0.0 0.0 0.0 {Tags:["temp","remove_from_existence"]}
execute store result entity @e[tag=temp,limit=1] Rotation[0] float 1 run scoreboard players get @s FurnitureZProg
execute as @e[tag=temp,limit=1] at @s run teleport @s ^ ^ ^1
execute store result score #temp Time run data get entity @e[tag=temp,limit=1] Pos[2] 10
kill @e[tag=temp]