execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["rec_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:32,no_hidden_move:1b,disappear_on_vanish:"rec_room_speedy_spirit",loot:{drop_at_0:{name:"rec_room_speedy_spirit"}},spawn:3b}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["rec_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/red_ruby
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["rec_room_speedy_spirit"]} positioned 645 11 -58 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
data modify storage luigis_mansion:data entity set value {room:32,scan_result:{namespace:"luigis_mansion",id:"scan/entity/biff_atlas"}}
execute positioned 644 11 -44 rotated -90 0 run function luigis_mansion:spawn_entities/portrait_ghost/biff_atlas
scoreboard players set #rec_room Wave 1