data modify storage luigis_mansion:data entity set value {room:16}
execute positioned 653 11 18 run function luigis_mansion:spawn_entities/ghost/red_grabbing_ghost
data modify storage luigis_mansion:data entity set value {room:16}
execute positioned 656 11 18 run function luigis_mansion:spawn_entities/ghost/red_grabbing_ghost
data modify storage luigis_mansion:data entity set value {room:16}
execute positioned 656 11 24 run function luigis_mansion:spawn_entities/ghost/red_grabbing_ghost
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["bathroom_1_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:16,no_hidden_move:1b,disappear_on_vanish:"bathroom_1_speedy_spirit",loot:{drop_at_0:{name:"bathroom_1_speedy_spirit"}},spawn:3b}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["bathroom_1_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/gold_bars
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["bathroom_1_speedy_spirit"]} positioned 651 11 18 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #bathroom_1 Wave 1