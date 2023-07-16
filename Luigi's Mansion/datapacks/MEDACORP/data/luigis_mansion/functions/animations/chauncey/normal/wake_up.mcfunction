scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..6}] ~ ~0.01 ~
teleport @s[scores={AnimationProgress=11..16}] ~ ~-0.01 ~ 
execute at @s run teleport @e[tag=this_model,limit=1] ~ ~ ~ ~ ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{RightArm:[-130.0f,-10.0f,0.01f],LeftArm:[-130.0f,10.0f,0.01f],Head:[-90.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,limit=1] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=6..15}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=16..20}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 3
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProgress=20..}] run function luigis_mansion:animations/chauncey/bring_home
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0
data modify entity @s[scores={AnimationProgress=1},tag=!big] ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.default
data modify entity @s[scores={AnimationProgress=1},tag=big] ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.big