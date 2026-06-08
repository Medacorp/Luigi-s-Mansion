scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=3..7}] ~ ~0.05 ~ ~ ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -150
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -00
execute if entity @s[scores={AnimationProgress=1..5}] run scoreboard players remove @s AnimationRotationX 5
execute if entity @s[scores={AnimationProgress=6..10}] run scoreboard players add @s AnimationRotationX 5
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0