scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run scoreboard players remove @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=2..3}] run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=4..5}] run scoreboard players remove @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=6..7}] run scoreboard players add @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=8}] run scoreboard players remove @s AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=8}] AnimationProgress 0