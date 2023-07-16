execute store result score #temp Money run data get storage luigis_mansion:data current_state.ghosts_caught[0].caught.speedy_spirit
scoreboard players operation #temp Time += #temp Money
data modify storage luigis_mansion:data current_state.new_ghosts_caught append from storage luigis_mansion:data current_state.ghosts_caught[0]
data remove storage luigis_mansion:data current_state.ghosts_caught[0]
execute if data storage luigis_mansion:data current_state.ghosts_caught[0] run function 3ds_remake:room/gallery/interact_with_trophy/get_ghost_count/speedy_spirit