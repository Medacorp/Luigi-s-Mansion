scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -900
teleport @s[scores={AnimationProgress=11..42}] ^ ^ ^0.101
scoreboard players add @s[scores={AnimationProgress=6..15}] AnimationRotationY 180
scoreboard players remove @s[scores={AnimationProgress=35..49}] AnimationRotationY 120
scoreboard players set @s[scores={AnimationProgress=100}] AnimationProgress 0