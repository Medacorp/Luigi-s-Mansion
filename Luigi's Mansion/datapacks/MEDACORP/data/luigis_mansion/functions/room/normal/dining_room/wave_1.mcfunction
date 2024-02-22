execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["dining_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/green_emerald
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["dining_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity.loot.name set value "dining_room_speedy_spirit"
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["dining_room_speedy_spirit"]} positioned 699 11 52 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 706 11 31 run function luigis_mansion:spawn_entities/eternal_banana_peel
execute positioned 707 11 34 run function luigis_mansion:spawn_entities/eternal_banana_peel
execute positioned 708 11 40 run function luigis_mansion:spawn_entities/eternal_banana_peel
execute positioned 707 11 51 run function luigis_mansion:spawn_entities/eternal_banana_peel
execute positioned 708 11 55 run function luigis_mansion:spawn_entities/eternal_banana_peel
execute positioned 703 11 54 run function luigis_mansion:spawn_entities/eternal_banana_peel
data modify storage luigis_mansion:data entity set value {mansion:{namespace:"luigis_mansion",id:"normal"},scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.mr_luggs.scan"}'}}
execute positioned 702 11 43 rotated -90 0 run function luigis_mansion:spawn_entities/portrait_ghost/mr_luggs
data modify storage luigis_mansion:data entity set value {paths:[{steps:[{position:[700.5d,11.0d,56.5d]},{position:[707.5d,11.0d,55.5d]},{position:[709.5d,11.0d,52.5d]},{position:[706.5d,11.0d,45.5d]},{position:[708.5d,11.0d,41.5d]},{position:[707.5d,11.0d,33.5d]},{position:[702.5d,11.0d,30.5d]},{position:[700.5d,11.0d,32.5d]},{position:[700.5d,11.0d,56.5d]}]}]}
execute positioned 700 11 56 run function luigis_mansion:spawn_entities/ghost/waiter
data modify storage luigis_mansion:data entity set value {paths:[{steps:[{position:[704.5d,11.0d,30.5d]},{position:[701.5d,11.0d,34.5d]},{position:[700.5d,11.0d,38.5d]},{position:[700.5d,11.0d,45.5d]},{position:[702.5d,11.0d,45.5d]},{position:[701.5d,11.0d,48.5d]},{position:[701.5d,11.0d,53.5d]},{position:[704.5d,11.0d,55.5d]},{position:[707.5d,11.0d,54.5d]},{position:[708.5d,11.0d,33.5d]},{position:[704.5d,11.0d,30.5d]}]}]}
execute positioned 704 11 30 run function luigis_mansion:spawn_entities/ghost/waiter
scoreboard players set #dining_room Wave 1