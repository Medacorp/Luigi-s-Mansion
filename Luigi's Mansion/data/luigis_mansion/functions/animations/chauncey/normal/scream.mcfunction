teleport @e[tag=this_chauncey_body,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-60.0f,70.0f,0.01f],LeftArm:[-60.0f,-70.0f,0.01f],Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_chauncey_body,limit=1] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProg=1..3}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProg=8..13}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProg=18..20}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 3
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..3}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=8..13}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=18..20}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=1..3}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=8..13}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=18..20}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 1
scoreboard players set @s[scores={AnimationProg=20..}] AnimationProg 0
data modify entity @s[scores={AnimationProg=3},tag=!fight] ArmorItems[3].tag merge value {CustomModelData:114}
data modify entity @s[scores={AnimationProg=13},tag=!fight] ArmorItems[3].tag merge value {CustomModelData:113}
data modify entity @s[scores={AnimationProg=3},tag=fight] ArmorItems[3].tag merge value {CustomModelData:117}
data modify entity @s[scores={AnimationProg=13},tag=fight] ArmorItems[3].tag merge value {CustomModelData:116}