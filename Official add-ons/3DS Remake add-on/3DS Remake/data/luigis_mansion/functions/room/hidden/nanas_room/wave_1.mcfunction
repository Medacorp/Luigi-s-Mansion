execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["nanas_room_speedy_spirit"]} run function luigis_mansion:old_entities/speedy_spirit/give_money/silver_diamond
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["nanas_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity.loot.name set value "nanas_room_speedy_spirit"
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["nanas_room_speedy_spirit"]} positioned 658 20 38 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.nana.scan"}',plural_message:'{"type":"translatable","translate":"luigis_mansion:message.nana.scan.more"}'}}
execute positioned 657 20 27.0 rotated -120 0 run function luigis_mansion:spawn_entities/portrait_ghost/nana
data modify storage luigis_mansion:data entity set value {path:1}
execute positioned 659.7 21.5 27.7 run function luigis_mansion:spawn_entities/ball/wool/pink
data modify storage luigis_mansion:data entity set value {path:2}
execute positioned 659.3 21.5 27.7 run function luigis_mansion:spawn_entities/ball/wool/blue
data modify storage luigis_mansion:data entity set value {path:3}
execute positioned 659 21.5 27.3 run function luigis_mansion:spawn_entities/ball/wool/yellow
scoreboard players set #nanas_room Wave 1