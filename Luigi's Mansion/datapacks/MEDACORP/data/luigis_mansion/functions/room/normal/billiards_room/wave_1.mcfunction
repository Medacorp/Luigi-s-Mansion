execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["billiards_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:47,loot:{name:"billiards_room_speedy_spirit"},spawn:3b}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["billiards_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/blue_sapphire
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["billiards_room_speedy_spirit"]} positioned 686 11 66 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
data modify storage luigis_mansion:data entity set value {room:47,paths:[{steps:[{position:[677.5d,11.0d,82.5d]},{position:[677.5d,11.0d,77.5d]},{position:[678.5d,11.0d,73.5d]},{position:[682.5d,11.0d,73.5d]},{position:[685.5d,11.0d,73.5d]},{position:[685.5d,11.0d,77.5d]},{position:[684.5d,11.0d,82.5d]},{position:[680.5d,11.0d,82.5d]}]}],scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.slim_bankshot.scan"}',plural_message:'{"type":"translatable","translate":"luigis_mansion:message.slim_bankshot.scan,more"}'}}
execute positioned 680 11 82 rotated -180 0 run function luigis_mansion:spawn_entities/portrait_ghost/slim_bankshot
data modify storage luigis_mansion:data entity set value {room:47}
execute positioned 682.0 12 77.0 run function luigis_mansion:spawn_entities/ball/billiards/yellow
data modify storage luigis_mansion:data entity set value {room:47}
execute positioned 681.8 12 76.5 run function luigis_mansion:spawn_entities/ball/billiards/red
data modify storage luigis_mansion:data entity set value {room:47}
execute positioned 682.2 12 76.6 run function luigis_mansion:spawn_entities/ball/billiards/purple
scoreboard players set #billiards_room Wave 1