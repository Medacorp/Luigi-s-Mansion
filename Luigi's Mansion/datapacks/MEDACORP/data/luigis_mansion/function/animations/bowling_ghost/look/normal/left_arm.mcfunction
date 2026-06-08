scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1600
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 500
execute if entity @s[scores={AnimationProgress=1..2}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=3..6}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=7..8}] run scoreboard players add @s AnimationRotationY 10
scoreboard players set @s[scores={AnimationProgress=8}] AnimationProgress 0