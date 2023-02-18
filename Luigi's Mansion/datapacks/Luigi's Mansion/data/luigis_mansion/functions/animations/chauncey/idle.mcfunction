teleport @e[tag=this_model,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{RightArm:[-60.0f,70.0f,0.01f],LeftArm:[-60.0f,-70.0f,0.01f],Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,limit=1] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0] 10
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=6..15}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=16..20}] store result entity @s Pose.Head[0] float 0.1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.RightArm[0] 10
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.RightArm[0] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=6..15}] store result entity @s Pose.RightArm[0] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=16..20}] store result entity @s Pose.RightArm[0] float 0.1 run scoreboard players add #temp Time 5
execute store result score #temp Time run data get entity @s Pose.LeftArm[0] 10
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.LeftArm[0] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=6..15}] store result entity @s Pose.LeftArm[0] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=16..20}] store result entity @s Pose.LeftArm[0] float 0.1 run scoreboard players add #temp Time 5
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0
execute if entity @s[nbt={HandItems:[{tag:{CustomModelData:11}}]}] run tag @s add rattle 
execute if entity @s[nbt={HandItems:[{tag:{CustomModelData:14}}]}] run tag @s add rattle
execute if entity @s[tag=rattle,scores={AnimationProgress=5}] run playsound luigis_mansion:entity.chauncey.quiet_rattle hostile @a[tag=same_room] ~ ~ ~ 1
tag @s remove rattle