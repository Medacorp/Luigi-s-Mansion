execute if predicate luigis_mansion:gold_mouse_chance unless data storage luigis_mansion:data current_state.current_data{money_spawned:["tea_room_random_gold_mouse"]} run function luigis_mansion:entities/gold_mouse/give_money/red_ruby
execute if data storage luigis_mansion:data entity.loot run data modify storage luigis_mansion:data entity.loot.name set value "tea_room_random_gold_mouse"
execute if data storage luigis_mansion:data entity.loot positioned 647 20 -37 run function luigis_mansion:spawn_entities/vacuumable/gold_mouse
scoreboard players set #tea_room Vacuumables 1