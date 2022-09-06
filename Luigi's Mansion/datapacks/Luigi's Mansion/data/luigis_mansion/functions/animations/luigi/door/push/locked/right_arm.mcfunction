scoreboard players add @s AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time -60
execute if entity @s[scores={AnimationProg=40}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 0
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..4}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=5..8}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProg=11..14}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=15..18}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 4
scoreboard players reset #temp Time
execute at @s run teleport @s[scores={AnimationProg=23}] ^ ^ ^0.1
execute at @s run teleport @s[scores={AnimationProg=24..25}] ^ ^ ^0.2
execute at @s run teleport @s[scores={AnimationProg=26}] ^ ^ ^0.1
execute at @s run teleport @s[scores={AnimationProg=33}] ^ ^ ^0.1
execute at @s run teleport @s[scores={AnimationProg=34..35}] ^ ^ ^0.2
execute at @s run teleport @s[scores={AnimationProg=36}] ^ ^ ^0.1
scoreboard players set @s[scores={AnimationProg=40..}] AnimationProg 0