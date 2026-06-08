scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=36..}] ^ ^ ^0.1
execute if entity @s[scores={AnimationProgress=6..10}] run scoreboard players remove @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=31..35}] run scoreboard players add @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=51..55}] run scoreboard players add @s AnimationRotationZ 10
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0