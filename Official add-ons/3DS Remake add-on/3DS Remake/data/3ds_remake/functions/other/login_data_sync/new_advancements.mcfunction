advancement grant @a only 3ds_remake:3ds_remake/root
execute if entity @a[advancements={luigis_mansion:vanilla/clear_hidden_mansion=true}] unless data storage luigis_mansion:data current_state.high_scores[{data_index:1}] run data modify storage 3ds_remake:data current_state.trophy.hard.task_5 set value 1b
execute if entity @a[advancements={luigis_mansion:vanilla/clear_hidden_mansion=true}] unless data storage luigis_mansion:data current_state.high_scores[{data_index:1}] if data storage luigis_mansion:data current_state.high_scores[{data_index:0}] run function 3ds_remake:other/upgrade_path/clone_high_score
execute if entity @a[advancements={luigis_mansion:vanilla/clear_hidden_mansion=true}] run advancement grant @a only 3ds_remake:3ds_remake/unlock_hidden_mansion
execute if entity @a[advancements={luigis_mansion:vanilla/clear_hidden_mansion=false}] unless data storage 3ds_remake:data current_state.trophy.master{done:1b} run advancement grant @a only luigis_mansion:vanilla/unlock_hidden_mansion
execute if data storage 3ds_remake:data current_state.trophy.hard{task_5:1b} run advancement grant @a only 3ds_remake:3ds_remake/clear_hidden_mansion
execute if data storage 3ds_remake:data current_state.trophy.beginner{done:1b} run advancement grant @a only 3ds_remake:3ds_remake/amiibo/toad
execute if data storage 3ds_remake:data current_state.trophy.easy{done:1b} run advancement grant @a only 3ds_remake:3ds_remake/amiibo/mario
execute if data storage 3ds_remake:data current_state.trophy.normal{done:1b} run advancement grant @a only 3ds_remake:3ds_remake/amiibo/boo
execute if data storage 3ds_remake:data current_state.trophy.hard{done:1b} run advancement grant @a only 3ds_remake:3ds_remake/amiibo/luigi
execute if data storage 3ds_remake:data current_state.trophy.master{done:1b} run advancement grant @a only luigis_mansion:vanilla/unlock_hidden_mansion

execute if entity @a[advancements={3ds_remake:3ds_remake/hard_labor=true}] run advancement grant @a only 3ds_remake:3ds_remake/hard_labor
execute if entity @a[advancements={3ds_remake:3ds_remake/no_touchy=true}] run advancement grant @a only 3ds_remake:3ds_remake/no_touchy

execute if entity @a[advancements={3ds_remake:3ds_remake/hard_labor=false}] run function 3ds_remake:room/gallery/interact_with_trophy/get_portrait_hard_count
execute if entity @a[advancements={3ds_remake:3ds_remake/hard_labor=false}] if score #temp Time matches 23 run advancement grant @a only 3ds_remake:3ds_remake/hard_labor
scoreboard players reset #temp Time
execute if entity @a[advancements={3ds_remake:3ds_remake/no_touchy=false}] run function 3ds_remake:room/gallery/interact_with_trophy/get_portrait_no_damage_count
execute if entity @a[advancements={3ds_remake:3ds_remake/no_touchy=false}] if score #temp Time matches 23 run advancement grant @a only 3ds_remake:3ds_remake/no_touchy
scoreboard players reset #temp Time