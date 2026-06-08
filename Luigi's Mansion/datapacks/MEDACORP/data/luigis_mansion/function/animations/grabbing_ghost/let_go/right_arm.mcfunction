scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -990
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -200
scoreboard players add @s[scores={AnimationProgress=1..18}] AnimationRotationX 5
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationY 40
scoreboard players remove @s[scores={AnimationProgress=11..20}] AnimationRotationY 20
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0