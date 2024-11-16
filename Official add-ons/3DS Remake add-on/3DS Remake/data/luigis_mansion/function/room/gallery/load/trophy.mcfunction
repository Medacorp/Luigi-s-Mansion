fill 768 77 -40 768 79 -38 minecraft:barrier
fill 767 77 -39 769 79 -39 minecraft:barrier
data modify storage luigis_mansion:data furniture set value {room:-4,searchable:["interact"],no_dust:1b,interact_animation:{namespace:"luigis_mansion",id:"inspect"},scan_result:{namespace:"luigis_mansion",id:"scan/scanner/55"},search_command:"execute as @a[tag=searcher] run function 3ds_remake:selection_menu/gallery_trophy/original_menu"}
execute positioned 768 77 -39 rotated -45 0 run function 3ds_remake:spawn_furniture/trophy