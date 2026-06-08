scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..4}] run scoreboard players add @s AnimationRotationZ 30
execute if entity @s[scores={AnimationProgress=5..8}] run scoreboard players remove @s AnimationRotationZ 30
scoreboard players set @s[scores={AnimationProgress=8}] AnimationProgress 0