scoreboard players add @s AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 16
execute if entity @s[scores={AnimationProg=6..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 16
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProg=1..2}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 8
execute if entity @s[scores={AnimationProg=4..7}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 8
execute if entity @s[scores={AnimationProg=9..10}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 8
tag @s[scores={AnimationProg=10..}] remove attacking
scoreboard players set @s[scores={AnimationProg=10..}] AnimationProg 0
scoreboard players reset #temp Time