execute if predicate luigis_mansion:gold_mouse_chance unless data storage luigis_mansion:data current_state.current_data{money_spawned:["tea_room_random_gold_mouse"]} positioned 647 20 -37 run function luigis_mansion:spawn_entities/vacuumable/gold_mouse
execute positioned 647 20 -37 as @e[tag=gold_mouse,distance=..0.7] run function luigis_mansion:entities/gold_mouse/give_money/red_ruby
execute positioned 647 20 -37 as @e[tag=gold_mouse,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"tea_room_random_gold_mouse"}
scoreboard players set #tea_room Vacuumables 1