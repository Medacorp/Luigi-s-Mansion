teleport @e[tag=this_model,tag=body,limit=1] ~ ~ ~ ~ ~
teleport @e[tag=this_model,tag=right_arm,limit=1] ^-0.46 ^-0.2 ^ ~ ~
teleport @e[tag=this_model,tag=left_arm,limit=1] ^0.46 ^-0.2 ^ ~ ~
scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=body,limit=1] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=right_arm,limit=1] {Pose:{Head:[-50.0f,0.01f,0.0f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=left_arm,limit=1] {Pose:{Head:[-50.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..20}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 6
execute store result score #temp Time run data get entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..20}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 6
execute store result score #temp Time run data get entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..20}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[2] float 1 run scoreboard players remove #temp Time 9
execute store result score #temp Time run data get entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..20}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[2] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..20}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=20..}] AnimationProg 0
data modify entity @s[scores={AnimationProg=1},tag=visible] ArmorItems[3].tag.CustomModelData set from entity @s ArmorItems[3].tag.variants.screaming
data modify entity @s[scores={AnimationProg=11},tag=visible] ArmorItems[3].tag.CustomModelData set from entity @s ArmorItems[3].tag.variants.default