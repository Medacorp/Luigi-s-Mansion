function luigis_mansion:room/load_mansion_index
scoreboard players reset #temp ActionTime
scoreboard players reset #temp Money
scoreboard players set @a Health 100
gamemode adventure @a[gamemode=spectator]
execute if data storage luigis_mansion:data current_state.current_data.dead_players[-1] as @a run function luigis_mansion:entities/player/load_health
data modify storage luigis_mansion:data current_state.mansion_data set from storage luigis_mansion:data current_state.new_mansion_data
data remove storage luigis_mansion:data current_state.new_mansion_data