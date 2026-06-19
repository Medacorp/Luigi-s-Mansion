scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 120
scoreboard players add @s[scores={AnimationProgress=6..10}] AnimationRotationX 20
scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationX 100
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationY 140
scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationY 140
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0