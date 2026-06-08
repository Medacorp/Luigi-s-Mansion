scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -400
execute if entity @s[scores={AnimationProgress=1..4}] run scoreboard players remove @s AnimationRotationX 180
execute if entity @s[scores={AnimationProgress=5..8}] run scoreboard players add @s AnimationRotationX 180
scoreboard players set @s[scores={AnimationProgress=8}] AnimationProgress 0