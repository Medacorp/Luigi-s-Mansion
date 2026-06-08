scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=3..7}] ~ ~0.05 ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -150
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 5
scoreboard players add @s[scores={AnimationProgress=6..10}] AnimationRotationX 5
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0