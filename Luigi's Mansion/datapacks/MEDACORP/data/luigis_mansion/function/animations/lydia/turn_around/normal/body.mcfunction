scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -200
scoreboard players add @s[scores={AnimationProgress=1..15}] AnimationRotationY 120
scoreboard players remove @s[scores={AnimationProgress=26..40}] AnimationRotationY 120
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0