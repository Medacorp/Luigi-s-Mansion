execute if entity @s[y_rotation=0] run scoreboard players operation @e[tag=same_room] MirrorZ = @s PositionZ
execute if entity @s[y_rotation=-180] run scoreboard players operation @e[tag=same_room] MirrorZ = @s PositionZ
execute if entity @s[y_rotation=-90] run scoreboard players operation @e[tag=same_room] MirrorX = @s PositionX
execute if entity @s[y_rotation=90] run scoreboard players operation @e[tag=same_room] MirrorX = @s PositionX
# to remove
execute if entity @s[y_rotation=90] run tag @e[tag=same_room] add mirror_set_by_furniture_entity
# //to remove
execute unless entity @s[y_rotation=0] unless entity @s[y_rotation=-180] unless entity @s[y_rotation=-90] unless entity @s[y_rotation=90] run data modify storage luigis_mansion:data furniture set value {mirror_reflection:0b}
execute unless entity @s[y_rotation=0] unless entity @s[y_rotation=-180] unless entity @s[y_rotation=-90] unless entity @s[y_rotation=90] run function luigis_mansion:spawn_furniture/setup/mirror_reflection
execute unless entity @s[y_rotation=0] unless entity @s[y_rotation=-180] unless entity @s[y_rotation=-90] unless entity @s[y_rotation=90] run data remove storage luigis_mansion:data furniture
execute unless entity @s[y_rotation=0] unless entity @s[y_rotation=-180] unless entity @s[y_rotation=-90] unless entity @s[y_rotation=90] run tag @s remove reflects_entities