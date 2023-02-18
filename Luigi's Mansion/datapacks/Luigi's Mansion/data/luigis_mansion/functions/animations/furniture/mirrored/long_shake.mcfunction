scoreboard players add @s AnimationProgress 1
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1..4},tag=!no_visual_shake_animation] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=5..12},tag=!no_visual_shake_animation] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=13..16},tag=!no_visual_shake_animation] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=16}] AnimationProgress 0