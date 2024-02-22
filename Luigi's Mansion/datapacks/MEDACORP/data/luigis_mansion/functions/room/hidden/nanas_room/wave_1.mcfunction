execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["nanas_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["nanas_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity.loot.name set value "nanas_room_speedy_spirit"
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["nanas_room_speedy_spirit"]} positioned 658 20 38 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
data modify storage luigis_mansion:data entity set value {mansion:{namespace:"luigis_mansion",id:"hidden"},scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.nana.scan"}',plural_message:'{"type":"translatable","translate":"luigis_mansion:message.nana.scan.more"}'}}
execute positioned 657 20 27.0 rotated -120 0 run function luigis_mansion:spawn_entities/portrait_ghost/nana
data modify storage luigis_mansion:data entity set value {paths:[{loop:1b,steps:[{position:[658.5d,20.0d,28.5d]},{position:[657.5d,20.0d,30.5d]},{position:[656.5d,20.0d,27.5d]},{position:[658.5d,20.0d,30.5d]},{position:[656.5d,20.0d,27.5d]},{position:[657.5d,20.0d,30.5d]}]}]}
execute positioned 659.7 21.5 27.7 run function luigis_mansion:spawn_entities/ball/wool/yellow
data modify storage luigis_mansion:data entity set value {paths:[{loop:1b,steps:[{position:[670.5d,20.0d,28.5d]},{position:[662.5d,20.0d,34.5d]},{position:[660.5d,20.0d,40.5d]},{position:[657.5d,20.0d,42.5d]},{position:[656.5d,20.0d,37.5d]},{position:[654.5d,20.0d,41.5d]},{position:[656.5d,20.0d,37.5d]},{position:[657.5d,20.0d,42.5d]},{position:[660.5d,20.0d,40.5d]},{position:[662.5d,20.0d,34.5d]}]}]}
execute positioned 659.3 21.5 27.7 run function luigis_mansion:spawn_entities/ball/wool/yellow
data modify storage luigis_mansion:data entity set value {paths:[{loop:1b,steps:[{position:[659.5d,20.0d,26.5d]},{position:[662.5d,20.0d,20.5d]}]}]}
execute positioned 659 21.5 27.3 run function luigis_mansion:spawn_entities/ball/wool/blue
scoreboard players set #nanas_room Wave 1