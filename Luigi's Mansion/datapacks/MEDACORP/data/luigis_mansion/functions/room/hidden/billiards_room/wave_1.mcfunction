execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["billiards_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["billiards_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity.loot.name set value "billiards_room_speedy_spirit"
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["billiards_room_speedy_spirit"]} positioned 686 11 -51 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"translate":"luigis_mansion:message.slim_bankshot.scan"}',plural_message:'{"translate":"luigis_mansion:message.slim_bankshot.scan,more"}'}}
execute positioned 680 11 -67 rotated 0 0 run function luigis_mansion:spawn_entities/portrait_ghost/slim_bankshot
execute positioned 682.0 12 -62.0 run function luigis_mansion:spawn_entities/ball/billiards/yellow
execute positioned 681.8 12 -61.6 run function luigis_mansion:spawn_entities/ball/billiards/red
execute positioned 682.2 12 -61.5 run function luigis_mansion:spawn_entities/ball/billiards/purple
scoreboard players set #billiards_room Wave 1