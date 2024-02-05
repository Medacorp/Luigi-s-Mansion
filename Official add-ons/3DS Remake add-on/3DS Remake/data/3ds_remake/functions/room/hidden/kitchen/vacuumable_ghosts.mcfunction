execute if predicate luigis_mansion:gold_mouse_chance unless data storage luigis_mansion:data current_state.current_data{money_spawned:["kitchen_gold_mouse"]} run function luigis_mansion:old_entities/gold_mouse/give_money/green_emerald
execute if data storage luigis_mansion:data entity.loot run data modify storage luigis_mansion:data entity.loot.name set value "kitchen_gold_mouse"
execute if data storage luigis_mansion:data entity.loot positioned 702 11 90 run function luigis_mansion:spawn_entities/vacuumable/gold_mouse
scoreboard players set #kitchen Vacuumables 1