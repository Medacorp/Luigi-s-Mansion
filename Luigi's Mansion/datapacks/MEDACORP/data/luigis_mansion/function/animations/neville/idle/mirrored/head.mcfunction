scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -200
scoreboard players add @s[scores={AnimationProgress=1..20}] AnimationRotationX 5
scoreboard players remove @s[scores={AnimationProgress=21..60}] AnimationRotationX 5
scoreboard players add @s[scores={AnimationProgress=61..80}] AnimationRotationX 5
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0