function luigis_mansion:entities/ghost/set_random_path
execute at @s if entity @e[distance=..0.7,tag=!spectator,tag=player,limit=1] run data remove entity @s data.path
execute unless data entity @s data.path run tag @s remove visible
execute unless data entity @s data.path run scoreboard players set @s WaitTime 40
execute if data entity @s data.path run function luigis_mansion:entities/blue_mouse/set_home