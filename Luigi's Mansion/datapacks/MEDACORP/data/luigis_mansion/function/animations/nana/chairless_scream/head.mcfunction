scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..2}] run scoreboard players add @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=4..7}] run scoreboard players remove @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=9..10}] run scoreboard players add @s AnimationRotationY 50
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0