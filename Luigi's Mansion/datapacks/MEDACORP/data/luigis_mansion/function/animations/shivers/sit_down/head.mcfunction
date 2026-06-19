scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=6..10}] ~ ~-0.1 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=11..15}] ~ ~-0.2 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=16..20}] ~ ~-0.3 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=6..10}] ~ ~0.1 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=11..15}] ~ ~0.2 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=16..20}] ~ ~0.3 ~
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.default
data modify entity @s[scores={AnimationProgress=11}] item merge from entity @s item.components."minecraft:custom_data".model_data.screaming