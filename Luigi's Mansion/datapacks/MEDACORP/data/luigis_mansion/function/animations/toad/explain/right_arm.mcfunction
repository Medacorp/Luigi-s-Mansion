scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -350
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 400
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players remove @s AnimationRotationX 5
execute if entity @s[scores={AnimationProgress=6..10}] run scoreboard players add @s AnimationRotationX 5
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0