scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players remove @s AnimationRotationX 360
scoreboard players set @s[scores={AnimationProgress=180..}] AnimationProgress 0