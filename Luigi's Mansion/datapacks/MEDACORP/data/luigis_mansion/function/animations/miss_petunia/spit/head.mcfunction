scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..2}] AnimationRotationX 100
scoreboard players add @s[scores={AnimationProgress=4..7}] AnimationRotationX 100
scoreboard players remove @s[scores={AnimationProgress=9..10}] AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0