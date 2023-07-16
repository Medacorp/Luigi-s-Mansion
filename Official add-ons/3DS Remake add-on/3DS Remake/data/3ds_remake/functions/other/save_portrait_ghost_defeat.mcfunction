data modify storage 3ds_remake:data new_portrait_ghost set from storage 3ds_remake:data portrait_ghost
execute if data storage 3ds_remake:data new_portrait_ghost[-1] run function 3ds_remake:other/find_portrait_ghost_defeat
data remove storage 3ds_remake:data new_portrait_ghost
scoreboard players reset #temp Money
scoreboard players reset #temp2 Money
execute unless score #temp Time matches 1 run data modify storage 3ds_remake:data portrait_ghost append value {data_index:-1,mansion_type:-1,speed:-1,health:-1}
execute unless score #temp Time matches 1 store result storage 3ds_remake:data portrait_ghost[-1].data_index int 1 run scoreboard players get #mansion_data_index Selected
execute unless score #temp Time matches 1 store result storage 3ds_remake:data portrait_ghost[-1].mansion_type int 1 run scoreboard players get #mansion_type Selected
scoreboard players reset #temp Time