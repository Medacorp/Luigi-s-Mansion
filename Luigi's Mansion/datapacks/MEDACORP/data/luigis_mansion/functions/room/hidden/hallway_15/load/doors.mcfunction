data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/wooden"},frame:{namespace:"luigis_mansion",id:"planks"},left_hinge:1b,push:1b,key:"safari_room",other_end:{x:733,y:29,z:54}}}
execute positioned 719 29 49 rotated 90 0 run function luigis_mansion:spawn_furniture/door

data modify storage luigis_mansion:data entity set value {door:{model:{namespace:"luigis_mansion",id:"mansion/wooden"},frame:{namespace:"luigis_mansion",id:"planks"}}}
execute positioned 713 29 49 rotated -90 0 run function luigis_mansion:spawn_entities/fake_door