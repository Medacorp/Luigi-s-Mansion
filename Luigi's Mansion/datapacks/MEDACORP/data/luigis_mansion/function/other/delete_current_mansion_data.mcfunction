function luigis_mansion:reset_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
data modify storage luigis_mansion:data current_state.current_data set value {nothing_loaded:1b}
scoreboard players set @a Health 100
gamemode adventure @a[gamemode=spectator]