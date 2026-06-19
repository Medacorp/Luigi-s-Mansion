scoreboard players add @s AnimationProgress 1
scoreboard players set @s AnimationRotationZ -900
scoreboard players remove @s[tag=flipped_gravity] AnimationRotationZ 1800
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.frozen
scoreboard players set @s[scores={AnimationProgress=16..}] AnimationProgress 0
execute store result score @s AnimationRotationY run data get entity @e[tag=this_entity,limit=1] Rotation[1] 10