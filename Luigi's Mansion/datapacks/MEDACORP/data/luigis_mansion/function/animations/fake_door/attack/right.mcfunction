scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -900
execute at @s[scores={AnimationProgress=11..58}] run teleport @s ^ ^ ^0.101
execute if entity @s[scores={AnimationProgress=6..15}] run scoreboard players add @s AnimationRotationY 180
execute if entity @s[scores={AnimationProgress=45..74}] run scoreboard players remove @s AnimationRotationY 60
scoreboard players set @s[scores={AnimationProgress=100}] AnimationProgress 0