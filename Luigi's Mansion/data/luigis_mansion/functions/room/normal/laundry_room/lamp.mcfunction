execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{laundry_room_lamp:1b} positioned 715 16 67 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{laundry_room_lamp:1b} positioned 717 16 67 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{laundry_room_lamp:1b} positioned 716 16 66 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{laundry_room_lamp:1b} positioned 716 16 68 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{laundry_room_lamp:1b} positioned 716 15 67 run function luigis_mansion:spawn_entities/item/bill
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{laundry_room_lamp:1b} run tag @e[tag=selected] add nothing
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {laundry_room_lamp:1b}