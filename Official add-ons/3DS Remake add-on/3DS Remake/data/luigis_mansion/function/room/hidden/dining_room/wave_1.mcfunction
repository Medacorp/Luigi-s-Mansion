execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["dining_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:26,loot:{drop_at_0:{name:"dining_room_speedy_spirit"}},spawn:3b}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["dining_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["dining_room_speedy_spirit"]} positioned 699 11 -37 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
data modify storage luigis_mansion:data entity set value {room:26}
execute positioned 706 11 -16 run function luigis_mansion:spawn_entities/eternal_banana_peel
data modify storage luigis_mansion:data entity set value {room:26}
execute positioned 707 11 -19 run function luigis_mansion:spawn_entities/eternal_banana_peel
data modify storage luigis_mansion:data entity set value {room:26}
execute positioned 708 11 -40 run function luigis_mansion:spawn_entities/eternal_banana_peel
data modify storage luigis_mansion:data entity set value {room:26,room_search:{non_players:1b,furniture:1b},scan_result:{namespace:"luigis_mansion",id:"scan/entity/mr_luggs"}}
execute positioned 702 11 -28 rotated -90 0 run function luigis_mansion:spawn_entities/portrait_ghost/mr_luggs
data modify storage luigis_mansion:data furniture set value {room:26,searchable:["vacuum"],tags:["mr_luggs_food"]}
execute positioned 704 12 -28 rotated -90 0 run function luigis_mansion:spawn_furniture/food
data modify storage luigis_mansion:data entity set value {room:26,speed:12,paths:[{steps:[{position:[700.5d,11.0d,-40.5d]},{position:[707.5d,11.0d,-39.5d]},{position:[707.5d,11.0d,-26.5d]},{position:[704.5d,11.0d,-27.5d]},{position:[706.5d,11.0d,-29.5d]},{position:[708.5d,11.0d,-25.5d]},{position:[707.5d,11.0d,-16.5d]},{position:[702.5d,11.0d,-14.5d]},{position:[700.5d,11.0d,-16.5d]},{position:[700.5d,11.0d,-40.5d]}]}],no_hidden_move:1b,spawn:4b,tags:["optional_ghost"]}
execute positioned 700 11 -41 run function luigis_mansion:spawn_entities/ghost/waiter
data modify storage luigis_mansion:data entity set value {room:26,paths:[{steps:[{position:[704.5d,11.0d,-14.5d]},{position:[701.5d,11.0d,-18.5d]},{position:[700.5d,11.0d,-22.5d]},{position:[700.5d,11.0d,-29.5d]},{position:[704.5d,11.0d,-27.5d]},{position:[702.5d,11.0d,-29.5d]},{position:[701.5d,11.0d,-32.5d]},{position:[701.5d,11.0d,-37.5d]},{position:[704.5d,11.0d,-39.5d]},{position:[707.5d,11.0d,-38.5d]},{position:[708.5d,11.0d,-17.5d]},{position:[704.5d,11.0d,-14.5d]}]}],no_hidden_move:1b,spawn:4b,tags:["optional_ghost"]}
execute positioned 704 11 -15 run function luigis_mansion:spawn_entities/ghost/waiter
scoreboard players set #dining_room Wave 1