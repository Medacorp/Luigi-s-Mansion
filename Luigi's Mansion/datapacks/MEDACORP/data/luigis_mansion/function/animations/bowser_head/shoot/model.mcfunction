scoreboard players add @s AnimationProgress 1
execute store result score @s AnimationRotationX run data get entity @e[tag=this_entity,limit=1] data.rotation 10
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
execute if entity @s[scores={AnimationProgress=1..2}] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
execute if entity @s[scores={AnimationProgress=15}] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.open_mouth
execute if entity @s[scores={AnimationProgress=25}] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.default
execute if entity @s[scores={AnimationProgress=15}] run playsound luigis_mansion:entity.bowser.spit hostile @a[tag=same_room] ~ ~ ~ 3
scoreboard players set @s[scores={AnimationProgress=41}] AnimationProgress 1