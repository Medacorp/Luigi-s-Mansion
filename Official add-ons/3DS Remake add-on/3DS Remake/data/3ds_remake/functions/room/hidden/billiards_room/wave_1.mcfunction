data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.slim_bankshot.scan"}',plural_message:'{"type":"translatable","translate":"luigis_mansion:message.slim_bankshot.scan,more"}'}}
execute positioned 680 11 82 rotated -180 0 run function luigis_mansion:spawn_entities/portrait_ghost/slim_bankshot
execute positioned 682.0 12 77.0 run function luigis_mansion:spawn_entities/ball/billiards/yellow
execute positioned 681.8 12 76.5 run function luigis_mansion:spawn_entities/ball/billiards/red
execute positioned 682.2 12 76.6 run function luigis_mansion:spawn_entities/ball/billiards/purple
scoreboard players set #billiards_room Wave 1