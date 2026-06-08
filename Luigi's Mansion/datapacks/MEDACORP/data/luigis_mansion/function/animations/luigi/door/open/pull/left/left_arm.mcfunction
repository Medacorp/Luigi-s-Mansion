scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players remove @s AnimationRotationX 120
execute if entity @s[scores={AnimationProgress=21..25}] run scoreboard players add @s AnimationRotationX 120
execute if entity @s[scores={AnimationProgress=6..15}] run scoreboard players add @s AnimationRotationY 80
execute if entity @s[scores={AnimationProgress=16..25}] run scoreboard players remove @s AnimationRotationY 80
scoreboard players set @s[scores={AnimationProgress=50..}] AnimationProgress 0