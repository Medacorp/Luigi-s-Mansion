scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=6..10}] ~ ~-0.1 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=11..15}] ~ ~-0.2 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=16..20}] ~ ~-0.3 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=6..10}] ~ ~0.1 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=11..15}] ~ ~0.2 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=16..20}] ~ ~0.3 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -500
scoreboard players remove @s[scores={AnimationProgress=1..20}] AnimationRotationX 60
scoreboard players remove @s[scores={AnimationProgress=1..20}] AnimationRotationZ 90
execute if score #mirrored Selected matches 1 run data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.equipment
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0