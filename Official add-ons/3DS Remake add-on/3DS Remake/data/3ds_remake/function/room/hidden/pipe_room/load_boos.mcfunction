scoreboard players set #temp Room 67
execute positioned 693 2 3 if data storage luigis_mansion:data current_state.current_data.boos[{name:{namespace:"luigis_mansion",id:"booffant"},trap_found:0b}] run function luigis_mansion:entities/hidden_boo/load_in_room/spawn_trap {namespace:"luigis_mansion",id:"booffant"}
execute positioned 693 2 3 run function luigis_mansion:entities/hidden_boo/load_in_room