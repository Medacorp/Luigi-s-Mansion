scoreboard players set #temp Room 22
execute positioned 716 11 67 if data storage luigis_mansion:data current_state.current_data.boos[{name:{namespace:"luigis_mansion",id:"boogie"},trap_found:0b}] run function luigis_mansion:entities/hidden_boo/load_in_room/spawn_trap {namespace:"luigis_mansion",id:"boogie"}
execute positioned 716 11 67 run function luigis_mansion:entities/hidden_boo/load_in_room