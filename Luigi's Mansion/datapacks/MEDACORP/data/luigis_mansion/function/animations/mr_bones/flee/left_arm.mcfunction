scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 1600
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -600
execute if entity @s[scores={AnimationProgress=1..3}] run scoreboard players remove @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=4..9}] run scoreboard players add @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=10..12}] run scoreboard players remove @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=1..3}] run scoreboard players add @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=4..9}] run scoreboard players remove @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=10..12}] run scoreboard players add @s AnimationRotationY 50
scoreboard players set @s[scores={AnimationProgress=12..}] AnimationProgress 0