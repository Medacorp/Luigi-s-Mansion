execute unless data storage luigis_mansion:data current_state.current_data{data_version:2} run function luigis_beta_mansion:other/upgrade_path/current_data/v2.0
data modify storage luigis_mansion:data current_state.current_data merge value {data_version:3}
data modify storage luigis_mansion:data obtained_keys set from storage luigis_mansion:data current_state.current_data.obtained_keys
data modify storage luigis_mansion:data current_state.current_data.obtained_keys set value []
execute if data storage luigis_mansion:data obtained_keys{parlor:1b} run data modify storage luigis_mansion:data current_state.current_data.obtained_keys append value "living_room"
execute if data storage luigis_mansion:data obtained_keys{hallway_2:1b} run data modify storage luigis_mansion:data current_state.current_data.obtained_keys append value "hallway_2"
execute if data storage luigis_mansion:data obtained_keys{hallway_3:1b} run data modify storage luigis_mansion:data current_state.current_data.obtained_keys append value "hallway_3"
data remove storage luigis_mansion:data obtained_keys
data modify storage luigis_mansion:data used_keys set from storage luigis_mansion:data current_state.current_data.used_keys
data modify storage luigis_mansion:data current_state.current_data.used_keys set value []
execute if data storage luigis_mansion:data used_keys{parlor:1b} run data modify storage luigis_mansion:data current_state.current_data.used_keys append value "living_room"
execute if data storage luigis_mansion:data used_keys{hallway_2:1b} run data modify storage luigis_mansion:data current_state.current_data.used_keys append value "hallway_2"
execute if data storage luigis_mansion:data used_keys{hallway_3:1b} run data modify storage luigis_mansion:data current_state.current_data.used_keys append value "hallway_3"
data remove storage luigis_mansion:data used_keys
data modify storage luigis_mansion:data money_spawned set from storage luigis_mansion:data current_state.current_data.money_spawned
data modify storage luigis_mansion:data current_state.current_data.money_spawned set value []
execute if data storage luigis_mansion:data money_spawned{living_room_chest:1b} run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "living_room_chest"
execute if data storage luigis_mansion:data money_spawned{study_chest:1b} run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "study_chest"
execute if data storage luigis_mansion:data money_spawned{childs_room_chest:1b} run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "childs_room_chest"
execute if data storage luigis_mansion:data money_spawned{lavatory_chest:1b} run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "lavatory_chest"
execute if data storage luigis_mansion:data money_spawned{dining_room_chest:1b} run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "dining_room_chest"
execute if data storage luigis_mansion:data money_spawned{kitchen_chest:1b} run data modify storage luigis_mansion:data current_state.current_data.money_spawned append value "kitchen_chest"
data remove storage luigis_mansion:data money_spawned
data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.neville.loot set value {drop_at_0:1b,contents:{luigis_beta_mansion:{ghost_coin:10}}}
data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.lydia.loot set value {drop_at_0:1b,contents:{luigis_beta_mansion:{ghost_coin:10}}}
data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.miss_petunia.loot set value {drop_at_0:1b,contents:{luigis_beta_mansion:{ghost_coin:10}}}
data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.spooky.loot set value {drop_at_0:1b,contents:{luigis_beta_mansion:{ghost_coin:10}}}
data modify storage luigis_mansion:data current_state.current_data.ghosts.beta_ghost.loot set value {drop_at_0:1b,contents:{luigis_beta_mansion:{ghost_coin:3}}}
data modify storage luigis_mansion:data current_state.current_data.ghosts.beta_puncher.loot set value {drop_at_0:1b,contents:{luigis_beta_mansion:{ghost_coin:3}}}
data modify storage luigis_mansion:data current_state.current_data.ghosts.beta_body_slammer.loot set value {drop_at_0:1b,contents:{luigis_beta_mansion:{ghost_coin:3}}}
data modify storage luigis_mansion:data current_state.current_data.ghosts.beta_basher.loot set value {drop_at_0:1b,contents:{luigis_beta_mansion:{ghost_coin:2}}}
scoreboard objectives remove Attack