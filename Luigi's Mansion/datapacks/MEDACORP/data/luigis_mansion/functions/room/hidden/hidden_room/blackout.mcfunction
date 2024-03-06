data modify storage luigis_mansion:data entity set value {spawn:2b}
execute positioned 742 11 -27 run function luigis_mansion:spawn_entities/ghost/blue_twirler
data modify storage luigis_mansion:data entity set value {spawn:2b}
execute positioned 745 11 -24.0 run function luigis_mansion:spawn_entities/ghost/grabbing_ghost
data modify storage luigis_mansion:data entity set value {spawn:2b}
execute positioned 742 11 -22 run function luigis_mansion:spawn_entities/ghost/blue_twirler
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hidden_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {loot:{name:"hidden_room_speedy_spirit"},tags:["hiding_in_furniture"]}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hidden_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hidden_room_speedy_spirit"]} positioned 744.0 9.6 -18 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #hidden_room Wave 100