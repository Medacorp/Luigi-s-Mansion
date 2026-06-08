scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -500
scoreboard players add @s[scores={AnimationProgress=1..30}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=31..60}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=1..30}] AnimationRotationY 10
scoreboard players add @s[scores={AnimationProgress=31..60}] AnimationRotationY 10
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0