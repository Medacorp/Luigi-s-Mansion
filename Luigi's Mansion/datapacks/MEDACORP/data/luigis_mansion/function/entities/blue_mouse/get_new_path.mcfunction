function luigis_mansion:entities/ghost/set_random_path
execute unless data entity @s data.path run return -1
execute at @s if entity @e[distance=..0.7,tag=!spectator,tag=player,limit=1] run data remove entity @s data.path
execute if data entity @s data.path run function luigis_mansion:entities/blue_mouse/set_home
execute unless data entity @s data.path run function luigis_mansion:entities/blue_mouse/get_new_path