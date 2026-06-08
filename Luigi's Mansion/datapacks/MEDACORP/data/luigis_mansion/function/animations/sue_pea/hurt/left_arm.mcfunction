scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 1800
execute if entity @s[scores={AnimationProgress=1..4}] run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=5..8}] run scoreboard players remove @s AnimationRotationY 20
scoreboard players set @s[scores={AnimationProgress=8..}] AnimationProgress 0