scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=5..13}] ^0.1 ^ ^
teleport @s[scores={AnimationProgress=17..25}] ^-0.1 ^ ^
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
execute if entity @s[scores={AnimationProgress=8..10}] run scoreboard players remove @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=11..13}] run scoreboard players add @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=20..22}] run scoreboard players remove @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=23..25}] run scoreboard players add @s AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0