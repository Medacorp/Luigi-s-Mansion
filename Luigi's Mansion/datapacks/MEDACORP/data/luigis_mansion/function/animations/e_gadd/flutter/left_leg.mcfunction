scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..4}] ~ ~0.02 ~
teleport @s[scores={AnimationProgress=5..10}] ~ ~0.04 ~
teleport @s[scores={AnimationProgress=11..14}] ~ ~0.02 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -150
execute if entity @s[scores={AnimationProgress=1..7}] run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=9..14}] run scoreboard players remove @s AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=16}] AnimationProgress 0