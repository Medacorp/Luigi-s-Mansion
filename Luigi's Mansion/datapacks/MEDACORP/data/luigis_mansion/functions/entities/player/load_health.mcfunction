setblock 27 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
setblock 26 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
data modify block 27 0 0 Items[0].tag.value set from entity @s UUID
function luigis_mansion:entities/player/load_health_index
scoreboard players reset #temp ActionTime
fill 27 0 0 26 0 0 minecraft:bedrock
data modify storage luigis_mansion:data current_state.current_data.dead_players set from storage luigis_mansion:data current_state.current_data.new_dead_players
data remove storage luigis_mansion:data current_state.current_data.new_dead_players