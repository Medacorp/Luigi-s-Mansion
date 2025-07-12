#At, not if entity to update execution position for entities moved by other entities
execute at @s[tag=!reflection,tag=!model_piece,tag=!map_entity] run function luigis_mansion:main/entity
execute if entity @s[tag=reflection] run function luigis_mansion:main/reflections
execute if entity @s[tag=model_piece] run function luigis_mansion:main/model_pieces
execute if entity @s[tag=map_entity] run function luigis_mansion:main/map_entity