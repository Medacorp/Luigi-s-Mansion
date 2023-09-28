data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"translate":"luigis_mansion:message.orville.scan"}'}}
execute positioned 741 20 40 run function luigis_mansion:spawn_entities/portrait_ghost/orville
data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"translate":"luigis_mansion:message.henry.scan"}'}}
execute positioned 743 20 41 run function luigis_mansion:spawn_entities/portrait_ghost/henry
tag @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"orville"}}]},limit=1] add dialog
tag @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"henry"}}]},limit=1] add dialog
scoreboard players set #the_twins_room Wave 2