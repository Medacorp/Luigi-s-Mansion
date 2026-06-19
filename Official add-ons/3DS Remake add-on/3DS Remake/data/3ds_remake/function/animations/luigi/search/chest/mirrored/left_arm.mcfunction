scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 200
scoreboard players add @s[scores={AnimationProgress=1..3}] AnimationRotationX 40
scoreboard players remove @s[scores={AnimationProgress=4..6}] AnimationRotationX 40
scoreboard players add @s[scores={AnimationProgress=7..9}] AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 0