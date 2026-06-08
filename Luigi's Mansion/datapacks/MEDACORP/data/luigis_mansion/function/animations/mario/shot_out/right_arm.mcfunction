scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=13}] ^ ^-0.15 ^
teleport @s[scores={AnimationProgress=14}] ^ ^-0.3 ^
teleport @s[scores={AnimationProgress=15}] ^ ^-0.45 ^
teleport @s[scores={AnimationProgress=16}] ^ ^-0.6 ^
teleport @s[scores={AnimationProgress=17}] ^ ^-0.75 ^
teleport @s[scores={AnimationProgress=18}] ^ ^-0.9 ^
teleport @s[scores={AnimationProgress=19}] ^ ^-1.05 ^
teleport @s[scores={AnimationProgress=20}] ^ ^-1.2 ^
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 900
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players remove @s AnimationRotationX 170
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0