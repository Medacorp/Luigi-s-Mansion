scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 200
execute if entity @s[scores={AnimationProgress=21..40}] run scoreboard players remove @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=21..25}] run scoreboard players add @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=26..35}] run scoreboard players remove @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=36..40}] run scoreboard players add @s AnimationRotationY 40
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0