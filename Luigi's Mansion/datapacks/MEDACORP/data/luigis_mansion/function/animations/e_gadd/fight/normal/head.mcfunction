scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=5..13}] ^-0.1 ^ ^
teleport @s[scores={AnimationProgress=17..25}] ^0.1 ^ ^
execute if entity @s[scores={AnimationProgress=8..9}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=10..11}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=20..21}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=23..24}] run scoreboard players remove @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 0