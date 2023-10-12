data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"lab"},frame:{namespace:"3ds_remake",id:"red_metal"},push:1b,blocked:4b,other_end:{x:772,y:77,z:-15}}}
execute positioned 772 2 -16 rotated -180 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"3ds_remake",id:"new_gallery"},frame:{namespace:"3ds_remake",id:"double/reinfoced_planks"},left_hinge:1b,other_end:{x:745,y:2,z:-29}}}
execute positioned 746 2 -29 rotated -90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"3ds_remake",id:"new_gallery"},frame:{namespace:"3ds_remake",id:"double/reinfoced_planks"},push:1b,other_end:{x:745,y:2,z:-28}}}
execute positioned 746 2 -28 rotated -90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"3ds_remake",id:"new_gallery"},frame:{namespace:"3ds_remake",id:"double/reinfoced_planks"},push:1b,other_end:{x:746,y:2,z:-29}}}
execute positioned 745 2 -29 rotated 90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"3ds_remake",id:"new_gallery"},frame:{namespace:"3ds_remake",id:"double/reinfoced_planks"},left_hinge:1b,other_end:{x:746,y:2,z:-28}}}
execute positioned 745 2 -28 rotated 90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"3ds_remake",id:"new_gallery"},frame:{namespace:"3ds_remake",id:"double/reinfoced_planks"},left_hinge:1b,other_end:{x:763,y:2,z:-29}}}
execute positioned 764 2 -29 rotated -90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"3ds_remake",id:"new_gallery"},frame:{namespace:"3ds_remake",id:"double/reinfoced_planks"},push:1b,other_end:{x:763,y:2,z:-28}}}
execute positioned 764 2 -28 rotated -90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"3ds_remake",id:"new_gallery"},frame:{namespace:"3ds_remake",id:"double/reinfoced_planks"},push:1b,other_end:{x:764,y:2,z:-29}}}
execute positioned 763 2 -29 rotated 90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"3ds_remake",id:"new_gallery"},frame:{namespace:"3ds_remake",id:"double/reinfoced_planks"},left_hinge:1b,other_end:{x:764,y:2,z:-28}}}
execute positioned 763 2 -28 rotated 90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"lab"},frame:{namespace:"3ds_remake",id:"red_metal"},left_hinge:1b,other_end:{x:722,y:2,z:-42}}}
execute positioned 772 2 -41 rotated 0 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"lab"},frame:{namespace:"3ds_remake",id:"red_metal"},push:1b,other_end:{x:722,y:2,z:-41}}}
execute positioned 772 2 -42 rotated -180 0 run function luigis_mansion:spawn_furniture/door


execute if score #extra_gallery Selected matches 1 run data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"lab"},frame:{namespace:"3ds_remake",id:"red_metal"},left_hinge:1b,go_through_command:"function luigis_mansion:room/gallery/extra_gallery_door"}}
execute if score #extra_gallery Selected matches 1 run fill 772 2 -60 772 3 -60 minecraft:light_gray_stained_glass
execute if score #extra_gallery Selected matches 1 positioned 772 2 -60 rotated 0 0 run function luigis_mansion:spawn_furniture/door