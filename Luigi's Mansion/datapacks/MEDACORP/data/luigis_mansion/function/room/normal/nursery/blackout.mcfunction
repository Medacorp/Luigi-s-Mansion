data modify storage luigis_mansion:data entity set value {room:10,spawn:2b}
execute positioned 741 20 57 run function luigis_mansion:spawn_entities/ghost/blue_twirler
data modify storage luigis_mansion:data entity set value {room:10,spawn:2b}
execute positioned 740 20 61 run function luigis_mansion:spawn_entities/ghost/gold_ghost
data modify storage luigis_mansion:data entity set value {room:10,spawn:2b}
execute positioned 747 20 63 run function luigis_mansion:spawn_entities/ghost/gold_ghost
data modify storage luigis_mansion:data entity set value {room:10,spawn:2b}
execute positioned 744 20 68 run function luigis_mansion:spawn_entities/ghost/purple_puncher
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["nursery_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:10,no_hidden_move:1b,disappear_on_vanish:"nursery_speedy_spirit",loot:{drop_at_0:{name:"nursery_speedy_spirit"}},spawn:3b}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["nursery_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/bills
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["nursery_speedy_spirit"]} positioned 741 20 67 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #nursery Wave 100