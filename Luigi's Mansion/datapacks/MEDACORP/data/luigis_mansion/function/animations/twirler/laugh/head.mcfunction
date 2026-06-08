scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1}] AnimationRotationX 20
scoreboard players add @s[scores={AnimationProgress=2..3}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=4..5}] AnimationRotationX 20
scoreboard players add @s[scores={AnimationProgress=6..7}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=8}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=8}] AnimationProgress 0