data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"translate":"luigis_mansion:message.orville.scan"}'}}
execute positioned 741 20 -25 run function luigis_mansion:spawn_entities/portrait_ghost/orville
data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"translate":"luigis_mansion:message.henry.scan"}'}}
execute positioned 743 20 -26 run function luigis_mansion:spawn_entities/portrait_ghost/henry
tag @e[tag=orville,limit=1] add dialog
tag @e[tag=henry,limit=1] add dialog
scoreboard players set #the_twins_room Wave 2