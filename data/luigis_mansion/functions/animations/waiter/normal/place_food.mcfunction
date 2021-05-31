scoreboard players add @s AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.RightArm[0]
execute if entity @s[scores={AnimationProg=1..3}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players add #temp Time 25
execute if entity @s[scores={AnimationProg=4..6}] store result entity @s Pose.RightArm[0] float 1 run scoreboard players remove #temp Time 25
execute store result score #temp Time run data get entity @s Pose.LeftArm[0]
execute if entity @s[scores={AnimationProg=3..5}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players add #temp Time 25
execute if entity @s[scores={AnimationProg=6..8}] store result entity @s Pose.LeftArm[0] float 1 run scoreboard players remove #temp Time 25
scoreboard players reset #temp Time
data modify entity @s[scores={AnimationProg=3}] HandItems[0].tag.CustomModelData set value 51
data modify entity @s[scores={AnimationProg=5}] HandItems[1].tag.CustomModelData set value 51
tag @s[scores={AnimationProg=10}] remove placing_food
scoreboard players set @s[scores={AnimationProg=10}] AnimationProg 0