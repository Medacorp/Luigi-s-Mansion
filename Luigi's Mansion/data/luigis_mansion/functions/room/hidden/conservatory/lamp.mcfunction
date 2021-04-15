execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{conservatory_lamp:1b} positioned 659 107 13 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{conservatory_lamp:1b} positioned 659 107 11 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{conservatory_lamp:1b} positioned 658 107 12 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{conservatory_lamp:1b} positioned 660 107 12 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{conservatory_lamp:1b} positioned 659 106 12 run function luigis_mansion:spawn_entities/item/bill
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{conservatory_lamp:1b} run tag @e[tag=selected] add nothing
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {conservatory_lamp:1b}