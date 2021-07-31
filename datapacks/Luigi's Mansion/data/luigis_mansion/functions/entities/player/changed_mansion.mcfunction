scoreboard players reset @s ChangedMansion
scoreboard players set @s Health 100
gamemode adventure @s[gamemode=spectator]
execute if data storage luigis_mansion:data current_state.current_data.dead_players[0] run function luigis_mansion:entities/player/load_health
execute if entity @s[tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute unless entity @s[scores={Room=-4..-1}] run teleport @s 790 77 15 45 0