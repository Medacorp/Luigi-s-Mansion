execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{cellar_shelf_1:1b} positioned 713 95 -28.75 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{cellar_shelf_1:1b} positioned 713 95 -30 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{cellar_shelf_1:1b} positioned 713 95 -31 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{cellar_shelf_1:1b} positioned 713 95 -32 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{cellar_shelf_1:1b} positioned 713 95 -32.25 run function luigis_mansion:spawn_entities/item/bill
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{cellar_shelf_1:1b} run tag @e[tag=selected] add big_heart
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {cellar_shelf_1:1b}