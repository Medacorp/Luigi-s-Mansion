teleport @e[tag=this_shivers_body,limit=1] ~ ~ ~ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[-50.0f,0.01f,0.0f],LeftArm:[-50.0f,0.01f,0.0f],Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_shivers_body,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..20}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 6
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=1..20}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 6
execute store result score #temp Time run data get entity @s Pose.RightArm[2]
execute if entity @s[scores={AnimationProg=1..20}] store result entity @s Pose.RightArm[2] float 1 run scoreboard players remove #temp Time 9
execute store result score #temp Time run data get entity @s Pose.LeftArm[2]
execute if entity @s[scores={AnimationProg=1..20}] store result entity @s Pose.LeftArm[2] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @e[tag=this_shivers_body,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..20}] store result entity @e[tag=this_shivers_body,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
scoreboard players set @s[scores={AnimationProg=20..}] AnimationProg 0
data modify entity @s[scores={AnimationProg=1},tag=visible] ArmorItems[3].tag merge value {CustomModelData:125}
data modify entity @s[scores={AnimationProg=11},tag=visible] ArmorItems[3].tag merge value {CustomModelData:126}