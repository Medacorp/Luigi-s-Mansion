scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=1}] ~ ~0.01 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=2}] ~ ~0.02 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=3}] ~ ~0.03 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=4}] ~ ~0.04 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=5}] ~ ~0.05 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=6..10}] ~ ~0.06 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=11}] ~ ~0.05 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=12}] ~ ~0.04 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=13}] ~ ~0.03 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=14}] ~ ~0.02 ~
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=15}] ~ ~0.01 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=1}] ~ ~-0.01 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=2}] ~ ~-0.02 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=3}] ~ ~-0.03 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=4}] ~ ~-0.04 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=5}] ~ ~-0.05 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=6..10}] ~ ~-0.06 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=11}] ~ ~-0.05 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=12}] ~ ~-0.04 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=13}] ~ ~-0.03 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=14}] ~ ~-0.02 ~
teleport @s[tag=flipped_gravity,scores={AnimationProgress=15}] ~ ~-0.01 ~
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1300
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 100
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0
execute if score #mirrored Selected matches 1 unless data storage luigis_mansion:data ghost{tags:["big"]} if data storage luigis_mansion:data ghost{tags:["has_equipment"]} run data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.equipment
execute if score #mirrored Selected matches 1 if data storage luigis_mansion:data ghost{tags:["big","has_equipment"]} run data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.big_equipment