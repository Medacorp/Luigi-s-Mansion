execute if score #mirrored Selected matches 1 run scoreboard players set #mirrored Selected 2
execute unless score #exterior Ticking matches 1 run function luigis_mansion:room/exterior/load/set_loaded

execute as @a[scores={Room=0}] run function luigis_mansion:room/exterior/tick_per_player

execute if score #mirrored Selected matches 2 run scoreboard players set #mirrored Selected 1