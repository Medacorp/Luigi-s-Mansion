execute if entity @s[tag=!in_vacuum] unless score #mirrored Selected matches 1 run scoreboard players add @e[tag=this_wind,limit=1] AnimationRotationZ 10
execute if entity @s[tag=!in_vacuum] if score #mirrored Selected matches 1 run scoreboard players remove @e[tag=this_wind,limit=1] AnimationRotationZ 10
execute if entity @s[tag=in_vacuum] unless score #mirrored Selected matches 1 run scoreboard players remove @e[tag=this_wind,limit=1] AnimationRotationZ 40
execute if entity @s[tag=in_vacuum] if score #mirrored Selected matches 1 run scoreboard players add @e[tag=this_wind,limit=1] AnimationRotationZ 40
data modify storage luigis_mansion:data rotation set value [0.0f,0.0f,0.0f,1.0f]
execute in minecraft:overworld run summon minecraft:marker 0.0 0.0 0.0 {Tags:["temp","remove_from_existence"]}
execute store result entity @e[tag=temp,limit=1] Rotation[0] float -0.05 run scoreboard players get @s AnimationRotationZ
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result storage luigis_mansion:data rotation[3] float 0.001 run data get entity @e[tag=temp,limit=1] Pos[2] 1000
execute as @e[tag=temp,limit=1] at @s positioned 0.001 0.0 0.0 run teleport @s ^ ^ ^-1
execute store result storage luigis_mansion:data rotation[2] float 0.001 run data get entity @e[tag=temp,limit=1] Pos[0] 1000
kill @e[tag=temp]
data modify entity @e[tag=this_wind,limit=1] transformation.left_rotation set from storage luigis_mansion:data rotation
data remove storage luigis_mansion:data rotation