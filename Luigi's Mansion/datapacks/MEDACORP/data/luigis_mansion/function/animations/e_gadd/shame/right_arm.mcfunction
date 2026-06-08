scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 125
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 50
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationX 2
scoreboard players remove @s[scores={AnimationProgress=11..22}] AnimationRotationX 2
scoreboard players add @s[scores={AnimationProgress=23..24}] AnimationRotationX 2
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0