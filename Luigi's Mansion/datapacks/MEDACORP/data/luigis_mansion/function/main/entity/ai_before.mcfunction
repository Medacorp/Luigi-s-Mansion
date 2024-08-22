scoreboard players operation #temp Room = @s Room
execute if entity @s[tag=!same_room_players_only] as @e[tag=!furniture,tag=!player,tag=!model_piece,tag=!reflection] run function luigis_mansion:main/get_same_room
execute if entity @s[tag=!same_room_select_furniture] as @e[tag=furniture,tag=!model_piece,tag=!reflection] run function luigis_mansion:main/get_same_room
execute as @e[tag=player,tag=!model_piece,tag=!reflection] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room

execute unless entity @s[tag=!in_vacuum,tag=!in_dust,tag=!in_fire,tag=!in_water,tag=!in_ice,tag=hit_by_set] run function luigis_mansion:main/entity/find_hitters