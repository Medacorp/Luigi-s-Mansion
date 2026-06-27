scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=3}] ~ ~0.008 ~
teleport @s[scores={AnimationProgress=4}] ~ ~0.016 ~
teleport @s[scores={AnimationProgress=5}] ~ ~0.024 ~
teleport @s[scores={AnimationProgress=6}] ~ ~0.032 ~
teleport @s[scores={AnimationProgress=7..14}] ~ ~0.04 ~
teleport @s[scores={AnimationProgress=15}] ~ ~0.032 ~
teleport @s[scores={AnimationProgress=16}] ~ ~0.024 ~
teleport @s[scores={AnimationProgress=17}] ~ ~0.016 ~
teleport @s[scores={AnimationProgress=18}] ~ ~0.008 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 150
scoreboard players remove @s[scores={AnimationProgress=1}] AnimationRotationZ 1800
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationZ 10
scoreboard players add @s[scores={AnimationProgress=11..22}] AnimationRotationZ 10
scoreboard players remove @s[scores={AnimationProgress=23..24}] AnimationRotationZ 10
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0