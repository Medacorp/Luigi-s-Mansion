advancement grant @a only luigis_mansion:vanilla/root
advancement grant @a only luigis_mansion:vanilla/unlock_mansion
execute if data storage luigis_mansion:data current_state.high_scores[{data_index:0}] run advancement grant @a only luigis_mansion:vanilla/clear_mansion
#execute if data storage luigis_mansion:data current_state.high_scores[{data_index:0}] run advancement grant @a only luigis_mansion:vanilla/unlock_hidden_mansion
execute if entity @a[advancements={luigis_mansion:vanilla/clear_hidden_mansion=true}] run advancement grant @a only luigis_mansion:vanilla/clear_hidden_mansion
execute if data storage luigis_mansion:data rooms.underground_lab{cleared:1b} run advancement grant @a only luigis_mansion:jukebox/first_key
execute if data storage luigis_mansion:data rooms.underground_lab{cleared:1b} run advancement grant @a only luigis_mansion:jukebox/meet_e_gadd