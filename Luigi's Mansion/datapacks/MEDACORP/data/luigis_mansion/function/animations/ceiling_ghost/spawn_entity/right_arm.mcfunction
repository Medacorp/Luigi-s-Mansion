scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1}] AnimationRotationZ 20
scoreboard players remove @s[scores={AnimationProgress=2..3}] AnimationRotationZ 20
scoreboard players add @s[scores={AnimationProgress=4}] AnimationRotationZ 20
scoreboard players set @s[scores={AnimationProgress=4}] AnimationProgress 0