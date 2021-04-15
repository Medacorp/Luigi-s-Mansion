execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{balcony_2_plant_4:1b} positioned 675 120 -21 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{balcony_2_plant_4:1b} positioned 676 120 -20 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{balcony_2_plant_4:1b} positioned 677 120 -20 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{balcony_2_plant_4:1b} positioned 677 120 -21 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{balcony_2_plant_4:1b} positioned 676 121 -21 run function luigis_mansion:spawn_entities/item/bill
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{balcony_2_plant_4:1b} run tag @e[tag=selected] add nothing
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {balcony_2_plant_4:1b}