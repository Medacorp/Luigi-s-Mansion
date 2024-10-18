scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=5..13}] ^0.05 ^ ^
teleport @s[scores={AnimationProgress=17..25}] ^-0.05 ^ ^
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=4..5}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=13..14}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=16..17}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=25..26}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 5
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0
scoreboard players reset #temp Time