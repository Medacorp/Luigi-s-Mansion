data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/2"},frame:{namespace:"luigis_mansion",id:"normal"},key:"ball_room",other_end:{x:706,y:11,z:53}}}
execute positioned 707 11 37 rotated -180 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"},left_hinge:1b,push:1b,key:"dining_room",other_end:{x:704,y:11,z:-14}}}
execute positioned 706 11 31 rotated 0 0 run function luigis_mansion:spawn_furniture/door

execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run data modify storage luigis_mansion:data entity set value {door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"}}}
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} positioned 691 11 37 rotated -180 0 run function luigis_mansion:spawn_entities/fake_door
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run data modify storage luigis_mansion:data entity set value {door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"}}}
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} positioned 691 11 31 rotated 0 0 run function luigis_mansion:spawn_entities/fake_door