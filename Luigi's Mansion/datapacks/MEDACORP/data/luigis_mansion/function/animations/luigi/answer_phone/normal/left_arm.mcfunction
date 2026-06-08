scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players remove @s AnimationRotationZ 5
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players add @s AnimationRotationZ 5
execute if entity @s[scores={AnimationProgress=21..30}] run scoreboard players remove @s AnimationRotationZ 5
execute if entity @s[scores={AnimationProgress=31..40}] run scoreboard players add @s AnimationRotationZ 5
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 20