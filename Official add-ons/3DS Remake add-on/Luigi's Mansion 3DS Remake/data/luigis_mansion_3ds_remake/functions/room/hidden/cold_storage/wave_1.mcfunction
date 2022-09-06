execute positioned 735 7 -1 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 728 7 0 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 730 7 3 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 726 7 2 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 737 7 4 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 729 7 6 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 732 7 9 run function luigis_mansion:spawn_entities/ice_spike
execute positioned 724 2 9 rotated -135 0 run function luigis_mansion:spawn_entities/portrait_ghost/sir_weston
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["cold_storage_speedy_spirit"]} positioned 725 2 -3 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 725 2 -3 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/green_emerald
execute positioned 725 2 -3 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"cold_storage_speedy_spirit"}
scoreboard players set #cold_storage Wave 1