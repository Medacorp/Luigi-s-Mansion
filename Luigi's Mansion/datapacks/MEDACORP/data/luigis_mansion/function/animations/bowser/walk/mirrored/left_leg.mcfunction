scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..8}] run scoreboard players add @s AnimationRotationX 25
execute if entity @s[scores={AnimationProgress=9..24}] run scoreboard players remove @s AnimationRotationX 25
execute if entity @s[scores={AnimationProgress=25..32}] run scoreboard players add @s AnimationRotationX 25
scoreboard players set @s[scores={AnimationProgress=33}] AnimationProgress 0