data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/wooden"},frame:{namespace:"luigis_mansion",id:"planks"},left_hinge:1b,other_end:{x:738,y:29,z:-35}}}
execute positioned 753 29 -16 rotated 0 0 run function luigis_mansion:spawn_furniture/door

data modify storage luigis_mansion:data entity set value {door:{model:{namespace:"luigis_mansion",id:"mansion/wooden"},frame:{namespace:"luigis_mansion",id:"planks"},left_hinge:1b}}
execute positioned 753 29 -10 rotated -180 0 run function luigis_mansion:spawn_entities/fake_door