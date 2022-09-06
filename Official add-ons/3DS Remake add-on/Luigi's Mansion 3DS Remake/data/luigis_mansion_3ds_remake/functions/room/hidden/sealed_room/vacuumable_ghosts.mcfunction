execute if predicate luigis_mansion:gold_mouse_chance unless data storage luigis_mansion:data current_state.current_data{money_spawned:["sealed_room_gold_mouse"]} positioned 695 20 -67 run function luigis_mansion:spawn_entities/vacuumable/gold_mouse
execute positioned 695 20 -67 as @e[tag=gold_mouse,distance=..0.7] run function luigis_mansion:entities/gold_mouse/give_money/bills
execute positioned 695 20 -67 as @e[tag=gold_mouse,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"sealed_room_gold_mouse"}
scoreboard players set #sealed_room Vacuumables 1