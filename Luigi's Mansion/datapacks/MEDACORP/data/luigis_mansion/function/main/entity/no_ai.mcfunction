#Needed to make hitbox highlighting show; if it's disabled, nothing is done
scoreboard players operation #temp Room = @s Room
execute unless entity @s[tag=!debug_entity,tag=!debug_furniture] as @e[tag=player,tag=!model_piece,tag=!reflection] run function luigis_mansion:main/get_same_room
execute if entity @s[tag=!debug_entity,tag=!furniture] if score #debug_entities Selected matches 1.. as @e[tag=player,tag=!model_piece,tag=!reflection] run function luigis_mansion:main/get_same_room
execute if entity @s[tag=!debug_furniture,tag=furniture] if score #debug_furniture Selected matches 1.. as @e[tag=player,tag=!model_piece,tag=!reflection] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room