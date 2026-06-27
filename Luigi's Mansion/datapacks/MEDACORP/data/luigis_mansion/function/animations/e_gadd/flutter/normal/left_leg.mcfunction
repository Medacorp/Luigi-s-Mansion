scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ~ ~0.008 ~
teleport @s[scores={AnimationProgress=2}] ~ ~0.016 ~
teleport @s[scores={AnimationProgress=3}] ~ ~0.024 ~
teleport @s[scores={AnimationProgress=4}] ~ ~0.032 ~
teleport @s[scores={AnimationProgress=5..10}] ~ ~0.04 ~
teleport @s[scores={AnimationProgress=11}] ~ ~0.032 ~
teleport @s[scores={AnimationProgress=12}] ~ ~0.024 ~
teleport @s[scores={AnimationProgress=13}] ~ ~0.016 ~
teleport @s[scores={AnimationProgress=14}] ~ ~0.008 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -150
scoreboard players add @s[scores={AnimationProgress=1..7}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=9..14}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=16}] AnimationProgress 0