scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -300
execute if entity @s[scores={AnimationProgress=21..40}] run scoreboard players remove @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=21..40}] run scoreboard players add @s AnimationRotationY 10
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0