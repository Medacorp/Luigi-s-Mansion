scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 900
execute at @s[scores={AnimationProgress=11..58}] run teleport @s ^ ^ ^0.101
scoreboard players remove @s[scores={AnimationProgress=6..15}] AnimationRotationY 180
scoreboard players add @s[scores={AnimationProgress=45..74}] AnimationRotationY 60
scoreboard players set @s[scores={AnimationProgress=100}] AnimationProgress 0