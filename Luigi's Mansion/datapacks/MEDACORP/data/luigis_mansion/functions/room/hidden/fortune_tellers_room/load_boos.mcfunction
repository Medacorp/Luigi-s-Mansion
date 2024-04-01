scoreboard players set #temp Room 20
execute positioned 741 11 44 if data storage luigis_mansion:data current_state.current_data.boos[{name:{namespace:"luigis_mansion",id:"booigi"},trap_found:0b}] run function luigis_mansion:entities/hidden_boo/load_in_room/spawn_trap {namespace:"luigis_mansion",id:"booigi"}
execute positioned 741 11 44 run function luigis_mansion:entities/hidden_boo/load_in_room