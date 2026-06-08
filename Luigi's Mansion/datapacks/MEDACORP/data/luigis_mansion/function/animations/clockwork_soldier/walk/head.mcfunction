scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=2..4}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=6..8}] AnimationRotationX 20
scoreboard players add @s[scores={AnimationProgress=12..14}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=16..18}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0