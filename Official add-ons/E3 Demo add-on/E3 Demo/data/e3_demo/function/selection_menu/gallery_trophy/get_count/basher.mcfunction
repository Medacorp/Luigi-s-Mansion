execute store result score #temp Money run data get storage luigis_mansion:data current_state.current_data.ghosts_caught[0].caught.e3_demo.basher
scoreboard players operation #temp Time += #temp Money
data modify storage luigis_mansion:data current_state.current_data.new_ghosts_caught append from storage luigis_mansion:data current_state.current_data.ghosts_caught[0]
data remove storage luigis_mansion:data current_state.current_data.ghosts_caught[0]
execute if data storage luigis_mansion:data current_state.current_data.ghosts_caught[0] run function e3_demo:selection_menu/gallery_trophy/get_count/basher