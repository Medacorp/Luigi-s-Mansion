scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -200
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -400
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players add @s[scores={AnimationProgress=1..8}] AnimationRotationZ 40
scoreboard players remove @s[scores={AnimationProgress=9..16}] AnimationRotationZ 40
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0