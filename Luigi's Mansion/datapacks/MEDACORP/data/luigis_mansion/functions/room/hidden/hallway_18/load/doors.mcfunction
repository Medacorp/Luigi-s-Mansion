data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"diamond"},frame:{namespace:"luigis_mansion",id:"planks"},key:"hallway_18",other_end:{x:682,y:120,z:-13}}}
execute positioned 724 29 -29 rotated -90 0 run function luigis_mansion:spawn_furniture/door

data modify storage luigis_mansion:data entity set value {door:{model:{namespace:"luigis_mansion",id:"mansion/wooden"},frame:{namespace:"luigis_mansion",id:"planks"}}}
execute positioned 735 29 -26 rotated -180 0 run function luigis_mansion:spawn_entities/fake_door
data modify storage luigis_mansion:data entity set value {door:{model:{namespace:"luigis_mansion",id:"mansion/wooden"},frame:{namespace:"luigis_mansion",id:"planks"}}}
execute positioned 735 29 -32 rotated 0 0 run function luigis_mansion:spawn_entities/fake_door