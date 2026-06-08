scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=21}] AnimationRotationY -100
execute if entity @s[scores={AnimationProgress=1..}] run execute if entity @s[scores={AnimationProgress=16..20}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=21..30}] run scoreboard players remove @s AnimationRotationZ 2
execute if entity @s[scores={AnimationProgress=31..40}] run scoreboard players add @s AnimationRotationZ 2
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 20