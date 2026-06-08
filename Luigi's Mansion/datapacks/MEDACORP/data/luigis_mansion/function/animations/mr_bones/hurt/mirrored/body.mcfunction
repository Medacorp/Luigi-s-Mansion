scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..3}] AnimationRotationZ 20
scoreboard players remove @s[scores={AnimationProgress=4..9}] AnimationRotationZ 20
scoreboard players add @s[scores={AnimationProgress=10..12}] AnimationRotationZ 20
scoreboard players set @s[scores={AnimationProgress=9}] AnimationProgress 0