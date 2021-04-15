teleport @e[tag=this_shivers_body,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-70.0f,40.0f,0.01f],LeftArm:[-70.0f,-40.0f,0.01f],Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_shivers_body,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[1]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=6..15}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.RightArm[1] float 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get entity @s Pose.LeftArm[1]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=6..15}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.LeftArm[1] float 1 run scoreboard players add #temp Time 1
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProg=6..15}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProg=16..20}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 3
scoreboard players set @s[scores={AnimationProg=20..}] AnimationProg 0
data modify entity @s[scores={AnimationProg=1},tag=visible] ArmorItems[3].tag merge value {CustomModelData:126}