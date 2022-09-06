scoreboard players add @s AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..2},tag=!no_visible_shake] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=3..6},tag=!no_visible_shake] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=7..10},tag=!no_visible_shake] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=11..14},tag=!no_visible_shake] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=15..16},tag=!no_visible_shake] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 5
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProg=20}] AnimationProg 0