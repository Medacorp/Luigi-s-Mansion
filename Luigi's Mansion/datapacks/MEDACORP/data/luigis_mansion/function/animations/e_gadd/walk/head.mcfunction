scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..4}] AnimationRotationX 5
scoreboard players remove @s[scores={AnimationProgress=5..8}] AnimationRotationX 5
scoreboard players add @s[scores={AnimationProgress=11..14}] AnimationRotationX 5
scoreboard players remove @s[scores={AnimationProgress=15..18}] AnimationRotationX 5
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0