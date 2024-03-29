data modify storage 3ds_remake:data portrait_ghost append value {mansion:{namespace:"luigis_mansion",id:"empty"},peaceful:{health:-1,speed:-1},easy:{health:-1,speed:-1},normal:{health:-1,speed:-1},hard:{health:-1,speed:-1}}
data modify storage 3ds_remake:data portrait_ghost[-1].normal.health set from storage 3ds_remake:data new_portrait_ghost[-1].health
data modify storage 3ds_remake:data portrait_ghost[-1].normal.speed set from storage 3ds_remake:data new_portrait_ghost[-1].speed
execute store result score #temp Time run data get storage 3ds_remake:data new_portrait_ghost[-1].mansion_type
execute store result score #temp2 Time run data get storage 3ds_remake:data new_portrait_ghost[-1].data_index
execute if score #temp Time matches 0 if score #temp2 Time matches 0 run data modify storage 3ds_remake:data portrait_ghost[-1].mansion set value {namespace:"luigis_mansion",id:"normal"}
execute if score #temp Time matches 1 if score #temp2 Time matches 0 run data modify storage 3ds_remake:data portrait_ghost[-1].mansion set value {namespace:"luigis_mansion",id:"hidden"}
execute if score #temp Time matches 1 if score #temp2 Time matches 1 run data modify storage 3ds_remake:data portrait_ghost[-1].mansion set value {namespace:"3ds_remake",id:"hidden"}
data remove storage 3ds_remake:data new_portrait_ghost[-1]
execute if data storage 3ds_remake:data new_portrait_ghost[-1] run function 3ds_remake:other/upgrade_path/v3.0/portrait_ghost_list_entry