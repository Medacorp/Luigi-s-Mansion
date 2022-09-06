scoreboard players reset @s ChangedMansion
scoreboard players set @s Health 100
gamemode adventure @s[gamemode=spectator]
execute if data storage luigis_mansion:data current_state.current_data.dead_players[0] run function luigis_mansion:entities/player/load_health
execute as @a unless entity @s[scores={Room=-4..-1}] run function luigis_mansion:room/underground_lab/warp_to