scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -100
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=6..15}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0