scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationZ 40
scoreboard players add @s[scores={AnimationProgress=6..10}] AnimationRotationZ 40
scoreboard players set @s[scores={AnimationProgress=10..}] AnimationProgress 0