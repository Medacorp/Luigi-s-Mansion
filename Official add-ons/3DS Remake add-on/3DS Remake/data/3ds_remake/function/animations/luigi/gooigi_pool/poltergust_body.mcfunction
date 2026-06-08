scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationY 40
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=11..20}] AnimationRotationY 40
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationY 40
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=11..20}] AnimationRotationY 40
teleport @s[tag=!flipped_gravity] ^ ^-2 ^
teleport @s[tag=flipped_gravity] ^ ^2 ^
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0