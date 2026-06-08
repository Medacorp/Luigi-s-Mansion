scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -600
execute if entity @s[scores={AnimationProgress=1..40}] run scoreboard players remove @s AnimationRotationX 180
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players remove @s AnimationRotationY 10
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0