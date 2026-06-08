scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 200
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players add @s AnimationRotationX 5
execute if entity @s[scores={AnimationProgress=21..60}] run scoreboard players remove @s AnimationRotationX 5
execute if entity @s[scores={AnimationProgress=61..80}] run scoreboard players add @s AnimationRotationX 5
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0