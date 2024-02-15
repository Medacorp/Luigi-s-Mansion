scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[20.0f,0.0f,-30.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={AnimationProgress=7..15}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=26..33}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=1}] run teleport @s ~ ~0.1 ~ ~ ~
execute if entity @s[scores={AnimationProgress=2}] run teleport @s ~ ~0.2 ~ ~ ~
execute if entity @s[scores={AnimationProgress=3}] run teleport @s ~ ~0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=4..15}] run teleport @s ~ ~0.4 ~ ~ ~
execute if entity @s[scores={AnimationProgress=16}] run teleport @s ~ ~0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=17}] run teleport @s ~ ~0.2 ~ ~ ~
execute if entity @s[scores={AnimationProgress=18}] run teleport @s ~ ~0.1 ~ ~ ~
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0