scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..4}] ~ ~0.04 ~
teleport @s[scores={AnimationProgress=5..10}] ~ ~0.08 ~
teleport @s[scores={AnimationProgress=11..14}] ~ ~0.04 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=16}] AnimationProgress 0