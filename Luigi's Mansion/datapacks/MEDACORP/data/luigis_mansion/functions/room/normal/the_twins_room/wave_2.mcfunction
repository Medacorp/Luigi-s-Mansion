data modify storage luigis_mansion:data entity set value {tags:["initial_dialog"],mansion:{namespace:"luigis_mansion",id:"normal"},scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.orville.scan"}'}}
execute positioned 741 20 40 run function luigis_mansion:spawn_entities/portrait_ghost/henry_and_orville/orville
data modify storage luigis_mansion:data entity set value {tags:["initial_dialog"],mansion:{namespace:"luigis_mansion",id:"normal"},scan_message:{sender:"me",message:'{"type":"translatable","translate":"luigis_mansion:message.henry.scan"}'}}
execute positioned 743 20 41 run function luigis_mansion:spawn_entities/portrait_ghost/henry_and_orville/henry
scoreboard players set #the_twins_room Wave 2