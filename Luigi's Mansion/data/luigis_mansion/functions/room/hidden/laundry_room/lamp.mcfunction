execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{laundry_room_lamp:1b} positioned 701 107 -32 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{laundry_room_lamp:1b} positioned 703 107 -32 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{laundry_room_lamp:1b} positioned 702 107 -31 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{laundry_room_lamp:1b} positioned 702 107 -33 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{laundry_room_lamp:1b} positioned 702 106 -32 run function luigis_mansion:spawn_entities/item/bill
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{laundry_room_lamp:1b} run tag @e[tag=selected] add nothing
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {laundry_room_lamp:1b}