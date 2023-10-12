data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"},other_end:{x:666,y:20,z:87}}}
execute positioned 691 20 37 rotated -180 0 run function luigis_mansion:spawn_furniture/door

execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} run data modify storage luigis_mansion:data entity set value {door:{model:{namespace:"luigis_mansion",id:"mansion/1"},frame:{namespace:"luigis_mansion",id:"normal"}}}
execute if data storage luigis_mansion:data current_state.current_data{blackout:1b} positioned 691 20 31 rotated 0 0 run function luigis_mansion:spawn_entities/fake_door