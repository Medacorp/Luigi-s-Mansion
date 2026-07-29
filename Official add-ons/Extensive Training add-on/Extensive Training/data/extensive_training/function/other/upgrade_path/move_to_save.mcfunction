data merge storage e3_demo:data {data_version:2}
data modify storage luigis_mansion:data saved_state[0].extensive_training set from storage extensive_training:data current_state
execute if data storage luigis_mansion:data saved_state[0].3ds_remake if data storage luigis_mansion:data saved_state[0].extensive_training.trophy{done:1b} run data modify storage luigis_mansion:data saved_state[0].3ds_remake.unlocked_an_amiibo set value 1b
data modify storage luigis_mansion:data saved_state[0].extensive_training.data_version set value 1
data modify storage luigis_mansion:data saved_state[1].extensive_training set from storage extensive_training:data saved_state
execute if data storage luigis_mansion:data saved_state[1].3ds_remake if data storage luigis_mansion:data saved_state[1].extensive_training.trophy{done:1b} run data modify storage luigis_mansion:data saved_state[1].3ds_remake.unlocked_an_amiibo set value 1b
data modify storage luigis_mansion:data saved_state[1].extensive_training.data_version set value 1