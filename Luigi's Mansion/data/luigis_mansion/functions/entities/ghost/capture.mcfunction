setblock 27 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
setblock 26 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b,tag:{value:[I;]}}]}
data modify block 27 0 0 Items[0].tag.value set from entity @a[tag=killer,limit=1] UUID
data modify storage luigis_mansion:data current_state.new_ghosts_caught set value []
data modify storage luigis_mansion:data current_state.ghost_caught set value {uuid:[I;],total:0,caught:{}}
data modify storage luigis_mansion:data current_state.ghost_caught.uuid set from entity @a[tag=killer,limit=1] UUID
execute if data storage luigis_mansion:data current_state.ghosts_caught[-1] run function luigis_mansion:entities/ghost/capture_index
scoreboard players reset #temp ActionTime
function #luigis_mansion:entities/ghost/capture
fill 27 0 0 26 0 0 minecraft:bedrock
data modify storage luigis_mansion:data current_state.new_ghosts_caught append from storage luigis_mansion:data current_state.ghost_caught
data modify storage luigis_mansion:data current_state.ghosts_caught set from storage luigis_mansion:data current_state.new_ghosts_caught
data remove storage luigis_mansion:data current_state.ghost_caught
data remove storage luigis_mansion:data current_state.new_ghosts_caught