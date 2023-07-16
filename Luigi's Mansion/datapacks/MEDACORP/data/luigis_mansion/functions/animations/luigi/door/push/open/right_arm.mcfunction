scoreboard players add @s AnimationProgress 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 12
execute if entity @s[scores={AnimationProgress=21..25}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 12
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=6..15}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 8
execute if entity @s[scores={AnimationProgress=16..25}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 8
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=50..}] AnimationProgress 0