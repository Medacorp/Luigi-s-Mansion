# Speedy spirit mapping
execute if data storage luigis_mansion:data {temp:["wardrobe_room_speedy_spirit"]} store success score #temp Time run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "anteroom_speedy_spirit"
execute if data storage luigis_mansion:data {temp:["study_speedy_spirit"]} store success score #temp Time run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "master_bedroom_speedy_spirit"
execute if data storage luigis_mansion:data {temp:["nursery_speedy_spirit"]} store success score #temp Time run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "tea_room_speedy_spirit"
execute if data storage luigis_mansion:data {temp:["storage_room_speedy_spirit"]} store success score #temp Time run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "bathroom_1_speedy_spirit"
execute if data storage luigis_mansion:data {temp:["hidden_room_speedy_spirit"]} store success score #temp Time run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "the_twins_room_speedy_spirit"
execute if data storage luigis_mansion:data {temp:["conservatory_speedy_spirit"]} store success score #temp Time run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "mirror_room_speedy_spirit"
execute if data storage luigis_mansion:data {temp:["dining_room_speedy_spirit"]} store success score #temp Time run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "butlers_room_speedy_spirit"
execute if data storage luigis_mansion:data {temp:["kitchen_speedy_spirit"]} store success score #temp Time run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "conservatory_speedy_spirit"
execute if data storage luigis_mansion:data {temp:["nanas_room_speedy_spirit"]} store success score #temp Time run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "astral_hall_speedy_spirit"
execute if data storage luigis_mansion:data {temp:["billiards_room_speedy_spirit"]} store success score #temp Time run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "projection_room_speedy_spirit"
execute if data storage luigis_mansion:data {temp:["the_twins_room_speedy_spirit"]} store success score #temp Time run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "washroom_2_speedy_spirit"
execute if data storage luigis_mansion:data {temp:["cellar_speedy_spirit"]} store success score #temp Time run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "sitting_room_speedy_spirit"
execute if data storage luigis_mansion:data {temp:["sealed_room_speedy_spirit"]} store success score #temp Time run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "cold_storage_speedy_spirit"

# Mario item chest swaps
execute if data storage luigis_mansion:data {temp:["courtyard_room_clear_chest"]} store success score #temp Time run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "projection_room_room_clear_chest"
execute if data storage luigis_mansion:data {temp:["projection_room_room_clear_chest"]} store success score #temp Time run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "courtyard_room_clear_chest"
execute if data storage luigis_mansion:data {temp:["billiards_room_room_clear_chest"]} store success score #temp Time run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "the_twins_room_room_clear_chest"
execute if data storage luigis_mansion:data {temp:["the_twins_room_room_clear_chest"]} store success score #temp Time run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "billiards_room_room_clear_chest"
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data current_state.current_data.money_spawned append from storage luigis_mansion:data temp[0]
data remove storage luigis_mansion:data temp[0]
scoreboard players set #temp Time 0
execute if data storage luigis_mansion:data temp[0] run function 3ds_remake:other/upgrade_path/convert_money_list