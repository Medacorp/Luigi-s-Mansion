scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 1800
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=41..60}] run scoreboard players remove @s AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0