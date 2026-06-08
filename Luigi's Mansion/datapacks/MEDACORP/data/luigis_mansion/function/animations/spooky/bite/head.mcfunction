scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 900
scoreboard players remove @s[scores={AnimationProgress=1..3}] AnimationRotationX 40
scoreboard players add @s[scores={AnimationProgress=4..9}] AnimationRotationX 40
scoreboard players remove @s[scores={AnimationProgress=10..15}] AnimationRotationX 40
scoreboard players add @s[scores={AnimationProgress=16..18}] AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0