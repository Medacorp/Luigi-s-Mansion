scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 900
scoreboard players remove @s[scores={AnimationProgress=1..39}] AnimationRotationX 180
scoreboard players remove @s[scores={AnimationProgress=40}] AnimationRotationX 280
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0