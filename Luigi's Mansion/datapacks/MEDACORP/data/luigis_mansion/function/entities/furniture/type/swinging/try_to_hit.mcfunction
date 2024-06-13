execute if entity @s[type=minecraft:player] run function luigis_mansion:entities/furniture/type/swinging/set_player_values

execute if entity @s[scores={EntitySizeWidth=1..}] run function luigis_mansion:entities/furniture/type/swinging/collision_box_check
execute if entity @s[scores={EntitySizeRadius=1..}] run function luigis_mansion:entities/furniture/type/swinging/collision_radius_check

execute if entity @s[type=minecraft:player] run function luigis_mansion:entities/furniture/type/swinging/reset_player_values