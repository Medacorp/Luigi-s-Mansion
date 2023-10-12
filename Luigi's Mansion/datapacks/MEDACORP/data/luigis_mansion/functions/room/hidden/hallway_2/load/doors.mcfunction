data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"},left_hinge:1b,key:"hallway_2",other_end:{x:739,y:20,z:-3}}}
execute positioned 726 20 -27 rotated -180 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"},other_end:{x:716,y:20,z:-33}}}
execute positioned 723 20 -32 rotated -90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"},key:"master_bedroom",other_end:{x:698,y:111,z:-36}}}
execute positioned 723 20 -60 rotated -90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"},left_hinge:1b,push:1b,key:"nursery",other_end:{x:738,y:20,z:-43}}}
execute positioned 729 20 -51 rotated 90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"},left_hinge:1b,push:1b,key:"the_twins_room",other_end:{x:737,y:20,z:-29}}}
execute positioned 729 20 -41 rotated 90 0 run function luigis_mansion:spawn_furniture/door

data modify storage luigis_mansion:data entity set value {door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"}}}
execute positioned 723 20 -41 rotated -90 0 run function luigis_mansion:spawn_entities/fake_door
data modify storage luigis_mansion:data entity set value {door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"}}}
execute positioned 723 20 -51 rotated -90 0 run function luigis_mansion:spawn_entities/fake_door