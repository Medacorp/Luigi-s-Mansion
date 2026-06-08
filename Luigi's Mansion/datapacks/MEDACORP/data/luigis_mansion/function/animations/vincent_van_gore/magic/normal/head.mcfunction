scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationY 20
scoreboard players add @s[scores={AnimationProgress=11..30}] AnimationRotationY 50
scoreboard players remove @s[scores={AnimationProgress=31..50}] AnimationRotationY 40
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0