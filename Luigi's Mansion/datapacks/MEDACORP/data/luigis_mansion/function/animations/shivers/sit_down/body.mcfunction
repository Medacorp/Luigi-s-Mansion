scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=6..10}] ~ ~-0.1 ~
teleport @s[scores={AnimationProgress=11..15}] ~ ~-0.2 ~
teleport @s[scores={AnimationProgress=16..20}] ~ ~-0.3 ~
scoreboard players remove @s[scores={AnimationProgress=1..20}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0