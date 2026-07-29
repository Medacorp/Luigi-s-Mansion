advancement grant @a only luigis_mansion:vanilla/root
advancement grant @a only luigis_mansion:vanilla/unlock_mansion
execute if data storage luigis_mansion:data current_state.luigis_mansion.high_scores[{data_index:0}] run advancement grant @a only luigis_mansion:vanilla/clear_mansion
execute if data storage luigis_mansion:data current_state.3ds_remake.trophy.master{done:1b} run advancement grant @a only luigis_mansion:vanilla/unlock_hidden_mansion
execute if entity @a[advancements={luigis_mansion:vanilla/clear_hidden_mansion=true}] run advancement grant @a only luigis_mansion:vanilla/clear_hidden_mansion
execute if data storage luigis_mansion:data current_state.luigis_mansion.rooms.underground_lab{cleared:1b} run advancement grant @a only luigis_mansion:jukebox/first_key
execute if data storage luigis_mansion:data current_state.luigis_mansion.rooms.underground_lab{cleared:1b} run advancement grant @a only luigis_mansion:jukebox/meet_e_gadd