scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=11..30}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=31..40}] run scoreboard players add @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0