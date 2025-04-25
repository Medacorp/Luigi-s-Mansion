data modify storage luigis_mansion:data entity set value {room:26}
execute positioned 706 11 31 run function luigis_mansion:spawn_entities/eternal_banana_peel
data modify storage luigis_mansion:data entity set value {room:26}
execute positioned 707 11 34 run function luigis_mansion:spawn_entities/eternal_banana_peel
data modify storage luigis_mansion:data entity set value {room:26}
execute positioned 708 11 55 run function luigis_mansion:spawn_entities/eternal_banana_peel
data modify storage luigis_mansion:data entity set value {room:26,room_search:{non_players:1b,furniture:1b},scan_result:{namespace:"luigis_mansion",id:"scan/entity/mr_luggs"}}
execute positioned 702 11 43 rotated -90 0 run function luigis_mansion:spawn_entities/portrait_ghost/mr_luggs
data modify storage luigis_mansion:data furniture set value {room:26,searchable:["vacuum"],tags:["mr_luggs_food"]}
execute positioned 704 12 43 rotated -90 0 run function luigis_mansion:spawn_furniture/food
data modify storage luigis_mansion:data entity set value {room:26,speed:12,paths:[{steps:[{position:[700.5d,11.0d,56.5d]},{position:[707.5d,11.0d,55.5d]},{position:[707.5d,11.0d,44.5d]},{position:[704.5d,11.0d,43.5d]},{position:[706.5d,11.0d,45.5d]},{position:[708.5d,11.0d,41.5d]},{position:[707.5d,11.0d,32.5d]},{position:[702.5d,11.0d,30.5d]},{position:[700.5d,11.0d,32.5d]},{position:[700.5d,11.0d,56.5d]}]}],no_hidden_move:1b,spawn:4b,tags:["optional_ghost"]}
execute positioned 700 11 56 run function luigis_mansion:spawn_entities/ghost/waiter
data modify storage luigis_mansion:data entity set value {room:26,paths:[{steps:[{position:[704.5d,11.0d,30.5d]},{position:[701.5d,11.0d,34.5d]},{position:[700.5d,11.0d,38.5d]},{position:[700.5d,11.0d,45.5d]},{position:[704.5d,11.0d,43.5d]},{position:[702.5d,11.0d,45.5d]},{position:[701.5d,11.0d,48.5d]},{position:[701.5d,11.0d,53.5d]},{position:[704.5d,11.0d,55.5d]},{position:[707.5d,11.0d,54.5d]},{position:[708.5d,11.0d,33.5d]},{position:[704.5d,11.0d,30.5d]}]}],no_hidden_move:1b,spawn:4b,tags:["optional_ghost"]}
execute positioned 704 11 30 run function luigis_mansion:spawn_entities/ghost/waiter
scoreboard players set #dining_room Wave 1