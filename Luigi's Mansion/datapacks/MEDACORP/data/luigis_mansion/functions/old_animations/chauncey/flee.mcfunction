teleport @e[tag=this_model,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{RightArm:[-20.0f,0.01f,70.0f],LeftArm:[-20.0f,0.01f,-70.0f],Head:[-10.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProgress=1..8}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=9..16}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProgress=1..8}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=9..16}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..8}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=9..16}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute store result score #temp Time run data get entity @e[tag=this_model,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..8}] store result entity @e[tag=this_model,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=9..16}] store result entity @e[tag=this_model,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0
data modify entity @s[scores={AnimationProgress=4},tag=!big] ArmorItems[3].tag merge value {CustomModelData:12}
data modify entity @s[scores={AnimationProgress=12},tag=!big] ArmorItems[3].tag merge value {CustomModelData:10}
data modify entity @s[scores={AnimationProgress=4},tag=big] ArmorItems[3].tag merge value {CustomModelData:15}
data modify entity @s[scores={AnimationProgress=12},tag=big] ArmorItems[3].tag merge value {CustomModelData:13}