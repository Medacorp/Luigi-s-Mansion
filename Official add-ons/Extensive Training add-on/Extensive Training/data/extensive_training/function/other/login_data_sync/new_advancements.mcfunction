advancement grant @a only extensive_training:extensive_training/root
execute if data storage luigis_mansion:data current_state.extensive_training.trophy{done:1b} run advancement grant @a only extensive_training:3ds_remake/amiibo/koopa

execute if data storage luigis_mansion:data current_state.extensive_training.trophy{done:1b} if data storage luigis_mansion:data current_state.3ds_remake run data modify storage luigis_mansion:data current_state.3ds_remake.unlocked_an_amiibo set value 1b