scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
execute if entity @s[scores={AnimationProgress=11..15}] run scoreboard players remove @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=16..25}] run scoreboard players add @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=26..30}] run scoreboard players remove @s AnimationRotationY 30
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0