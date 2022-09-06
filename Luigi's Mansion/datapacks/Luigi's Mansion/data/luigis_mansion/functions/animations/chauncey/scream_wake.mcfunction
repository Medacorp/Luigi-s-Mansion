scoreboard players add @s AnimationProg 1
teleport @s[scores={AnimationProg=1..6}] ~ ~0.01 ~
teleport @s[scores={AnimationProg=11..16}] ~ ~-0.01 ~ 
teleport @s[scores={AnimationProg=21..26}] ~ ~0.01 ~
teleport @s[scores={AnimationProg=31..36}] ~ ~-0.01 ~
execute at @s run teleport @s[scores={AnimationProg=26..35}] ^ ^ ^0.01
execute at @s run teleport @s[scores={AnimationProg=36..40}] ^ ^ ^-0.01
execute at @s run teleport @e[tag=this_model,limit=1] ~ ~ ~ ~ ~
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-130.0f,-10.0f,0.01f],LeftArm:[-130.0f,10.0f,0.01f],Head:[-90.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,limit=1] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=6..15}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=16..25}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=26..35}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 7
execute if entity @s[scores={AnimationProg=36..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 7
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=6..15}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=16..25}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=26..35}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 7
execute if entity @s[scores={AnimationProg=36..40}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 7
execute store result score #temp Time run data get entity @s Pose.RightArm[1]
execute if entity @s[scores={AnimationProg=6..15}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=36..40}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=6..15}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=16..25}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=26..35}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 7
execute if entity @s[scores={AnimationProg=36..40}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 7
execute store result score #temp Time run data get entity @s Pose.LeftArm[1]
execute if entity @s[scores={AnimationProg=6..15}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=36..40}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players add #temp Time 2
execute store result score #temp Time run data get entity @e[tag=this_model,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=26..35}] store result entity @e[tag=this_model,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProg=36..40}] store result entity @e[tag=this_model,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProg=40..}] run function luigis_mansion:animations/chauncey/bring_home
data modify entity @s[scores={AnimationProg=6},tag=!fight] ArmorItems[3].tag merge value {CustomModelData:12}
data modify entity @s[scores={AnimationProg=20},tag=!fight] ArmorItems[3].tag merge value {CustomModelData:10}
data modify entity @s[scores={AnimationProg=26},tag=!fight] ArmorItems[3].tag merge value {CustomModelData:12}
data modify entity @s[scores={AnimationProg=40},tag=!fight] ArmorItems[3].tag merge value {CustomModelData:10}
data modify entity @s[scores={AnimationProg=6},tag=fight] ArmorItems[3].tag merge value {CustomModelData:15}
data modify entity @s[scores={AnimationProg=20},tag=fight] ArmorItems[3].tag merge value {CustomModelData:13}
data modify entity @s[scores={AnimationProg=26},tag=fight] ArmorItems[3].tag merge value {CustomModelData:15}
data modify entity @s[scores={AnimationProg=40},tag=fight] ArmorItems[3].tag merge value {CustomModelData:13}
scoreboard players set @s[scores={AnimationProg=40..}] AnimationProg 0