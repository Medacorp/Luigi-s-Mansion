scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1100
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -200
scoreboard players remove @s[scores={AnimationProgress=1..3}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=4..8}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=9..10}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0