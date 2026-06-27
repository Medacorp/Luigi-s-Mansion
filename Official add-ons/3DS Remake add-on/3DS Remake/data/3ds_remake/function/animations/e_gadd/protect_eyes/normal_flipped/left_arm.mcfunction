scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=3..6}] ~ ~0.01 ~
teleport @s[scores={AnimationProgress=7..14}] ~ ~0.02 ~
teleport @s[scores={AnimationProgress=15..18}] ~ ~0.01 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1100
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 150
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -100
scoreboard players remove @s[scores={AnimationProgress=1}] AnimationRotationZ 1800
scoreboard players add @s[scores={AnimationProgress=3..10}] AnimationRotationX 2
scoreboard players remove @s[scores={AnimationProgress=11..18}] AnimationRotationX 2
scoreboard players add @s[scores={AnimationProgress=20..21}] AnimationRotationX 2
scoreboard players remove @s[scores={AnimationProgress=23..24}] AnimationRotationX 2
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0