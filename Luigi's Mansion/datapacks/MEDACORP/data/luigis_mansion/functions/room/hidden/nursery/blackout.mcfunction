data modify storage luigis_mansion:data entity set value {room:10,spawn:2b}
execute positioned 741 20 -42 run function luigis_mansion:spawn_entities/ghost/blue_twirler
data modify storage luigis_mansion:data entity set value {room:10,spawn:2b}
execute positioned 740 20 -46 run function luigis_mansion:spawn_entities/ghost/gold_ghost
data modify storage luigis_mansion:data entity set value {room:10,spawn:2b}
execute positioned 747 20 -48 run function luigis_mansion:spawn_entities/ghost/gold_ghost
data modify storage luigis_mansion:data entity set value {room:10,spawn:2b}
execute positioned 744 20 -53 run function luigis_mansion:spawn_entities/ghost/purple_puncher
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["nursery_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:10,loot:{name:"nursery_speedy_spirit"},tags:["hiding_in_furniture"]}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["nursery_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["nursery_speedy_spirit"]} positioned 741 20 -52 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #nursery Wave 100