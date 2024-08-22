data modify storage luigis_mansion:data macro set value {index:0,random_range:1}
data modify storage luigis_mansion:data new_paths set from entity @s data.paths
data modify storage luigis_mansion:data paths set value []
tag @s add ignore_me
execute if data storage luigis_mansion:data new_paths[0] run function luigis_mansion:entities/ghost/check_paths
execute if data entity @s data.paths unless data entity @s data.paths[0] run function luigis_mansion:entities/ghost/get_path_reference with entity @s data
tag @s remove ignore_me
execute if data storage luigis_mansion:data paths[0] store result storage luigis_mansion:data macro.random_range int 1 run data get storage luigis_mansion:data paths
execute if data storage luigis_mansion:data paths[0] unless data storage luigis_mansion:data macro{random_range:1} run function luigis_mansion:entities/ghost/select_random_index with storage luigis_mansion:data macro
execute if data storage luigis_mansion:data paths[0] run function luigis_mansion:entities/ghost/set_selected_path with storage luigis_mansion:data macro
data remove storage luigis_mansion:data new_paths
data remove storage luigis_mansion:data paths