scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 50
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
execute unless score #mirrored Selected matches 1 run teleport @s[scores={AnimationProgress=45..75}] ^ ^ ^0.175
scoreboard players set @s[scores={AnimationProgress=140}] AnimationProgress 0