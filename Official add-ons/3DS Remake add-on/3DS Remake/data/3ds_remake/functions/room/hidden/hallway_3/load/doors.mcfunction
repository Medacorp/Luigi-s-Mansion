data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"heart"},frame:{namespace:"luigis_mansion",id:"double/windowed"},key:"hallway_3",other_end:{x:743,y:11,z:8}}}
execute positioned 719 11 -6 rotated 90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"heart"},frame:{namespace:"luigis_mansion",id:"double/windowed"},left_hinge:1b,push:1b,key:"hallway_3",other_end:{x:743,y:11,z:9}}}
execute positioned 719 11 -5 rotated 90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"},left_hinge:1b,other_end:{x:716,y:11,z:-43}}}
execute positioned 716 11 -34 rotated 0 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"},push:1b,key:"fortune_tellers_room",other_end:{x:735,y:11,z:-32}}}
execute positioned 719 11 -28 rotated 90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"},push:1b,key:"laundry_room",other_end:{x:716,y:11,z:58}}}
execute positioned 716 11 24 rotated -180 0 run function luigis_mansion:spawn_furniture/door

data modify storage luigis_mansion:data entity set value {door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"},left_hinge:1b}}
execute positioned 713 11 -11 rotated -90 0 run function luigis_mansion:spawn_entities/fake_door
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run data modify storage luigis_mansion:data entity set value {door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"},left_hinge:1b}}
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} positioned 713 11 10 rotated -90 0 run function luigis_mansion:spawn_entities/fake_door