scoreboard players add @s AnimationProgress 1
scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationZ 5
scoreboard players add @s[scores={AnimationProgress=11..20}] AnimationRotationZ 5
scoreboard players remove @s[scores={AnimationProgress=21..30}] AnimationRotationZ 5
scoreboard players add @s[scores={AnimationProgress=31..40}] AnimationRotationZ 5
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 20