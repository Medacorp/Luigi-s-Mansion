scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 200
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=5..10}] run scoreboard players remove @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0