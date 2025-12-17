scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ~ ~0.01 ~
teleport @s[scores={AnimationProgress=2}] ~ ~0.02 ~
teleport @s[scores={AnimationProgress=3}] ~ ~0.03 ~
teleport @s[scores={AnimationProgress=4}] ~ ~0.04 ~
teleport @s[scores={AnimationProgress=5}] ~ ~0.05 ~
teleport @s[scores={AnimationProgress=6..10}] ~ ~0.06 ~
teleport @s[scores={AnimationProgress=11}] ~ ~0.05 ~
teleport @s[scores={AnimationProgress=12}] ~ ~0.04 ~
teleport @s[scores={AnimationProgress=13}] ~ ~0.03 ~
teleport @s[scores={AnimationProgress=14}] ~ ~0.02 ~
teleport @s[scores={AnimationProgress=15}] ~ ~0.01 ~
teleport @s[scores={AnimationProgress=21}] ~ ~0.01 ~
teleport @s[scores={AnimationProgress=22}] ~ ~0.02 ~
teleport @s[scores={AnimationProgress=23}] ~ ~0.03 ~
teleport @s[scores={AnimationProgress=24}] ~ ~0.04 ~
teleport @s[scores={AnimationProgress=25}] ~ ~0.05 ~
teleport @s[scores={AnimationProgress=26..30}] ~ ~0.06 ~
teleport @s[scores={AnimationProgress=31}] ~ ~0.05 ~
teleport @s[scores={AnimationProgress=32}] ~ ~0.04 ~
teleport @s[scores={AnimationProgress=33}] ~ ~0.03 ~
teleport @s[scores={AnimationProgress=34}] ~ ~0.02 ~
teleport @s[scores={AnimationProgress=35}] ~ ~0.01 ~
execute at @s run teleport @s[scores={AnimationProgress=26..35}] ^ ^ ^0.01
execute at @s run teleport @s[scores={AnimationProgress=36..40}] ^ ^ ^-0.01
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-130.0f,10.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=6..15}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=16..25}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=26..35}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 7
execute if entity @s[scores={AnimationProgress=36..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 7
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProgress=6..15}] store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=36..40}] store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 2
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=40..}] AnimationProgress 0
execute if score #mirrored Selected matches 1 unless data storage luigis_mansion:data ghost{tags:["big"]} if data storage luigis_mansion:data ghost{tags:["has_equipment"]} run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.equipment
execute if score #mirrored Selected matches 1 if data storage luigis_mansion:data ghost{tags:["big","has_equipment"]} run data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.big_equipment