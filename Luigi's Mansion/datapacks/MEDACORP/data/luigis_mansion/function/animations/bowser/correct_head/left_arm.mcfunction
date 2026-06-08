scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -70
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationX 50
scoreboard players add @s[scores={AnimationProgress=21..30}] AnimationRotationX 50
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationY 14
scoreboard players remove @s[scores={AnimationProgress=21..30}] AnimationRotationY 14
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0