scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=240..249}] run scoreboard players remove @s AnimationRotationY 5
scoreboard players set @s[scores={AnimationProgress=260}] AnimationProgress 0