scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -900
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationX 40
scoreboard players remove @s[scores={AnimationProgress=11..20}] AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0