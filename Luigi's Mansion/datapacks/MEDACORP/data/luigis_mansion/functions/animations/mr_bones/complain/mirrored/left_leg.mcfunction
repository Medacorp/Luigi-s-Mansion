scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-20.0f,0.0f,100.0f]}}
execute if entity @s[scores={AnimationProgress=1}] run teleport @s ~ ~0.1 ~ ~ ~
execute if entity @s[scores={AnimationProgress=2}] run teleport @s ~ ~0.2 ~ ~ ~
execute if entity @s[scores={AnimationProgress=3}] run teleport @s ~ ~0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=4..15}] run teleport @s ~ ~0.4 ~ ~ ~
execute if entity @s[scores={AnimationProgress=16}] run teleport @s ~ ~0.3 ~ ~ ~
execute if entity @s[scores={AnimationProgress=17}] run teleport @s ~ ~0.2 ~ ~ ~
execute if entity @s[scores={AnimationProgress=18}] run teleport @s ~ ~0.1 ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0