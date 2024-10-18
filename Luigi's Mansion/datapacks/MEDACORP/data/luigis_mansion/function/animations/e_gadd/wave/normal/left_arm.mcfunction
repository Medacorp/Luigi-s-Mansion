scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=3..6}] ~ ~-0.02 ~
teleport @s[scores={AnimationProgress=7..14}] ~ ~-0.04 ~
teleport @s[scores={AnimationProgress=15..18}] ~ ~-0.02 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,-10.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2] 10
execute if entity @s[scores={AnimationProgress=1..6}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=7..12}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=13..18}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=19..24}] store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 2
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0
scoreboard players reset #temp Time