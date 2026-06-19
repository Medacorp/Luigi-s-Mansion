scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 300
scoreboard players add @s[scores={AnimationProgress=1..8}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=9..16}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0