execute if score #extra_gallery Selected matches 1 run fill 772 77 -41 772 78 -41 minecraft:light_gray_stained_glass
execute if score #extra_gallery Selected matches 1 run data modify storage luigis_mansion:data furniture set value {room:-4,tags:["extra_gallery_door"],sound:{namespace:"luigis_mansion",id:"heavy_generic"},door:{model:{namespace:"luigis_mansion",id:"lab"},frame:{namespace:"luigis_mansion",id:"smooth_stone"},left_hinge:1b}}
execute if score #extra_gallery Selected matches 1 positioned 772 77 -41 rotated 0 0 run function luigis_mansion:spawn_furniture/door
