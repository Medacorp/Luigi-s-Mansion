data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"translate":"luigis_mansion:message.slim_bankshot.scan"}',plural_message:'{"translate":"luigis_mansion:message.slim_bankshot.scan,more"}'}}
execute positioned 680 11 82 rotated -180 0 run function luigis_mansion:spawn_entities/portrait_ghost/slim_bankshot
scoreboard players set #billiards_room Wave 1