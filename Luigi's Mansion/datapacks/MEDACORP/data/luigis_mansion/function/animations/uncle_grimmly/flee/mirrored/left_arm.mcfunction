teleport @s ^ ^ ^0.4
scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1600
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationX 280
scoreboard players remove @s[scores={AnimationProgress=6..10}] AnimationRotationX 280
scoreboard players remove @s[scores={AnimationProgress=6..7}] AnimationRotationY 200
scoreboard players add @s[scores={AnimationProgress=9..10}] AnimationRotationY 200
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0