execute positioned 772 77 -16 rotated -180 0 run function luigis_mansion:spawn_furniture/door/right/push/lab
execute positioned 772 77 -16 rotated -180 0 run function luigis_mansion:spawn_furniture/door_frame/smooth_stone
tag @e[x=772.5,y=77,z=-16.0,distance=..0.7,tag=door,tag=frame,limit=1] add unopenable
execute positioned 743 77 -24 rotated -90 0 run function luigis_mansion:spawn_furniture/door/left/pull/gallery
execute positioned 743 77 -24 rotated -90 0 run function luigis_mansion:spawn_furniture/door_frame/smooth_stone
execute positioned 742 77 -24 rotated 90 0 run function luigis_mansion:spawn_furniture/door/right/push/gallery
execute positioned 742 77 -24 rotated 90 0 run function luigis_mansion:spawn_furniture/door_frame/golden_decoration
execute positioned 743 77 -33 rotated -90 0 run function luigis_mansion:spawn_furniture/door/left/pull/gallery
execute positioned 743 77 -33 rotated -90 0 run function luigis_mansion:spawn_furniture/door_frame/smooth_stone
execute positioned 742 77 -33 rotated 90 0 run function luigis_mansion:spawn_furniture/door/right/push/gallery
execute positioned 742 77 -33 rotated 90 0 run function luigis_mansion:spawn_furniture/door_frame/golden_decoration

execute if score #extra_gallery Selected matches 1 run fill 772 77 -41 772 78 -41 minecraft:light_gray_stained_glass
execute if score #extra_gallery Selected matches 1 positioned 772 77 -41 rotated 0 0 run function luigis_mansion:spawn_furniture/door/right/pull/lab
execute if score #extra_gallery Selected matches 1 positioned 772 77 -41 rotated 0 0 run function luigis_mansion:spawn_furniture/door_frame/smooth_stone
execute if score #extra_gallery Selected matches 1 run tag @e[x=772.5,y=77,z=-40.0,distance=..0.7,tag=door,tag=frame,limit=1] add extra_gallery
