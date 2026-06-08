scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=41..}] ~ ~-0.99 ~
execute if entity @s[scores={AnimationProgress=1..4}] run scoreboard players add @s AnimationRotationX 200
execute if entity @s[scores={AnimationProgress=60}] run scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0