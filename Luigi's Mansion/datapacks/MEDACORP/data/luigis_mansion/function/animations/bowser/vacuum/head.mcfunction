scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity] ^ ^-4 ^2.667
teleport @s[tag=flipped_gravity] ^ ^4 ^2.667
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.open_mouth
scoreboard players set @s[scores={AnimationProgress=2}] AnimationProgress 0