execute positioned 701 11 -58 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 701 11 -71 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 701 11 -64 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 709 11 -71 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 709 11 -61 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute positioned 709 11 -51 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute if predicate luigis_mansion:gold_mouse_chance unless data storage luigis_mansion:data current_state.current_data{money_spawned:["kitchen_gold_mouse"]} positioned 702 11 -75 run function luigis_mansion:spawn_entities/vacuumable/gold_mouse
execute positioned 702 11 -75 as @e[tag=gold_mouse,distance=..0.7] run function luigis_mansion:entities/gold_mouse/give_money/silver_diamond
execute positioned 702 11 -75 as @e[tag=gold_mouse,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"kitchen_gold_mouse"}
scoreboard players set #kitchen Vacuumables 1