data modify storage luigis_mansion:data entity set value {tags:[no_ai],mansion:{namespace:"luigis_mansion",id:"hidden"},scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.orville.scan"}'}}
execute positioned 741 20 -25 run function luigis_mansion:spawn_entities/portrait_ghost/orville
data modify storage luigis_mansion:data entity set value {tags:[no_ai],mansion:{namespace:"luigis_mansion",id:"hidden"},scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.henry.scan"}'}}
execute positioned 743 20 -26 run function luigis_mansion:spawn_entities/portrait_ghost/henry
scoreboard players set #the_twins_room Wave 2