data modify storage luigis_mansion:data entity set value {room:58,spawn:3b}
execute positioned 737 2 -55 run function luigis_mansion:spawn_entities/ghost/purple_puncher
data modify storage luigis_mansion:data entity set value {room:58,spawn:3b}
execute positioned 743 2 -47 run function luigis_mansion:spawn_entities/ghost/purple_puncher
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["cellar_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:58,loot:{drop_at_0:{name:"billiards_room_speedy_spirit"}},spawn:3b}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["cellar_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/gold_bars
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["cellar_speedy_spirit"]} positioned 738 3 -45 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #cellar Wave 1