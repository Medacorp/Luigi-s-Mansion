scoreboard players add @s AnimationProg 1
teleport @s[scores={AnimationProg=1..6}] ~ ~0.01 ~
teleport @s[scores={AnimationProg=11..16}] ~ ~-0.01 ~ 
execute at @s run teleport @e[tag=this_model,limit=1] ~ ~ ~ ~ ~
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-130.0f,-10.0f,0.01f],LeftArm:[-130.0f,10.0f,0.01f],Head:[-90.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,limit=1] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=20..}] run function luigis_mansion:animations/chauncey/bring_home
scoreboard players set @s[scores={AnimationProg=20..}] AnimationProg 0
data modify entity @s[scores={AnimationProg=1},tag=!big] ArmorItems[3].tag merge value {CustomModelData:10}
data modify entity @s[scores={AnimationProg=1},tag=big] ArmorItems[3].tag merge value {CustomModelData:13}