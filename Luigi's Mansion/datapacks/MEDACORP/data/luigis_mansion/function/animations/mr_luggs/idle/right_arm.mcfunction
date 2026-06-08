scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 100
scoreboard players remove @s[scores={AnimationProgress=10..15}] AnimationRotationX 40
scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationX 40
scoreboard players remove @s[scores={AnimationProgress=30..35}] AnimationRotationX 40
scoreboard players add @s[scores={AnimationProgress=36..40}] AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0