scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 100
scoreboard players add @s[scores={AnimationProgress=1..8}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=11..18}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=18..}] AnimationProgress 0