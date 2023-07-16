advancement grant @a only e3_demo:lab/unlocked_original_mansion
execute if entity @a[advancements={e3_demo:lab/cleared_original_mansion=true},limit=1] run advancement grant @a only e3_demo:lab/cleared_original_mansion
execute if data storage e3_demo:data current_state.trophy{done:1b} run advancement grant @a only 3ds_remake:amiibo/root
execute if data storage e3_demo:data current_state.trophy{done:1b} run advancement grant @a only e3_demo:amiibo/e_gadd