scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..3}] run scoreboard players remove @s AnimationRotationX 200
execute if entity @s[scores={AnimationProgress=4..9}] run scoreboard players add @s AnimationRotationX 200
execute if entity @s[scores={AnimationProgress=10..12}] run scoreboard players remove @s AnimationRotationX 200
scoreboard players set @s[scores={AnimationProgress=12..}] AnimationProgress 0