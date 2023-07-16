execute if entity @a[advancements={luigis_mansion:lab/cleared_hidden_mansion=true}] unless data storage luigis_mansion:data current_state.high_scores[{data_index:1}] run data modify storage 3ds_remake:data current_state.trophy.hard.task_5 set value 1b
execute if entity @a[advancements={luigis_mansion:lab/cleared_hidden_mansion=true}] unless data storage luigis_mansion:data current_state.high_scores[{data_index:1}] if data storage luigis_mansion:data current_state.high_scores[{data_index:0}] run function 3ds_remake:other/upgrade_path/clone_high_score
execute if data storage 3ds_remake:data current_state.trophy.hard{task_5:1b} run advancement grant @a only 3ds_remake:lab/cleared_hidden_mansion
execute if data storage 3ds_remake:data current_state.trophy.beginner{done:1b} run advancement grant @a only 3ds_remake:amiibo/root
execute if data storage 3ds_remake:data current_state.trophy.beginner{done:1b} run advancement grant @a only 3ds_remake:amiibo/toad
execute if data storage 3ds_remake:data current_state.trophy.easy{done:1b} run advancement grant @a only 3ds_remake:amiibo/mario
execute if data storage 3ds_remake:data current_state.trophy.normal{done:1b} run advancement grant @a only 3ds_remake:amiibo/boo
execute if data storage 3ds_remake:data current_state.trophy.hard{done:1b} run advancement grant @a only 3ds_remake:amiibo/luigi
execute if entity @a[advancements={3ds_remake:lab/unlocked_gcn_hidden_mansion=true}] run advancement grant @a only 3ds_remake:lab/unlocked_gcn_hidden_mansion
execute if data storage 3ds_remake:data current_state.trophy.master{done:1b} run advancement grant @a only 3ds_remake:lab/unlocked_gcn_hidden_mansion