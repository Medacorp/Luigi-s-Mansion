data modify storage luigis_mansion:data update_data.dead_players append value {uuid:[I;]}
data modify storage luigis_mansion:data update_data.dead_players[-1].uuid set from storage luigis_mansion:data update_data.old_dead_players[0]
data remove storage luigis_mansion:data update_data.old_dead_players[0]
execute if data storage luigis_mansion:data update_data.old_dead_players[0] run function luigis_mansion:other/upgrade_path/change_data/dead_players