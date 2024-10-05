data modify storage luigis_mansion:data entity set value {room:49,tags:["initial_dialog"],scan_result:{namespace:"luigis_mansion",id:"scan/entity/orville"}}
execute positioned 741 20 -25 run function luigis_mansion:spawn_entities/portrait_ghost/henry_and_orville/orville
data modify storage luigis_mansion:data entity set value {room:49,tags:["initial_dialog"],scan_result:{namespace:"luigis_mansion",id:"scan/entity/henry"}}
execute positioned 743 20 -26 run function luigis_mansion:spawn_entities/portrait_ghost/henry_and_orville/henry
scoreboard players set #the_twins_room Wave 2
data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"twins"},room:49,progress:0}