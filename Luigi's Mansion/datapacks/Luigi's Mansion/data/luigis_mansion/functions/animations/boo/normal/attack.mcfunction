scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{RightArm:[0.0f,0.0f,90.0f],LeftArm:[0.0f,0.0f,-90.0f],Head:[0.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 18
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProg=1}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.attacking
data modify entity @s[scores={AnimationProg=1}] HandItems[0].id set from entity @s ArmorItems[3].tag.invisible
data modify entity @s[scores={AnimationProg=1}] HandItems[1].id set from entity @s ArmorItems[3].tag.invisible
data modify entity @s[scores={AnimationProg=20}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.default
data modify entity @s[scores={AnimationProg=20}] HandItems[0].id set from entity @s ArmorItems[3].tag.visible
data modify entity @s[scores={AnimationProg=20}] HandItems[1].id set from entity @s ArmorItems[3].tag.visible
scoreboard players set @s[scores={AnimationProg=20}] AnimationProg 0