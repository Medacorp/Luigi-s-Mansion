scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -1800
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players remove @s[scores={AnimationProgress=1}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=2..3}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=4}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=4}] AnimationProgress 0