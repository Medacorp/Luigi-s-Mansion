scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..15}] run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=26..40}] run scoreboard players remove @s AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0