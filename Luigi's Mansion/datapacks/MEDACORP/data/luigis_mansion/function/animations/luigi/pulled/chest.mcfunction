scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players add @s AnimationRotationX 80
teleport @s[scores={AnimationProgress=5..}] ^ ^-0.3 ^0.4
scoreboard players set @s[scores={AnimationProgress=6}] AnimationRotationX 400
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 5