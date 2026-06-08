scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..10}] ~ ~-0.3 ~ ~ ~
teleport @s[scores={AnimationProgress=11}] ~ ~-0.25 ~ ~ ~
teleport @s[scores={AnimationProgress=12}] ~ ~-0.2 ~ ~ ~
teleport @s[scores={AnimationProgress=13}] ~ ~-0.15 ~ ~ ~
teleport @s[scores={AnimationProgress=14}] ~ ~-0.1 ~ ~ ~
teleport @s[scores={AnimationProgress=15}] ~ ~-0.05 ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 200
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players remove @s AnimationRotationX 2
execute if entity @s[scores={AnimationProgress=6..15}] run scoreboard players add @s AnimationRotationX 2
execute if entity @s[scores={AnimationProgress=16..20}] run scoreboard players remove @s AnimationRotationX 22
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0