execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["mirror_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:21,no_hidden_move:1b,disappear_on_vanish:"mirror_room_speedy_spirit",loot:{drop_at_0:{name:"mirror_room_speedy_spirit"}},spawn:3b}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["mirror_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/red_ruby
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["mirror_room_speedy_spirit"]} positioned 740 11 -61 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
data modify storage luigis_mansion:data entity set value {room:21,spawn:2b}
execute positioned 738 11 -48 run function luigis_mansion:spawn_entities/ghost/mirror_ghost
data modify storage luigis_mansion:data entity set value {room:21,spawn:2b}
execute positioned 738 11 -57 run function luigis_mansion:spawn_entities/ghost/mirror_ghost
scoreboard players set #mirror_room Wave 100