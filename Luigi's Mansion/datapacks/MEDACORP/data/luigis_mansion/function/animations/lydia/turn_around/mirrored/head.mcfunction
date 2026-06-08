scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 400
execute if entity @s[scores={AnimationProgress=1..15}] run scoreboard players remove @s AnimationRotationY 120
execute if entity @s[scores={AnimationProgress=26..40}] run scoreboard players add @s AnimationRotationY 120
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0