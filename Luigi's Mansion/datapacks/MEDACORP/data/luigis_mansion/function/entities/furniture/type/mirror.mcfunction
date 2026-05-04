data modify storage luigis_mansion:data macro set from entity @s data.reflection
execute if entity @s[y_rotation=0] store result score @e[tag=same_room,tag=!no_reflection,type=#luigis_mansion:reflected] MirrorZ run data get storage luigis_mansion:data macro.position[2] 10
execute if entity @s[y_rotation=-180] store result score @e[tag=same_room,tag=!no_reflection,type=#luigis_mansion:reflected] MirrorZ run data get storage luigis_mansion:data macro.position[2] 10
execute if entity @s[y_rotation=-90] store result score @e[tag=same_room,tag=!no_reflection,type=#luigis_mansion:reflected] MirrorX run data get storage luigis_mansion:data macro.position[0] 10
execute if entity @s[y_rotation=90] store result score @e[tag=same_room,tag=!no_reflection,type=#luigis_mansion:reflected] MirrorX run data get storage luigis_mansion:data macro.position[0] 10
#todelete - old mirror reflections
tag @e[tag=same_room,tag=!no_reflection] add mirror_set_by_furniture_entity
#/todelete