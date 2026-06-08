scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -900
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players add @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=6..15}] run scoreboard players remove @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=16..20}] run scoreboard players add @s AnimationRotationY 50
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0