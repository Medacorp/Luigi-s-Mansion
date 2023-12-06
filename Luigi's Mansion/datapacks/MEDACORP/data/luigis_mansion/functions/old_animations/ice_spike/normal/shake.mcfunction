scoreboard players add @s AnimationProgress 1
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=1}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProgress=2..3}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=4}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 4
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=4}] AnimationProgress 0