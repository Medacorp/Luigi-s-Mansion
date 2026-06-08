scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1300
execute if entity @s[scores={AnimationProgress=1..8}] run scoreboard players remove @s AnimationRotationX 60
execute if entity @s[scores={AnimationProgress=9..16}] run scoreboard players add @s AnimationRotationX 60
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0