scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players remove @s AnimationRotationX 100
teleport @s[scores={AnimationProgress=5..}] ^ ^-0.2 ^
scoreboard players set @s[scores={AnimationProgress=6}] AnimationRotationX -500
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 5