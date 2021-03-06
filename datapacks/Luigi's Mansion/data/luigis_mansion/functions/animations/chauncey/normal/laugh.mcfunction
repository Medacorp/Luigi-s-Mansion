teleport @e[tag=this_model,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-90.0f,0.0f,0.01f],LeftArm:[-90.0f,0.0f,0.01f],Head:[0.0f,0.01f,0.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,limit=1] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=6..15}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.RightArm[1]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=6..15}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players remove #temp Time 4
execute store result score #temp Time run data get entity @s Pose.LeftArm[1]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProg=6..15}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players add #temp Time 4
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=20..}] AnimationProg 0
execute if entity @s[nbt={HandItems:[{tag:{CustomModelData:11}}]}] run tag @s add rattle 
execute if entity @s[nbt={HandItems:[{tag:{CustomModelData:14}}]}] run tag @s add rattle
execute if entity @s[tag=rattle,scores={AnimationProg=1}] run playsound luigis_mansion:entity.chauncey.rattle hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=rattle,scores={AnimationProg=6}] run playsound luigis_mansion:entity.chauncey.rattle hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=rattle,scores={AnimationProg=11}] run playsound luigis_mansion:entity.chauncey.rattle hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=rattle,scores={AnimationProg=16}] run playsound luigis_mansion:entity.chauncey.rattle hostile @a[tag=same_room] ~ ~ ~ 1
tag @s remove rattle