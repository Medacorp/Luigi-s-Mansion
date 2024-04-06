scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ~ ~-2.8 ~
teleport @s[scores={AnimationProgress=2}] ~ ~-2.6 ~
teleport @s[scores={AnimationProgress=3}] ~ ~-2.3 ~
teleport @s[scores={AnimationProgress=4}] ~ ~-2.1 ~
teleport @s[scores={AnimationProgress=5}] ~ ~-1.8 ~
teleport @s[scores={AnimationProgress=6}] ~ ~-1.6 ~
teleport @s[scores={AnimationProgress=7}] ~ ~-1.3 ~
teleport @s[scores={AnimationProgress=8}] ~ ~-1.1 ~
teleport @s[scores={AnimationProgress=9}] ~ ~-0.8 ~
teleport @s[scores={AnimationProgress=10}] ~ ~-0.6 ~
teleport @s[scores={AnimationProgress=11}] ~ ~-0.3 ~
teleport @s[scores={AnimationProgress=12}] ~ ~-0.1 ~
teleport @s[scores={AnimationProgress=13}] ~ ~0.2 ~
teleport @s[scores={AnimationProgress=15..16}] ~ ~-0.1 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-20.0f,0.0f,-100.0f]}}
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0