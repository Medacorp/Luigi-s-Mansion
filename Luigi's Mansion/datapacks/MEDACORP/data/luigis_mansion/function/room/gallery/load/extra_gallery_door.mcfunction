execute if score #extra_gallery Selected matches 1 run fill 0 2 19 0 4 20 minecraft:light_gray_stained_glass
execute if score #extra_gallery Selected matches 1 run data modify storage luigis_mansion:data furniture set value {room:-4,tags:["extra_gallery_door"],sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"lab"},frame:{namespace:"luigis_mansion",id:"smooth_stone"},left_hinge:1b}}
execute if score #extra_gallery Selected matches 1 positioned 0 2 20.0 rotated -90 0 run function luigis_mansion:spawn_furniture/door
