execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{cellar_shelf_1:1b} positioned 742 4 -49.75 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{cellar_shelf_1:1b} positioned 742 4 -51 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{cellar_shelf_1:1b} positioned 742 4 -52 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{cellar_shelf_1:1b} positioned 742 4 -53 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{cellar_shelf_1:1b} positioned 742 4 -53.25 run function luigis_mansion:spawn_entities/item/bill
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{cellar_shelf_1:1b} run tag @e[tag=selected] add big_heart
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {cellar_shelf_1:1b}