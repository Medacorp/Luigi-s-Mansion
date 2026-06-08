scoreboard players add @s AnimationProgress 1
teleport @s ^ ^-0.16 ^0.2
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players remove @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=6..15}] run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=16..20}] run scoreboard players remove @s AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0