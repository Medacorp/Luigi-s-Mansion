scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..10}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=11..20}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 40
teleport @s[tag=!flipped_gravity] ^ ^-2 ^
teleport @s[tag=flipped_gravity] ^ ^2 ^
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0