data modify storage luigis_mansion:data entity set value {room:25,spawn:2b}
execute positioned 658 11 -6 run function luigis_mansion:spawn_entities/ghost/gold_ghost
data modify storage luigis_mansion:data entity set value {room:25,spawn:2b}
execute positioned 655 11 -11 run function luigis_mansion:spawn_entities/ghost/purple_puncher
data modify storage luigis_mansion:data entity set value {room:25,spawn:2b}
execute positioned 658 11 -15 run function luigis_mansion:spawn_entities/ghost/gold_ghost
data modify storage luigis_mansion:data entity set value {room:25,spawn:2b}
execute positioned 661 11 -21 run function luigis_mansion:spawn_entities/ghost/gold_ghost
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["conservatory_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:25,loot:{name:"conservatory_speedy_spirit"},spawn:3b}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["conservatory_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/red_ruby
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["conservatory_speedy_spirit"]} positioned 660 11 -24 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #conservatory Wave 100