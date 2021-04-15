execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{cellar_shelf_1:1b} positioned 713 95 44.75 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{cellar_shelf_1:1b} positioned 713 95 45 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{cellar_shelf_1:1b} positioned 713 95 46 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{cellar_shelf_1:1b} positioned 713 95 47 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{cellar_shelf_1:1b} positioned 713 95 48.25 run function luigis_mansion:spawn_entities/item/bill
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{cellar_shelf_1:1b} run tag @e[tag=selected] add big_heart
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {cellar_shelf_1:1b}