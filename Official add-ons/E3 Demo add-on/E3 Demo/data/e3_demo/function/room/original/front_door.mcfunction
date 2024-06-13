forceload add 749 -66 615 81
tag @e[scores={Room=0},tag=door] add remove_from_existence
data modify storage luigis_mansion:data furniture set value {room:0,sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/entrance"},frame:{namespace:"luigis_mansion",id:"double/basic"},left_hinge:1b,other_end:{dimension:"e3_demo:original",x:755,y:11,z:8},go_through_command:"function e3_demo:room/original/enter"}}
execute positioned 720 102 7 rotated -90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {room:0,sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/entrance"},frame:{namespace:"luigis_mansion",id:"double/basic"},push:1b,other_end:{dimension:"e3_demo:original",x:755,y:11,z:9},go_through_command:"function e3_demo:room/original/enter"}}
execute positioned 720 102 8 rotated -90 0 run function luigis_mansion:spawn_furniture/door
forceload remove 749 -66 615 81