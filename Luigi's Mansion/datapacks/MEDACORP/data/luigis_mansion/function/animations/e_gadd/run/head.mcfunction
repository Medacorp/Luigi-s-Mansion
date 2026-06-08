scoreboard players add @s AnimationProgress 1
teleport @s ^ ^-0.05 ^0.15
execute if entity @s[scores={AnimationProgress=1..2}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=3..4}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=6..7}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=8..9}] run scoreboard players remove @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0