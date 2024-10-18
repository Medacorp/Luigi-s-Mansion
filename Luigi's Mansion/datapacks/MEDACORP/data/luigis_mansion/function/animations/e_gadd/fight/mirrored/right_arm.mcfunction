scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=5..13}] ^0.1 ^ ^
teleport @s[scores={AnimationProgress=17..25}] ^-0.1 ^ ^
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-40.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=5..7}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=8..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 10
execute if entity @s[scores={AnimationProgress=17..19}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
execute if entity @s[scores={AnimationProgress=20..22}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 10
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0
scoreboard players reset #temp Time