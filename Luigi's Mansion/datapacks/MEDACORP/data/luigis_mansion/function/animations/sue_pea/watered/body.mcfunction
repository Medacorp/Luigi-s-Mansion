scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 1800
scoreboard players add @s[scores={AnimationProgress=1..20}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=41..60}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0