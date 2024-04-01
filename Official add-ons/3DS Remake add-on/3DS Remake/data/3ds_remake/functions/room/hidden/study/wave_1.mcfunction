data modify storage luigis_mansion:data entity set value {room:8,tags:["enabled"]}
execute positioned 702 24 46 rotated -180 90 run function luigis_mansion:spawn_entities/vacuumable/haunted_object/haunted_book
data modify storage luigis_mansion:data entity set value {room:8,scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.neville.scan"}',plural_message:'{"type":"translatable","translate":"luigis_mansion:message.neville.scan.more"}'}}
execute positioned 709.0 20 57.0 rotated -125 0 run function luigis_mansion:spawn_entities/portrait_ghost/neville
scoreboard players set #study Wave 1