data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"},push:1b,other_end:{x:654,y:11,z:16}}}
execute positioned 673 11 11 rotated -180 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"club"},frame:{namespace:"luigis_mansion",id:"normal"},left_hinge:1b,key:"courtyard",other_end:{x:653,y:102,z:21}}}
execute positioned 668 11 8 rotated -90 0 run function luigis_mansion:spawn_furniture/door

execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run data modify storage luigis_mansion:data entity set value {door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"},left_hinge:1b}}
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} positioned 673 11 5 rotated 0 0 run function luigis_mansion:spawn_entities/fake_door