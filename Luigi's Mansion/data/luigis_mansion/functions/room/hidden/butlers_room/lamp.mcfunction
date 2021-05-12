execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{butlers_room_lamp:1b} positioned 744 16 -47 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{butlers_room_lamp:1b} positioned 744 16 -49 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{butlers_room_lamp:1b} positioned 743 16 -48 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{butlers_room_lamp:1b} positioned 745 16 -48 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{butlers_room_lamp:1b} positioned 744 15 -48 run function luigis_mansion:spawn_entities/item/bill
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{butlers_room_lamp:1b} run tag @e[tag=selected] add nothing
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {butlers_room_lamp:1b}