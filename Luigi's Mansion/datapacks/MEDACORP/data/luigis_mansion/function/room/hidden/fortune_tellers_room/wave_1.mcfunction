data modify storage luigis_mansion:data entity set value {room:20,scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.madame_clairvoya.scan"}'},can_talk_to:1b}
execute positioned 741.0 10.5 44 rotated -90 0 run function luigis_mansion:spawn_entities/portrait_ghost/madame_clairvoya
scoreboard players set #fortune_tellers_room Wave 1