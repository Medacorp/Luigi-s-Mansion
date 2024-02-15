scoreboard players add @s AnimationProgress 1
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=23..24}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=26..27}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={AnimationProgress=33..34}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=36..37}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0