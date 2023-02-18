scoreboard players add @s AnimationProgress 1
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1..2},tag=!no_visual_shake_animation] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=3..6},tag=!no_visual_shake_animation] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=7..10},tag=!no_visual_shake_animation] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=11..14},tag=!no_visual_shake_animation] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=15..16},tag=!no_visual_shake_animation] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 5
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0