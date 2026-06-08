scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players add @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=21..30}] run scoreboard players remove @s AnimationRotationZ 20
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0