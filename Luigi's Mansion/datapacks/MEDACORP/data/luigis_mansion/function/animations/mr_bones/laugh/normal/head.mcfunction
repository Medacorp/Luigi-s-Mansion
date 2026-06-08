scoreboard players add @s AnimationProgress 1
teleport @s ~ ~-0.6 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 1400
execute if entity @s[scores={AnimationProgress=1..3}] run scoreboard players remove @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=4..9}] run scoreboard players add @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=10..12}] run scoreboard players remove @s AnimationRotationX 50
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0