execute unless data storage luigis_mansion:data update_data{data_version:2} run function e3_demo:other/upgrade_path/current_data/v2.0
data modify storage luigis_mansion:data update_data merge value {data_version:3,portrait_ghosts:{neville:{loot:{drop_at_0:1b,contents:{e3_demo:{ghost_coin:10}}},damage:{collision:0}},lydia:{loot:{drop_at_0:1b,contents:{e3_demo:{ghost_coin:10}}},damage:{}},miss_petunia:{loot:{drop_at_0:1b,contents:{e3_demo:{ghost_coin:10}}},damage:{}},spooky:{loot:{drop_at_0:1b,contents:{e3_demo:{ghost_coin:10}}},damage:{}}},ghosts:{beta_ghost:{loot:{drop_at_0:1b,contents:{e3_demo:{ghost_coin:3}}},vanish_time:120,damage:{collision:5,attack:10}},beta_puncher:{loot:{drop_at_0:1b,contents:{e3_demo:{ghost_coin:3}}},vanish_time:120,damage:{collision:5,attack:10}},beta_body_slammer:{loot:{drop_at_0:1b,contents:{e3_demo:{ghost_coin:3}}},vanish_time:180,damage:{collision:5,attack:10}},beta_basher:{loot:{drop_at_0:1b,contents:{e3_demo:{ghost_coin:2}}},vanish_time:120,damage:{collision:5,attack:10}},beta_bat:{damage:{collision:5}},beta_mouse:{damage:{collision:5}},beta_shining_ghost:{damage:{collision:5}},beta_boo:{damage:{collision:5}},beta_flying_fish:{damage:{collision:5}},haunted_teddy_bear:{damage:{}},haunted_frying_pan:{damage:{}}}}
data modify storage luigis_mansion:data update_data.new_ghosts.luigis_mansion set from storage luigis_mansion:data update_data.portrait_ghosts
data modify storage luigis_mansion:data update_data.portrait_ghosts set from storage luigis_mansion:data update_data.new_ghosts
data remove storage luigis_mansion:data update_data.new_ghosts
data modify storage luigis_mansion:data update_data.new_ghosts.luigis_mansion set from storage luigis_mansion:data update_data.ghosts
data modify storage luigis_mansion:data update_data.new_ghosts.e3_demo.ghost set from storage luigis_mansion:data update_data.new_ghosts.luigis_mansion.beta_ghost
data remove storage luigis_mansion:data update_data.new_ghosts.luigis_mansion.beta_ghost
data modify storage luigis_mansion:data update_data.new_ghosts.e3_demo.basher set from storage luigis_mansion:data update_data.new_ghosts.luigis_mansion.beta_basher
data remove storage luigis_mansion:data update_data.new_ghosts.luigis_mansion.beta_basher
data modify storage luigis_mansion:data update_data.new_ghosts.e3_demo.puncher set from storage luigis_mansion:data update_data.new_ghosts.luigis_mansion.beta_puncher
data remove storage luigis_mansion:data update_data.new_ghosts.luigis_mansion.beta_puncher
data modify storage luigis_mansion:data update_data.new_ghosts.e3_demo.body_slammer set from storage luigis_mansion:data update_data.new_ghosts.luigis_mansion.beta_body_slammer
data remove storage luigis_mansion:data update_data.new_ghosts.luigis_mansion.beta_body_slammer
data modify storage luigis_mansion:data update_data.new_ghosts.e3_demo.bat set from storage luigis_mansion:data update_data.new_ghosts.luigis_mansion.beta_bat
data remove storage luigis_mansion:data update_data.new_ghosts.luigis_mansion.beta_bat
data modify storage luigis_mansion:data update_data.new_ghosts.e3_demo.mouse set from storage luigis_mansion:data update_data.new_ghosts.luigis_mansion.beta_mouse
data remove storage luigis_mansion:data update_data.new_ghosts.luigis_mansion.beta_mouse
data modify storage luigis_mansion:data update_data.new_ghosts.e3_demo.shining_ghost set from storage luigis_mansion:data update_data.new_ghosts.luigis_mansion.beta_shining_ghost
data remove storage luigis_mansion:data update_data.new_ghosts.luigis_mansion.beta_shining_ghost
data modify storage luigis_mansion:data update_data.new_ghosts.e3_demo.flying_fish set from storage luigis_mansion:data update_data.new_ghosts.luigis_mansion.beta_flying_fish
data remove storage luigis_mansion:data update_data.new_ghosts.luigis_mansion.beta_flying_fish
data modify storage luigis_mansion:data update_data.new_ghosts.e3_demo.boo set from storage luigis_mansion:data update_data.new_ghosts.luigis_mansion.beta_boo
data remove storage luigis_mansion:data update_data.new_ghosts.luigis_mansion.beta_boo
data modify storage luigis_mansion:data update_data.ghosts set from storage luigis_mansion:data update_data.new_ghosts
data remove storage luigis_mansion:data update_data.new_ghosts
data modify storage luigis_mansion:data obtained_keys set from storage luigis_mansion:data update_data.obtained_keys
data modify storage luigis_mansion:data update_data.obtained_keys set value []
execute if data storage luigis_mansion:data obtained_keys{parlor:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "living_room"
execute if data storage luigis_mansion:data obtained_keys{hallway_2:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "hallway_2"
execute if data storage luigis_mansion:data obtained_keys{hallway_3:1b} run data modify storage luigis_mansion:data update_data.obtained_keys append value "hallway_3"
data remove storage luigis_mansion:data obtained_keys
data modify storage luigis_mansion:data used_keys set from storage luigis_mansion:data update_data.used_keys
data modify storage luigis_mansion:data update_data.used_keys set value []
execute if data storage luigis_mansion:data used_keys{parlor:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "living_room"
execute if data storage luigis_mansion:data used_keys{hallway_2:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "hallway_2"
execute if data storage luigis_mansion:data used_keys{hallway_3:1b} run data modify storage luigis_mansion:data update_data.used_keys append value "hallway_3"
data remove storage luigis_mansion:data used_keys
data modify storage luigis_mansion:data money_spawned set from storage luigis_mansion:data update_data.money_spawned
data modify storage luigis_mansion:data update_data.money_spawned set value []
execute if data storage luigis_mansion:data money_spawned{living_room_chest:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "living_room_room_clear_chest"
execute if data storage luigis_mansion:data money_spawned{study_chest:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "study_room_clear_chest"
execute if data storage luigis_mansion:data money_spawned{childs_room_chest:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "childs_room_room_clear_chest"
execute if data storage luigis_mansion:data money_spawned{lavatory_chest:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "lavatory_room_clear_chest"
execute if data storage luigis_mansion:data money_spawned{dining_room_chest:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "dining_room_room_clear_chest"
execute if data storage luigis_mansion:data money_spawned{kitchen_chest:1b} run data modify storage luigis_mansion:data update_data.money_spawned append value "kitchen_room_clear_chest"
data remove storage luigis_mansion:data money_spawned
data modify storage luigis_mansion:data new_money_grabbed set value []
data modify storage luigis_mansion:data money_grabbed set from storage luigis_mansion:data update_data.money_grabbed
function e3_demo:other/upgrade_path/rename_money_namespace
data modify storage luigis_mansion:data update_data.money_grabbed set from storage luigis_mansion:data new_money_grabbed
data remove storage luigis_mansion:data money_grabbed
data remove storage luigis_mansion:data new_money_grabbed
data modify storage luigis_mansion:data ghosts_caught set from storage luigis_mansion:data update_data.ghosts_caught
function luigis_mansion:other/upgrade_path/change_up_ghost_data
data modify storage luigis_mansion:data update_data.ghosts_caught set from storage luigis_mansion:data new_ghosts_caught
data remove storage luigis_mansion:data ghosts_caught
data remove storage luigis_mansion:data new_ghosts_caught