execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{hallway_7_lamp_2:1b} positioned 717 14 71 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{hallway_7_lamp_2:1b} positioned 715 14 71 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{hallway_7_lamp_2:1b} positioned 716 14 70 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{hallway_7_lamp_2:1b} positioned 716 14 72 run function luigis_mansion:spawn_entities/item/bill
execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{hallway_7_lamp_2:1b} positioned 716 13 71 run function luigis_mansion:spawn_entities/item/bill
execute if data storage luigis_mansion:data current_state.current_data.money_spawned{hallway_7_lamp_2:1b} run tag @e[tag=selected] add nothing
data modify storage luigis_mansion:data current_state.current_data.money_spawned merge value {hallway_7_lamp_2:1b}