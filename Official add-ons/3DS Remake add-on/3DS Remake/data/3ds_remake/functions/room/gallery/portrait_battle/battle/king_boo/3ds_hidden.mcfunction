execute if entity @s[scores={PortraitBattle=-2}] run function 3ds_remake:room/gallery/portrait_battle/prepare
execute if entity @s[scores={PortraitBattle=-2}] run function 3ds_remake:room/gallery/portrait_battle/prepare_mansion/3ds_hidden
execute if entity @s[scores={PortraitBattle=-2}] run data modify storage 3ds_remake:data loaded_mansion.high_scores set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.king_boo[{mansion:{namespace:"3ds_remake",id:"hidden"}}]
execute if entity @s[scores={PortraitBattle=-2}] in luigis_mansion:normal run teleport @a 490 37 -1 20 0
execute if entity @s[scores={PortraitBattle=-2}] run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.king_boo.loot set value {}