scoreboard players set #mansion_type Selected 2
function luigis_beta_mansion:room/original/forceload_chunks
function luigis_beta_mansion:room/original/default_data
scoreboard players set #mansion_data_index Selected 2
function #luigis_mansion:room/reset_variable_to_default
scoreboard players set #changing_max_health Selected 1
scoreboard players set #radar_type Selected 1
scoreboard players set #gbh_clock_increase Selected 10
scoreboard players set #poltergust_500 Selected 1
execute as @a[tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
scoreboard players set @a Health 100
gamemode adventure @a[gamemode=spectator]