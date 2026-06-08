scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=31..40}] run scoreboard players add @s AnimationRotationX 130
execute if entity @s[scores={AnimationProgress=61..70}] run scoreboard players add @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=31..40}] run scoreboard players add @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=61..70}] run scoreboard players remove @s AnimationRotationY 40
scoreboard players set @s[scores={AnimationProgress=80..}] AnimationProgress 0