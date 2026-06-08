scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 1800
scoreboard players add @s[scores={AnimationProgress=1..18}] AnimationRotationX 50
scoreboard players remove @s[scores={AnimationProgress=123..140}] AnimationRotationX 50
scoreboard players set @s[scores={AnimationProgress=140..}] AnimationProgress 0