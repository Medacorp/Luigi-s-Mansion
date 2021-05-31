setblock 27 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:0}}]}
setblock 26 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:0}}]}
execute store result block 27 0 0 Items[0].tag.value int 1 run scoreboard players get #mansion_data_index Selected
function luigis_mansion:entities/e_gadd/load_mansion_index
scoreboard players reset #temp ActionTime
fill 27 0 0 26 0 0 minecraft:bedrock
scoreboard players set @a Health 100
gamemode adventure @a[gamemode=spectator]
execute if data storage luigis_mansion:data current_state.current_data.dead_players[-1] as @a run function luigis_mansion:entities/player/load_health
data modify storage luigis_mansion:data current_state.mansion_data set from storage luigis_mansion:data current_state.new_mansion_data
data remove storage luigis_mansion:data current_state.new_mansion_data