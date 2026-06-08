scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players add @s AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0