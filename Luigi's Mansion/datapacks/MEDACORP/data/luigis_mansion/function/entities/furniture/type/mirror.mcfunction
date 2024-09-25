execute if entity @s[y_rotation=0] run scoreboard players operation @e[tag=same_room,tag=!no_reflection,type=#luigis_mansion:reflected] MirrorZ = @s PositionZ
execute if entity @s[y_rotation=-180] run scoreboard players operation @e[tag=same_room,tag=!no_reflection,type=#luigis_mansion:reflected] MirrorZ = @s PositionZ
execute if entity @s[y_rotation=-90] run scoreboard players operation @e[tag=same_room,tag=!no_reflection,type=#luigis_mansion:reflected] MirrorX = @s PositionX
execute if entity @s[y_rotation=90] run scoreboard players operation @e[tag=same_room,tag=!no_reflection,type=#luigis_mansion:reflected] MirrorX = @s PositionX
#todelete - room models
execute if entity @s[y_rotation=0] run scoreboard players remove @e[tag=same_room,tag=!no_reflection,type=#luigis_mansion:reflected] MirrorZ 5
execute if entity @s[y_rotation=-180] run scoreboard players add @e[tag=same_room,tag=!no_reflection,type=#luigis_mansion:reflected] MirrorZ 5
execute if entity @s[y_rotation=-90] run scoreboard players remove @e[tag=same_room,tag=!no_reflection,type=#luigis_mansion:reflected] MirrorX 5
execute if entity @s[y_rotation=90] run scoreboard players add @e[tag=same_room,tag=!no_reflection,type=#luigis_mansion:reflected] MirrorX 5
#/todelete
#todelete - old mirror reflections
tag @e[tag=same_room,tag=!no_reflection] add mirror_set_by_furniture_entity
#/todelete