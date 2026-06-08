execute in minecraft:overworld run summon minecraft:marker 0.0 0.0 0.0 {Tags:["temp","remove_from_existence"]}
execute store result entity @e[tag=temp,limit=1] Rotation[0] float 0.05 run scoreboard players get @s AnimationRotationZ
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result score @s AnimationRotationCosZ run data get entity @e[tag=temp,limit=1] Pos[2] 1000
execute as @e[tag=temp,limit=1] at @s positioned 0.001 0.0 0.0 run teleport @s ^ ^ ^-1
execute store result score @s AnimationRotationSinZ run data get entity @e[tag=temp,limit=1] Pos[0] 1000
kill @e[tag=temp]