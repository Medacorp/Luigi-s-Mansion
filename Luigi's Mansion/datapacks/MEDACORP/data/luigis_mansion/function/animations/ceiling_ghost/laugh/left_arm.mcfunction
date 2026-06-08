scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..2}] run scoreboard players remove @s AnimationRotationZ 70
execute if entity @s[scores={AnimationProgress=3..6}] run scoreboard players add @s AnimationRotationZ 70
execute if entity @s[scores={AnimationProgress=7..8}] run scoreboard players remove @s AnimationRotationZ 70
scoreboard players set @s[scores={AnimationProgress=8}] AnimationProgress 0