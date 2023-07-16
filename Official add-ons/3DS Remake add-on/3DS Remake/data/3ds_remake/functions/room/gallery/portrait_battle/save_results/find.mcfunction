execute store result score #temp Money run data get storage 3ds_remake:data portrait_ghost[-1].data_index
execute if score #temp Money = #mansion_data_index Selected run data modify storage 3ds_remake:data this_portrait_ghost set from storage 3ds_remake:data portrait_ghost[-1]
execute unless score #temp Money = #mansion_data_index Selected run data modify storage 3ds_remake:data new_portrait_ghost append from storage 3ds_remake:data portrait_ghost[-1]
data remove storage 3ds_remake:data portrait_ghost[-1]
execute if score #temp Money = #mansion_data_index Selected run data modify storage 3ds_remake:data new_portrait_ghost append from storage 3ds_remake:data portrait_ghost[]
execute unless score #temp Money = #mansion_data_index Selected run function 3ds_remake:room/gallery/portrait_battle/save_results/find