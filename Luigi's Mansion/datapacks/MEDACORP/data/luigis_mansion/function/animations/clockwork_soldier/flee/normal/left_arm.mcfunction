scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -200
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 280
scoreboard players add @s[scores={AnimationProgress=6..10}] AnimationRotationX 280
scoreboard players remove @s[scores={AnimationProgress=1..2}] AnimationRotationY 200
scoreboard players add @s[scores={AnimationProgress=4..5}] AnimationRotationY 200
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0