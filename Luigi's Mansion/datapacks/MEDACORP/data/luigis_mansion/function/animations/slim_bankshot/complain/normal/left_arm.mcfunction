scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=51..60}] run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=51..57}] run scoreboard players add @s AnimationRotationZ 50
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0