execute if entity @s[scores={PortraitBattle=-2}] run function luigis_mansion_3ds_remake:room/gallery/portrait_battle/prepare
execute if entity @s[scores={PortraitBattle=-2}] run function luigis_mansion_3ds_remake:room/gallery/portrait_battle/prepare_mansion/3ds_hidden
execute if entity @s[scores={PortraitBattle=-2}] run data modify storage luigis_mansion_3ds_remake:data loaded_mansion.high_scores set from storage luigis_mansion_3ds_remake:data current_state.portrait_ghosts_defeated_in.king_boo[{data_index:1,mansion_type:1}]
execute if entity @s[scores={PortraitBattle=-2}] in luigis_mansion:normal run teleport @a 490 37 -1 20 0
execute if entity @s[scores={PortraitBattle=-2}] run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.king_boo.loot set value {}