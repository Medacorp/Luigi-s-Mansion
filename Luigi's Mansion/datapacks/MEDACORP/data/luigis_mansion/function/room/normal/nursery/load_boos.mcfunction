scoreboard players set #temp Room 10
execute positioned 744 20 63 if data storage luigis_mansion:data current_state.current_data.boos[{name:{namespace:"luigis_mansion",id:"turboo"},trap_found:0b}] run function luigis_mansion:entities/hidden_boo/load_in_room/spawn_trap {namespace:"luigis_mansion",id:"turboo"}
execute positioned 744 20 63 run function luigis_mansion:entities/hidden_boo/load_in_room