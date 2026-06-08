scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -150
execute if entity @s[scores={AnimationProgress=1..2}] run scoreboard players remove @s AnimationRotationX 80
execute if entity @s[scores={AnimationProgress=4..7}] run scoreboard players add @s AnimationRotationX 80
execute if entity @s[scores={AnimationProgress=9..10}] run scoreboard players remove @s AnimationRotationX 80
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0