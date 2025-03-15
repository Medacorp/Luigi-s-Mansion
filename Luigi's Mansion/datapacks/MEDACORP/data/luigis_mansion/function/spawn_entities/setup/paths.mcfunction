execute if data storage luigis_mansion:data entity.paths run data modify entity @e[tag=this_entity,limit=1] data.paths set from storage luigis_mansion:data entity.paths
execute if data storage luigis_mansion:data entity.paths store result score #paths Time run data get storage luigis_mansion:data entity.paths
execute if data storage luigis_mansion:data entity.paths run data modify storage luigis_mansion:data entity.paths set value {entries:0,to_check:"view_spawn_function"}
execute if data storage luigis_mansion:data entity.paths store result storage luigis_mansion:data entity.paths.entries int 1 run scoreboard players get #paths Time
scoreboard players reset #paths Time