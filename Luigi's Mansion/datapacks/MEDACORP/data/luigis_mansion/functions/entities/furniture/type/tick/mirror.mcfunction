execute if entity @s[y_rotation=0] run scoreboard players operation @e[tag=same_room] MirrorZ = @s PositionZ
execute if entity @s[y_rotation=-180] run scoreboard players operation @e[tag=same_room] MirrorZ = @s PositionZ
execute if entity @s[y_rotation=-90] run scoreboard players operation @e[tag=same_room] MirrorX = @s PositionX
execute if entity @s[y_rotation=90] run scoreboard players operation @e[tag=same_room] MirrorX = @s PositionX
# to remove
# when rooms get models
execute if entity @s[y_rotation=0] run scoreboard players remove @e[tag=same_room] MirrorZ 5
execute if entity @s[y_rotation=-180] run scoreboard players add @e[tag=same_room] MirrorZ 5
execute if entity @s[y_rotation=-90] run scoreboard players remove @e[tag=same_room] MirrorX 5
execute if entity @s[y_rotation=90] run scoreboard players add @e[tag=same_room] MirrorX 5
# when last mirror is replaced
execute if entity @s[y_rotation=0] run tag @e[tag=same_room] add mirror_set_by_furniture_entity
execute if entity @s[y_rotation=-180] run tag @e[tag=same_room] add mirror_set_by_furniture_entity
execute if entity @s[y_rotation=-90] run tag @e[tag=same_room] add mirror_set_by_furniture_entity
execute if entity @s[y_rotation=90] run tag @e[tag=same_room] add mirror_set_by_furniture_entity
# //to remove