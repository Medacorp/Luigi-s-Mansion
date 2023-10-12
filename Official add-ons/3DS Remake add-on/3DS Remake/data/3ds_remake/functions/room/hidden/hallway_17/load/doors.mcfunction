data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/wooden"},frame:{namespace:"luigis_mansion",id:"planks"},left_hinge:1b,key:"balcony_2",other_end:{x:682,y:120,z:-13}}}
execute positioned 725 29 -13 rotated -90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/wooden"},frame:{namespace:"luigis_mansion",id:"planks"},left_hinge:1b,key:"the_artists_studio",other_end:{x:699,y:29,z:-56}}}
execute positioned 736 29 -16 rotated 0 0 run function luigis_mansion:spawn_furniture/door

data modify storage luigis_mansion:data entity set value {door:{model:{namespace:"luigis_mansion",id:"mansion/wooden"},frame:{namespace:"luigis_mansion",id:"planks"},left_hinge:1b}}
execute positioned 736 29 -10 rotated -180 0 run function luigis_mansion:spawn_entities/fake_door