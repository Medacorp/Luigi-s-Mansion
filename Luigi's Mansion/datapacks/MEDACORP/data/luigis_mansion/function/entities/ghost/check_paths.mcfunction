execute unless data storage luigis_mansion:data new_paths[0].id run data modify storage luigis_mansion:data paths append from storage luigis_mansion:data new_paths[0]
execute if data storage luigis_mansion:data new_paths[0].id run function luigis_mansion:entities/ghost/check_paths_id with storage luigis_mansion:data new_paths[0]
data remove storage luigis_mansion:data new_paths[0]
execute if data storage luigis_mansion:data new_paths[0] run function luigis_mansion:entities/ghost/check_paths