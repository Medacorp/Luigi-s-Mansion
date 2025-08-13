data modify storage luigis_mansion:data entity set value {room:58,spawn:3b}
execute positioned 737.0 2 71.0 run function luigis_mansion:spawn_entities/ghost/empty_marker
data modify storage luigis_mansion:data entity set value {room:58,spawn:3b}
execute positioned 744.0 2 62.0 run function luigis_mansion:spawn_entities/ghost/empty_marker
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["cellar_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:58,no_hidden_move:1b,disappear_on_vanish:"cellar_speedy_spirit",loot:{drop_at_0:{name:"cellar_speedy_spirit"}},spawn:3b}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["cellar_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["cellar_speedy_spirit"]} positioned 738 3 60 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #cellar Wave 1