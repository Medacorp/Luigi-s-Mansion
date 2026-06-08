scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..8}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=9..16}] run scoreboard players remove @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0