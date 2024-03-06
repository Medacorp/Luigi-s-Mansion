data modify storage luigis_mansion:data macro set value {index:0,random_range:1}
execute if data entity @s data.paths store result storage luigis_mansion:data macro.random_range int 1 run data get entity @s data.paths
execute if data entity @s data.paths unless data storage luigis_mansion:data macro{random_range:1} run function luigis_mansion:entities/ghost/select_random_index with storage luigis_mansion:data macro
execute if data entity @s data.paths run function luigis_mansion:entities/ghost/set_specific_path with storage luigis_mansion:data macro