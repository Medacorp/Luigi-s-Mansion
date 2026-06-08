scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -200
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=6..15}] run scoreboard players add @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=16..20}] run scoreboard players remove @s AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0