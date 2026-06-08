scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
execute if entity @s[scores={AnimationProgress=1..2}] run scoreboard players add @s AnimationRotationY 300
execute if entity @s[scores={AnimationProgress=4..6}] run scoreboard players remove @s AnimationRotationY 300
execute if entity @s[scores={AnimationProgress=7..10}] run scoreboard players remove @s AnimationRotationX 170
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0