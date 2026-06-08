scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -100
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players add @s[scores={AnimationProgress=1..3}] AnimationRotationZ 2
scoreboard players remove @s[scores={AnimationProgress=4..6}] AnimationRotationZ 2
scoreboard players set @s[scores={AnimationProgress=8}] AnimationProgress 0