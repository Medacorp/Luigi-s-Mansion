scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
execute if entity @s[scores={AnimationProgress=1..4}] run scoreboard players add @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=36..40}] run scoreboard players remove @s AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0