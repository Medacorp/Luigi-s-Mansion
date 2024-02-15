scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-10.0f,-20.0f,-25.0f]}}
teleport @s[scores={AnimationProgress=1..2}] ~ ~-0.8 ~
teleport @s[scores={AnimationProgress=3..4}] ~ ~-0.7 ~
teleport @s[scores={AnimationProgress=5..6}] ~ ~-0.6 ~
teleport @s[scores={AnimationProgress=7..8}] ~ ~-0.5 ~
teleport @s[scores={AnimationProgress=9..10}] ~ ~-0.4 ~
teleport @s[scores={AnimationProgress=11..12}] ~ ~-0.3 ~
teleport @s[scores={AnimationProgress=13..14}] ~ ~-0.2 ~
teleport @s[scores={AnimationProgress=15..16}] ~ ~-0.1 ~
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0