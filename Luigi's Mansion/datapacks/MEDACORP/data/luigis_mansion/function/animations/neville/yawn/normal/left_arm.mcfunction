scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -500
execute if entity @s[scores={AnimationProgress=1..30}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=31..60}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=1..30}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=31..60}] run scoreboard players add @s AnimationRotationY 10
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0