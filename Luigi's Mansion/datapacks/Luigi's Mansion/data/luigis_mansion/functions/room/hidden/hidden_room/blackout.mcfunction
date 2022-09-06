execute positioned 742 11 -27 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/blue_twirler
execute positioned 745 11 -24.0 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/grabbing_ghost
execute positioned 742 11 -22 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/blue_twirler
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hidden_room_speedy_spirit"]} positioned 744 11 -18 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/speedy_spirit
execute positioned 744 11 -18 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute positioned 744 11 -18 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"hidden_room_speedy_spirit"}
scoreboard players set #hidden_room Wave 100