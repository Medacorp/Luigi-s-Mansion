scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=21}] AnimationRotationY -100
execute if entity @s[scores={AnimationProgress=1..}] run scoreboard players remove @s[scores={AnimationProgress=16..20}] AnimationRotationY 20
scoreboard players remove @s[scores={AnimationProgress=21..30}] AnimationRotationZ 2
scoreboard players add @s[scores={AnimationProgress=31..40}] AnimationRotationZ 2
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 20