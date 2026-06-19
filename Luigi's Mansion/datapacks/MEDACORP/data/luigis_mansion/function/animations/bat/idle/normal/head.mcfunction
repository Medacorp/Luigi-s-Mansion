scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity] ^ ^0.3 ^
teleport @s[tag=flipped_gravity] ^ ^-0.3 ^
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -1800
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players add @s[scores={AnimationProgress=1..3}] AnimationRotationZ 10
scoreboard players remove @s[scores={AnimationProgress=18..23}] AnimationRotationZ 10
scoreboard players add @s[scores={AnimationProgress=38..40}] AnimationRotationZ 10
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0