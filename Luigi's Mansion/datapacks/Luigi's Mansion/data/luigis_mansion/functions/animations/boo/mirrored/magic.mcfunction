scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[0.0f,0.0f,90.0f],LeftArm:[0.0f,0.0f,-90.0f],Head:[0.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2] 1
execute if entity @s[scores={AnimationProg=25..44}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProg=45..54}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=55..124}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProg=125..134}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=135..154}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProg=1}] ArmorItems[3].tag.CustomModelData set from entity @s ArmorItems[3].tag.variants.attacking
data modify entity @s[scores={AnimationProg=1}] HandItems[0].id set from entity @s ArmorItems[3].tag.invisible
data modify entity @s[scores={AnimationProg=1}] HandItems[1].id set from entity @s ArmorItems[3].tag.invisible
data modify entity @s[scores={AnimationProg=160}] ArmorItems[3].tag.CustomModelData set from entity @s ArmorItems[3].tag.variants.default
data modify entity @s[scores={AnimationProg=160}] HandItems[0].id set from entity @s ArmorItems[3].tag.visible
data modify entity @s[scores={AnimationProg=160}] HandItems[1].id set from entity @s ArmorItems[3].tag.visible
scoreboard players set @s[scores={AnimationProg=160}] AnimationProg 0