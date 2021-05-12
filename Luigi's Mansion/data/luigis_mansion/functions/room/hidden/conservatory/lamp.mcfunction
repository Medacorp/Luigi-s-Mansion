execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{conservatory_lamp:1b} positioned 658 16 32 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{conservatory_lamp:1b} positioned 658 16 30 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{conservatory_lamp:1b} positioned 657 16 31 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{conservatory_lamp:1b} positioned 659 16 31 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{conservatory_lamp:1b} positioned 658 15 31 run function luigis_mansion:spawn_entities/item/bill
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{conservatory_lamp:1b} run tag @e[tag=selected] add nothing
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {conservatory_lamp:1b}