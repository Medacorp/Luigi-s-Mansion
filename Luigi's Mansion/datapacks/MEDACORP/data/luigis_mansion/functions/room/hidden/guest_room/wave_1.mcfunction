data modify storage luigis_mansion:data entity set value {room:70,scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.sue_pea.scan"}'},affected_by:["water"]}
execute positioned 742.0 24 73 rotated -180 0 run function luigis_mansion:spawn_entities/portrait_ghost/sue_pea
scoreboard players set #guest_room Wave 1