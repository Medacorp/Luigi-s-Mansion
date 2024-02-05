execute positioned 734 29 63 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 734 29 65 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 744 29 53 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 744 29 57 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 734 29 55 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 734 29 53 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 744 29 63 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 744 29 66 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 744 29 69 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["safari_room_gold_mouse"]} run function luigis_mansion:old_entities/gold_mouse/give_money/silver_diamond
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["safari_room_gold_mouse"]} run data modify storage luigis_mansion:data entity.loot.name set value "safari_room_gold_mouse"
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["safari_room_gold_mouse"]} positioned 739 29 70 run function luigis_mansion:spawn_entities/vacuumable/gold_mouse
scoreboard players set #safari_room Vacuumables 1