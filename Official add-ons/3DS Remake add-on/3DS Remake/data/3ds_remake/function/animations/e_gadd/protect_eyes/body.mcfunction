scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=3..6}] ~ ~-0.01 ~
teleport @s[scores={AnimationProgress=7..14}] ~ ~-0.02 ~
teleport @s[scores={AnimationProgress=15..18}] ~ ~-0.01 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0