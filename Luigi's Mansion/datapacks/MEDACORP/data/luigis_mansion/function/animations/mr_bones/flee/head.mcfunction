scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -300
scoreboard players remove @s[scores={AnimationProgress=1..3}] AnimationRotationX 50
scoreboard players add @s[scores={AnimationProgress=4..9}] AnimationRotationX 50
scoreboard players remove @s[scores={AnimationProgress=10..12}] AnimationRotationX 50
scoreboard players set @s[scores={AnimationProgress=12..}] AnimationProgress 0