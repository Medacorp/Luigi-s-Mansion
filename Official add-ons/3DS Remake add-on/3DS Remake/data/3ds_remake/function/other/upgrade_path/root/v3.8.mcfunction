execute unless data storage 3ds_remake:data {data_version:5} run function 3ds_remake:other/upgrade_path/root/v3.1
data modify storage 3ds_remake:data data_version set value 6
execute if data storage luigis_mansion:data saved_state[0].luigis_mansion.mansion_data[{data_index:0,technical_data:{vacuumed_cellar_dust_1:1b}}] run data modify storage luigis_mansion:data saved_state[0].luigis_mansion.mansion_data[{data_index:0}].money_spawned append value "cellar_dust_1"
execute if data storage luigis_mansion:data saved_state[0].luigis_mansion.mansion_data[{data_index:0,technical_data:{vacuumed_cellar_dust_8:1b}}] run data modify storage luigis_mansion:data saved_state[0].luigis_mansion.mansion_data[{data_index:0}].money_spawned append value "cellar_dust_8"
execute if data storage luigis_mansion:data saved_state[0].luigis_mansion.mansion_data[{data_index:1,technical_data:{vacuumed_cellar_dust_1:1b}}] run data modify storage luigis_mansion:data saved_state[0].luigis_mansion.mansion_data[{data_index:1}].money_spawned append value "cellar_dust_1"
execute if data storage luigis_mansion:data saved_state[0].luigis_mansion.mansion_data[{data_index:1,technical_data:{vacuumed_cellar_dust_8:1b}}] run data modify storage luigis_mansion:data saved_state[0].luigis_mansion.mansion_data[{data_index:1}].money_spawned append value "cellar_dust_8"
execute if data storage luigis_mansion:data saved_state[1].luigis_mansion.mansion_data[{data_index:0,technical_data:{vacuumed_cellar_dust_1:1b}}] run data modify storage luigis_mansion:data saved_state[1].luigis_mansion.mansion_data[{data_index:0}].money_spawned append value "cellar_dust_1"
execute if data storage luigis_mansion:data saved_state[1].luigis_mansion.mansion_data[{data_index:0,technical_data:{vacuumed_cellar_dust_8:1b}}] run data modify storage luigis_mansion:data saved_state[1].luigis_mansion.mansion_data[{data_index:0}].money_spawned append value "cellar_dust_8"
execute if data storage luigis_mansion:data saved_state[1].luigis_mansion.mansion_data[{data_index:1,technical_data:{vacuumed_cellar_dust_1:1b}}] run data modify storage luigis_mansion:data saved_state[1].luigis_mansion.mansion_data[{data_index:1}].money_spawned append value "cellar_dust_1"
execute if data storage luigis_mansion:data saved_state[1].luigis_mansion.mansion_data[{data_index:1,technical_data:{vacuumed_cellar_dust_8:1b}}] run data modify storage luigis_mansion:data saved_state[1].luigis_mansion.mansion_data[{data_index:1}].money_spawned append value "cellar_dust_8"
execute if data storage luigis_mansion:data saved_state[0].luigis_mansion.rooms.training_room{cleared:1b} run data modify storage luigis_mansion:data saved_state[0].luigis_mansion.rooms.gallery.cleared set value 1b
execute if data storage luigis_mansion:data saved_state[1].luigis_mansion.rooms.training_room{cleared:1b} run data modify storage luigis_mansion:data saved_state[1].luigis_mansion.rooms.gallery.cleared set value 1b
execute if data storage luigis_mansion:data saved_state[0].luigis_mansion.mansion_data[{portrait_battle:{}}] run data modify storage luigis_mansion:data saved_state[0].luigis_mansion.mansion_data append from 3ds_remake:data loaded_mansion.data
execute if data storage luigis_mansion:data saved_state[0].luigis_mansion.mansion_data[{portrait_battle:{}}] run data remove storage luigis_mansion:data saved_state[0].luigis_mansion.mansion_data[{portrait_battle:{}}]
data modify storage luigis_mansion:data saved_state[0].3ds_remake set from storage 3ds_remake:data current_state
data modify storage luigis_mansion:data saved_state[0].3ds_remake.obtained_game_boy_horror_part set from storage 3ds_remake:data obtained_gameboy_horror_part
data modify storage luigis_mansion:data saved_state[0].3ds_remake.shown_game_boy_horror_part set from storage 3ds_remake:data shown_gameboy_horror_part
data modify storage luigis_mansion:data saved_state[0].3ds_remake.spoke_with_future_e_gadd set from storage 3ds_remake:data spoke_with_future_e_gadd
data modify storage luigis_mansion:data saved_state[0].3ds_remake.unlocked_an_amiibo set value 0b
execute if data storage luigis_mansion:data saved_state[0].3ds_remake.trophy.beginner{done:1b} run data modify storage luigis_mansion:data saved_state[0].3ds_remake.unlocked_an_amiibo set value 1b
data modify storage luigis_mansion:data saved_state[0].3ds_remake.data_version set value 1
data modify storage luigis_mansion:data saved_state[1].3ds_remake set from storage 3ds_remake:data saved_state
data modify storage luigis_mansion:data saved_state[1].3ds_remake.obtained_game_boy_horror_part set from storage 3ds_remake:data obtained_gameboy_horror_part
data modify storage luigis_mansion:data saved_state[1].3ds_remake.shown_game_boy_horror_part set from storage 3ds_remake:data shown_gameboy_horror_part
data modify storage luigis_mansion:data saved_state[1].3ds_remake.spoke_with_future_e_gadd set from storage 3ds_remake:data spoke_with_future_e_gadd
data modify storage luigis_mansion:data saved_state[1].3ds_remake.unlocked_an_amiibo set value 0b
execute if data storage luigis_mansion:data saved_state[1].3ds_remake.trophy.beginner{done:1b} run data modify storage luigis_mansion:data saved_state[1].3ds_remake.unlocked_an_amiibo set value 1b
data modify storage luigis_mansion:data saved_state[1].3ds_remake.data_version set value 1

execute if data storage luigis_mansion:data saved_state[0].mansion_data[{data_index:1}] run data modify storage luigis_mansion:data update_data set from storage luigis_mansion:data saved_state[0].mansion_data[{data_index:1}]
execute if data storage luigis_mansion:data update_data run function 3ds_remake:other/upgrade_path/data/v3.8
data modify storage luigis_mansion:data saved_state[0].mansion_data[{data_index:1}] set from storage luigis_mansion:data update_data
data remove storage luigis_mansion:data update_data

execute if data storage luigis_mansion:data saved_state[1].mansion_data[{data_index:1}] run data modify storage luigis_mansion:data update_data set from storage luigis_mansion:data saved_state[1].mansion_data[{data_index:1}]
execute if data storage luigis_mansion:data update_data run function 3ds_remake:other/upgrade_path/data/v3.8
data modify storage luigis_mansion:data saved_state[1].mansion_data[{data_index:1}] set from storage luigis_mansion:data update_data
data remove storage luigis_mansion:data update_data