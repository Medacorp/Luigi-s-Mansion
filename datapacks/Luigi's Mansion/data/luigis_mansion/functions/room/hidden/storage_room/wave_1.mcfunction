execute positioned 688 11 81 run function luigis_mansion:spawn_entities/ghost/gold_ghost
execute positioned 688 11 69 run function luigis_mansion:spawn_entities/ghost/gold_ghost
execute positioned 683 11 75 run function luigis_mansion:spawn_entities/ghost/garbage_can_ghost
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["storage_room_speedy_spirit"]} positioned 687 11 83 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 687 11 83 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute positioned 687 11 83 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"storage_room_speedy_spirit"}
scoreboard players set #storage_room Wave 1