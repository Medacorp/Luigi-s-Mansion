execute in minecraft:overworld run setblock 27 0 0 minecraft:chest{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
execute in minecraft:overworld run setblock 26 0 0 minecraft:chest{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
execute in minecraft:overworld run data modify block 27 0 0 Items[0].tag.value set from entity @s UUID
execute in minecraft:overworld run function luigis_mansion:entities/player/remove_dead_entry_index
scoreboard players reset #temp ActionTime
execute in minecraft:overworld run fill 27 0 0 26 0 0 minecraft:air
data modify storage luigis_mansion:data current_state.current_data.dead_players set from storage luigis_mansion:data current_state.current_data.new_dead_players
data remove storage luigis_mansion:data current_state.current_data.new_dead_players