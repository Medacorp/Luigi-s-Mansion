scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1..2}] ^ ^-0.01 ^-0.2
teleport @s[scores={AnimationProgress=3..6}] ^ ^-0.01 ^-0.2
teleport @s[scores={AnimationProgress=7..14}] ^ ^-0.02 ^-0.2
teleport @s[scores={AnimationProgress=15..18}] ^ ^-0.01 ^-0.2
teleport @s[scores={AnimationProgress=19..24}] ^ ^-0.01 ^-0.2
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -500
execute if entity @s[scores={AnimationProgress=3..10}] run scoreboard players add @s AnimationRotationX 2
execute if entity @s[scores={AnimationProgress=11..18}] run scoreboard players remove @s AnimationRotationX 2
execute if entity @s[scores={AnimationProgress=20..21}] run scoreboard players add @s AnimationRotationX 2
execute if entity @s[scores={AnimationProgress=23..24}] run scoreboard players remove @s AnimationRotationX 2
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0