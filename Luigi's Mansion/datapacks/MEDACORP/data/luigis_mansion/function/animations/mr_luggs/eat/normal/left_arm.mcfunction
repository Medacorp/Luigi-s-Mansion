scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -100
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players remove @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=6..10}] run scoreboard players add @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players add @s AnimationRotationY 100
execute if entity @s[scores={AnimationProgress=6..10}] run scoreboard players remove @s AnimationRotationY 100
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0