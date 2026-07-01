data modify storage luigis_mansion:data furniture.mirror_reflection_edit set from storage luigis_mansion:data furniture.mirror_reflection
execute as @e[tag=this_entity,limit=1] unless entity @s[y_rotation=0] unless entity @s[y_rotation=-180] unless entity @s[y_rotation=-90] unless entity @s[y_rotation=90] run data modify storage luigis_mansion:data furniture.mirror_reflection_edit set value 0b
execute as @e[tag=this_entity,limit=1] unless entity @s[x_rotation=0] run data modify storage luigis_mansion:data furniture.mirror_reflection_edit set value 0b
execute store result score #furniture Time run data get entity @e[tag=this_entity,limit=1] Rotation[0] 10
execute unless score #furniture Time matches 0 run data modify storage luigis_mansion:data furniture.mirror_reflection_edit set value 0b
scoreboard players reset #furniture Time
execute unless data storage luigis_mansion:data furniture{mirror_reflection_edit:0b} run tag @e[tag=this_entity,limit=1] add reflects_entities
execute unless data storage luigis_mansion:data furniture{mirror_reflection_edit:0b} as @e[tag=this_entity,limit=1] run data modify entity @s item merge from entity @s item.components."minecraft:custom_data".model_data.reflects
#todelete - room models: builting 0.5 offset
$execute positioned ~ ~1.43875 ~ positioned ^ ^ ^$(mirror_surface) run summon minecraft:marker ^ ^ ^-0.5 {Tags:["reflection_position","dead"]}
data modify entity @e[tag=this_entity,limit=1] data.reflection.position set from entity @e[tag=reflection_position,limit=1] Pos
execute as @e[tag=this_entity,limit=1] run data modify entity @s data.reflection.rotation set from entity @s Rotation
kill @e[tag=reflection_position,limit=1]
data remove storage luigis_mansion:data furniture.mirror_reflection_edit