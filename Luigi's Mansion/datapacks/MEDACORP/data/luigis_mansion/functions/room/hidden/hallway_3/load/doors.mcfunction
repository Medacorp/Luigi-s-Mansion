data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"heart"},frame:{namespace:"luigis_mansion",id:"double/windowed"},left_hinge:1b,key:"hallway_3",other_end:{x:743,y:11,z:7}}}
execute positioned 719 11 21 rotated 90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"heart"},frame:{namespace:"luigis_mansion",id:"double/windowed"},push:1b,key:"hallway_3",other_end:{x:743,y:11,z:6}}}
execute positioned 719 11 20 rotated 90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"},other_end:{x:716,y:11,z:58}}}
execute positioned 716 11 49 rotated -180 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"},left_hinge:1b,push:1b,key:"fortune_tellers_room",other_end:{x:735,y:11,z:47}}}
execute positioned 719 11 43 rotated 90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"},left_hinge:1b,push:1b,key:"laundry_room",other_end:{x:716,y:11,z:-43}}}
execute positioned 716 11 -9 rotated 0 0 run function luigis_mansion:spawn_furniture/door

data modify storage luigis_mansion:data entity set value {door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"}}}
execute positioned 713 11 26 rotated -90 0 run function luigis_mansion:spawn_entities/fake_door
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run data modify storage luigis_mansion:data entity set value {door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"}}}
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} positioned 713 11 5 rotated -90 0 run function luigis_mansion:spawn_entities/fake_door