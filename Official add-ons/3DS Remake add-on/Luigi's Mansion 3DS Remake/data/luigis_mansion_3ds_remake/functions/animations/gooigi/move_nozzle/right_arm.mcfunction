scoreboard players add @s AnimationProg 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 0
execute if entity @s[scores={AnimationProg=2}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 25
execute if entity @s[scores={AnimationProg=3}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 50
execute if entity @s[scores={AnimationProg=4}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 75
execute if entity @s[scores={AnimationProg=5}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 100
execute if entity @s[scores={AnimationProg=6}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 100
execute if entity @s[scores={AnimationProg=7}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 75
execute if entity @s[scores={AnimationProg=8}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 50
execute if entity @s[scores={AnimationProg=9}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 25
execute if entity @s[scores={AnimationProg=10}] store result entity @s Pose.Head[0] float 1 run scoreboard players set #temp Time 0
scoreboard players reset #temp Time
scoreboard players add @s[scores={AnimationProg=10}] AnimationProg 0