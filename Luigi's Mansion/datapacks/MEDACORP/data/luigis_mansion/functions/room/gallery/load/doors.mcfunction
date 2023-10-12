data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"lab"},frame:{namespace:"luigis_mansion",id:"smooth_stone"},push:1b,blocked:4b,other_end:{x:772,y:77,z:-15}}}
execute positioned 772 77 -16 rotated -180 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"gallery"},frame:{namespace:"luigis_mansion",id:"smooth_stone"},left_hinge:1b,other_end:{x:742,y:77,z:-42}}}
execute positioned 743 77 -24 rotated -90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"gallery"},frame:{namespace:"luigis_mansion",id:"golden_decoration"},push:1b,other_end:{x:743,y:77,z:-42}}}
execute positioned 742 77 -24 rotated 90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"gallery"},frame:{namespace:"luigis_mansion",id:"smooth_stone"},left_hinge:1b,other_end:{x:742,y:77,z:-33}}}
execute positioned 743 77 -33 rotated -90 0 run function luigis_mansion:spawn_furniture/door
data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"gallery"},frame:{namespace:"luigis_mansion",id:"golden_decoration"},push:1b,other_end:{x:743,y:77,z:-33}}}
execute positioned 742 77 -33 rotated 90 0 run function luigis_mansion:spawn_furniture/door

execute if score #extra_gallery Selected matches 1 run fill 772 77 -41 772 78 -41 minecraft:light_gray_stained_glass
execute if score #extra_gallery Selected matches 1 run data modify storage luigis_mansion:data furniture set value {sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"lab"},frame:{namespace:"luigis_mansion",id:"smooth_stone"},left_hinge:1b,go_through_command:"function luigis_mansion:room/gallery/extra_gallery_door"}}
execute if score #extra_gallery Selected matches 1 positioned 772 77 -41 rotated 0 0 run function luigis_mansion:spawn_furniture/door
