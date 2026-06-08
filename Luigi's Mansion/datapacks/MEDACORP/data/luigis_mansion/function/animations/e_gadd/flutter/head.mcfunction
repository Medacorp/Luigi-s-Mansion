scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..4}] ~ ~0.04 ~
teleport @s[scores={AnimationProgress=5..10}] ~ ~0.08 ~
teleport @s[scores={AnimationProgress=11..14}] ~ ~0.04 ~
execute if entity @s[scores={AnimationProgress=1..4}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=5..13}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=14..16}] run scoreboard players add @s AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=16}] AnimationProgress 0