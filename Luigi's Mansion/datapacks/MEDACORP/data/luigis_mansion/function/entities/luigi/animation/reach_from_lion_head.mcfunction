scoreboard players add @s AnimationProgress 1
scoreboard players set @s Sound 1
tag @s[scores={AnimationProgress=1}] add reset_rotation
tag @s[scores={AnimationProgress=3}] remove reset_rotation
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0