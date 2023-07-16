execute positioned 772 2 -16 rotated -180 0 run function luigis_mansion:spawn_furniture/door/right/push/lab
execute positioned 772 2 -16 rotated -180 0 run function 3ds_remake:spawn_furniture/door_frame/red_metal
tag @e[x=772.5,y=2,z=-16.0,distance=..0.7,tag=door,tag=frame,limit=1] add unopenable
execute positioned 746 2 -29 rotated -90 0 run function 3ds_remake:spawn_furniture/door/left/pull/new_gallery
execute positioned 746 2 -29 rotated -90 0 run function 3ds_remake:spawn_furniture/door_frame/double_reinforced_planks
execute positioned 746 2 -28 rotated -90 0 run function 3ds_remake:spawn_furniture/door/right/push/new_gallery
execute positioned 746 2 -28 rotated -90 0 run function 3ds_remake:spawn_furniture/door_frame/double_reinforced_planks
execute positioned 745 2 -29 rotated 90 0 run function 3ds_remake:spawn_furniture/door/right/push/new_gallery
execute positioned 745 2 -29 rotated 90 0 run function 3ds_remake:spawn_furniture/door_frame/double_reinforced_planks
execute positioned 745 2 -28 rotated 90 0 run function 3ds_remake:spawn_furniture/door/left/pull/new_gallery
execute positioned 745 2 -28 rotated 90 0 run function 3ds_remake:spawn_furniture/door_frame/double_reinforced_planks
execute positioned 764 2 -29 rotated -90 0 run function 3ds_remake:spawn_furniture/door/left/pull/new_gallery
execute positioned 764 2 -29 rotated -90 0 run function 3ds_remake:spawn_furniture/door_frame/double_reinforced_planks
execute positioned 764 2 -28 rotated -90 0 run function 3ds_remake:spawn_furniture/door/right/push/new_gallery
execute positioned 764 2 -28 rotated -90 0 run function 3ds_remake:spawn_furniture/door_frame/double_reinforced_planks
execute positioned 763 2 -29 rotated 90 0 run function 3ds_remake:spawn_furniture/door/right/push/new_gallery
execute positioned 763 2 -29 rotated 90 0 run function 3ds_remake:spawn_furniture/door_frame/double_reinforced_planks
execute positioned 763 2 -28 rotated 90 0 run function 3ds_remake:spawn_furniture/door/left/pull/new_gallery
execute positioned 763 2 -28 rotated 90 0 run function 3ds_remake:spawn_furniture/door_frame/double_reinforced_planks
execute positioned 772 2 -41 rotated 0 0 run function luigis_mansion:spawn_furniture/door/left/pull/lab
execute positioned 772 2 -41 rotated 0 0 run function 3ds_remake:spawn_furniture/door_frame/red_metal
execute positioned 772 2 -42 rotated -180 0 run function luigis_mansion:spawn_furniture/door/right/push/lab
execute positioned 772 2 -42 rotated -180 0 run function 3ds_remake:spawn_furniture/door_frame/red_metal


execute if score #extra_gallery Selected matches 1 run fill 772 2 -60 772 3 -60 minecraft:light_gray_stained_glass
execute if score #extra_gallery Selected matches 1 positioned 772 2 -60 rotated 0 0 run function luigis_mansion:spawn_furniture/door/left/pull/lab
execute if score #extra_gallery Selected matches 1 positioned 772 2 -60 rotated 0 0 run function 3ds_remake:spawn_furniture/door_frame/red_metal
execute if score #extra_gallery Selected matches 1 run tag @e[x=772.5,y=2,z=-59.0,distance=..0.7,tag=door,tag=frame,limit=1] add extra_gallery