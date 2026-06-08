scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..4}] ~ ~0.04 ~
teleport @s[scores={AnimationProgress=5..10}] ~ ~0.08 ~
teleport @s[scores={AnimationProgress=11..14}] ~ ~0.04 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 350
execute if entity @s[scores={AnimationProgress=1..7}] run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=8..14}] run scoreboard players remove @s AnimationRotationX 90
scoreboard players set @s[scores={AnimationProgress=16}] AnimationProgress 0