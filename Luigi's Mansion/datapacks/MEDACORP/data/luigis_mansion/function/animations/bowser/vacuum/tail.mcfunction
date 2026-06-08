scoreboard players add @s AnimationProgress 1
teleport @s ^ ^0.133 ^1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -200
execute if entity @s[scores={AnimationProgress=1}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=2}] run scoreboard players add @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=2}] AnimationProgress 0