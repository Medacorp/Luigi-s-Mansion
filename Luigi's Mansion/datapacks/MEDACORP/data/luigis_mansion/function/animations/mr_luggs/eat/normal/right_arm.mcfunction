scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 100
scoreboard players remove @s[scores={AnimationProgress=11..15}] AnimationRotationX 100
scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationX 100
scoreboard players remove @s[scores={AnimationProgress=11..15}] AnimationRotationY 100
scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationY 100
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0