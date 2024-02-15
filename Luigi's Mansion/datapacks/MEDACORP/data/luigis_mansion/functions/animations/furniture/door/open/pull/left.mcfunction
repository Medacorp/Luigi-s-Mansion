scoreboard players add @s AnimationProgress 1
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[tag=!forced_animation,scores={AnimationProgress=6..15}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 9
execute if entity @s[tag=!forced_animation,scores={AnimationProgress=26..35}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 9
execute if entity @s[tag=forced_animation,scores={AnimationProgress=6..15}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 9
execute if entity @s[tag=forced_animation,scores={AnimationProgress=26..35}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 9
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=50}] AnimationProgress 0