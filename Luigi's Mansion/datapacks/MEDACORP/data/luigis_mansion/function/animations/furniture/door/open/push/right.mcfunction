scoreboard players add @s AnimationProgress 1
execute if entity @s[tag=!forced_animation,scores={AnimationProgress=6..15}] run scoreboard players remove @s AnimationRotationY 90
execute if entity @s[tag=!forced_animation,scores={AnimationProgress=26..35}] run scoreboard players add @s AnimationRotationY 90
execute if entity @s[tag=forced_animation,scores={AnimationProgress=6..15}] run scoreboard players add @s AnimationRotationY 90
execute if entity @s[tag=forced_animation,scores={AnimationProgress=26..35}] run scoreboard players remove @s AnimationRotationY 90
scoreboard players set @s[scores={AnimationProgress=50}] AnimationProgress 0