execute if entity @s[y_rotation=0] run scoreboard players operation @e[tag=same_room] MirrorZ = @s PositionZ
execute if entity @s[y_rotation=-180] run scoreboard players operation @e[tag=same_room] MirrorZ = @s PositionZ
execute if entity @s[y_rotation=-90] run scoreboard players operation @e[tag=same_room] MirrorX = @s PositionX
execute if entity @s[y_rotation=90] run scoreboard players operation @e[tag=same_room] MirrorX = @s PositionX
#todelete - room models
execute if entity @s[y_rotation=0] run scoreboard players remove @e[tag=same_room] MirrorZ 5
execute if entity @s[y_rotation=-180] run scoreboard players add @e[tag=same_room] MirrorZ 5
execute if entity @s[y_rotation=-90] run scoreboard players remove @e[tag=same_room] MirrorX 5
execute if entity @s[y_rotation=90] run scoreboard players add @e[tag=same_room] MirrorX 5
#/todelete
#todelete - old mirror reflections
tag @e[tag=same_room] add mirror_set_by_furniture_entity
#/todelete