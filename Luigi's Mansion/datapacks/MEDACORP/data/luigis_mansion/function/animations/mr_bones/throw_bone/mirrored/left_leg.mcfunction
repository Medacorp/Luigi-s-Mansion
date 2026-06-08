scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..30}] run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=31..40}] run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=1..30}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=31..40}] run scoreboard players add @s AnimationRotationY 30
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0