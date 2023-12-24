scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=1}] Pose.Head[2] set value 0.01f
data modify entity @s[scores={AnimationProgress=1},tag=flipped_gravity] Pose.Head[2] set value -180.0f
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1..2}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=3..4}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=4}] AnimationProgress 0