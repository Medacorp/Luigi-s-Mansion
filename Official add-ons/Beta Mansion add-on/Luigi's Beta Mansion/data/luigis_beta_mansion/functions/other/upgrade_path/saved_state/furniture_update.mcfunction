execute unless data storage luigis_mansion:data saved_state.mansion_data[{data_index:2,data_version:2}] run function luigis_beta_mansion:other/upgrade_path/saved_state/v2.0
data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}] merge value {data_version:2}
data modify storage luigis_mansion:data obtained_keys set from storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].obtained_keys
data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].obtained_keys set value []
execute if data storage luigis_mansion:data obtained_keys{parlor:1b} run data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].obtained_keys append value "living_room"
execute if data storage luigis_mansion:data obtained_keys{hallway_2:1b} run data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].obtained_keys append value "hallway_2"
execute if data storage luigis_mansion:data obtained_keys{hallway_3:1b} run data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].obtained_keys append value "hallway_3"
data remove storage luigis_mansion:data obtained_keys
data modify storage luigis_mansion:data used_keys set from storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].used_keys
data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].used_keys set value []
execute if data storage luigis_mansion:data used_keys{parlor:1b} run data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].used_keys append value "living_room"
execute if data storage luigis_mansion:data used_keys{hallway_2:1b} run data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].used_keys append value "hallway_2"
execute if data storage luigis_mansion:data used_keys{hallway_3:1b} run data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].used_keys append value "hallway_3"
data remove storage luigis_mansion:data used_keys
data modify storage luigis_mansion:data money_spawned set from storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].money_spawned
data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].money_spawned set value []
execute if data storage luigis_mansion:data money_spawned{living_room_chest:1b} run data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].money_spawned append value "living_room_room_clear_chest"
execute if data storage luigis_mansion:data money_spawned{study_chest:1b} run data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].money_spawned append value "study_room_clear_chest"
execute if data storage luigis_mansion:data money_spawned{childs_room_chest:1b} run data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].money_spawned append value "childs_room_room_clear_chest"
execute if data storage luigis_mansion:data money_spawned{lavatory_chest:1b} run data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].money_spawned append value "lavatory_room_clear_chest"
execute if data storage luigis_mansion:data money_spawned{dining_room_chest:1b} run data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].money_spawned append value "dining_room_room_clear_chest"
execute if data storage luigis_mansion:data money_spawned{kitchen_chest:1b} run data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].money_spawned append value "kitchen_room_clear_chest"
data remove storage luigis_mansion:data money_spawned
data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].portrait_ghosts.neville.loot set value {drop_at_0:1b,contents:{luigis_beta_mansion:{ghost_coin:10}}}
data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].portrait_ghosts.lydia.loot set value {drop_at_0:1b,contents:{luigis_beta_mansion:{ghost_coin:10}}}
data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].portrait_ghosts.miss_petunia.loot set value {drop_at_0:1b,contents:{luigis_beta_mansion:{ghost_coin:10}}}
data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].portrait_ghosts.spooky.loot set value {drop_at_0:1b,contents:{luigis_beta_mansion:{ghost_coin:10}}}
data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].ghosts.beta_ghost.loot set value {drop_at_0:1b,contents:{luigis_beta_mansion:{ghost_coin:3}}}
data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].ghosts.beta_puncher.loot set value {drop_at_0:1b,contents:{luigis_beta_mansion:{ghost_coin:3}}}
data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].ghosts.beta_body_slammer.loot set value {drop_at_0:1b,contents:{luigis_beta_mansion:{ghost_coin:3}}}
data modify storage luigis_mansion:data saved_state.mansion_data[{data_index:2}].ghosts.beta_basher.loot set value {drop_at_0:1b,contents:{luigis_beta_mansion:{ghost_coin:2}}}
scoreboard objectives remove Attack