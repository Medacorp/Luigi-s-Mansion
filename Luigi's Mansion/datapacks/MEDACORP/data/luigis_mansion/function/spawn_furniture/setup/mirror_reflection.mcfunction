data modify storage luigis_mansion:data furniture.mirror_reflection_edit set from storage luigis_mansion:data furniture.mirror_reflection
execute as @e[tag=this_entity,limit=1] unless entity @s[y_rotation=0] unless entity @s[y_rotation=-180] unless entity @s[y_rotation=-90] unless entity @s[y_rotation=90] run data modify storage luigis_mansion:data furniture.mirror_reflection_edit set value 0b
execute as @e[tag=this_entity,limit=1] unless entity @s[x_rotation=0] run data modify storage luigis_mansion:data furniture.mirror_reflection_edit set value 0b
execute store result score #temp Time run data get entity @e[tag=this_entity,limit=1] Pose.Head[0] 10
execute unless score #temp Time matches 0 run data modify storage luigis_mansion:data furniture.mirror_reflection_edit set value 0b
scoreboard players reset #temp Time
execute unless data storage luigis_mansion:data furniture{mirror_reflection_edit:0b} run tag @e[tag=this_entity,limit=1] add reflects_entities
execute if data storage luigis_mansion:data furniture{mirror_reflection_edit:0b} store result score #temp Time run data get entity @e[tag=this_entity,limit=1] ArmorItems[3].components."minecraft:custom_model_data"
execute if data storage luigis_mansion:data furniture{mirror_reflection_edit:0b} store result entity @e[tag=this_entity,limit=1] ArmorItems[3].components."minecraft:custom_model_data" int 1 run scoreboard players remove #temp Time 1
execute if data storage luigis_mansion:data furniture{mirror_reflection_edit:0b} as @e[tag=this_entity,limit=1] if data entity @s ArmorItems[3].components."minecraft:custom_data".mirror store result score #temp Time run data get entity @s ArmorItems[3].components."minecraft:custom_data".mirror.components."minecraft:custom_model_data"
execute if data storage luigis_mansion:data furniture{mirror_reflection_edit:0b} as @e[tag=this_entity,limit=1] if data entity @s ArmorItems[3].components."minecraft:custom_data".mirror store result entity @s ArmorItems[3].components."minecraft:custom_data".mirror.components."minecraft:custom_model_data" int 1 run scoreboard players remove #temp Time 1
execute if data storage luigis_mansion:data furniture{mirror_reflection_edit:0b} run scoreboard players reset #temp Time
data remove storage luigis_mansion:data furniture.mirror_reflection_edit