scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..3}] AnimationRotationX 200
scoreboard players add @s[scores={AnimationProgress=4..9}] AnimationRotationX 200
scoreboard players remove @s[scores={AnimationProgress=10..12}] AnimationRotationX 200
scoreboard players set @s[scores={AnimationProgress=12..}] AnimationProgress 0