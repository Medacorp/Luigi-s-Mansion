scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationX 2
scoreboard players remove @s[scores={AnimationProgress=11..30}] AnimationRotationX 2
scoreboard players add @s[scores={AnimationProgress=31..40}] AnimationRotationX 2
data modify storage luigis_mansion:data rotation set value [0.0f,0.0f,0.0f,1.0f]
execute in minecraft:overworld run summon minecraft:marker 0.0 0.0 0.0 {Tags:["temp","remove_from_existence"]}
execute store result entity @e[tag=temp,limit=1] Rotation[0] float 0.05 run scoreboard players get @s AnimationRotationX
execute as @e[tag=temp,limit=1] at @s positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
execute store result storage luigis_mansion:data rotation[3] float 0.001 run data get entity @e[tag=temp,limit=1] Pos[2] 1000
execute as @e[tag=temp,limit=1] at @s positioned 0.001 0.0 0.0 run teleport @s ^ ^ ^-1
execute store result storage luigis_mansion:data rotation[0] float 0.001 run data get entity @e[tag=temp,limit=1] Pos[0] 1000
kill @e[tag=temp]
data modify entity @s transformation.left_rotation set from storage luigis_mansion:data rotation
data remove storage luigis_mansion:data rotation
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0