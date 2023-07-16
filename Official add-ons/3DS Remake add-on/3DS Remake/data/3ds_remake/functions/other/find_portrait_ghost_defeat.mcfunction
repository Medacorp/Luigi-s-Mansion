execute store result score #temp Money run data get storage 3ds_remake:data new_portrait_ghost[-1].data_index
execute store result score #temp2 Money run data get storage 3ds_remake:data new_portrait_ghost[-1].mansion_type
execute if score #temp Money = #mansion_data_index Selected if score #temp2 Money = #mansion_type Selected run scoreboard players set #temp Time 1
data remove storage 3ds_remake:data new_portrait_ghost[-1]
execute unless score #temp Time matches 1 if data storage 3ds_remake:data new_portrait_ghost[-1] run function 3ds_remake:other/find_portrait_ghost_defeat