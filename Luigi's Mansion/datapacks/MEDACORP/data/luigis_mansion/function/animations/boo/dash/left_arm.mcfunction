scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -900
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.attacking
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0
execute store result score @s AnimationRotationY run data get entity @e[tag=this_entity,limit=1] Rotation[1] 10