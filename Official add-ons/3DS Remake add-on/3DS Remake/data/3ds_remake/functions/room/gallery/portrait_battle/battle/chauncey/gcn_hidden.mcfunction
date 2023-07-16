execute if entity @s[scores={PortraitBattle=1}] run function 3ds_remake:room/gallery/portrait_battle/prepare
execute if entity @s[scores={PortraitBattle=1}] run function 3ds_remake:room/gallery/portrait_battle/prepare_mansion/gcn_hidden
execute if entity @s[scores={PortraitBattle=1}] run data modify storage 3ds_remake:data loaded_mansion.high_scores set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.chauncey[{data_index:0,mansion_type:1}]
execute if entity @s[scores={PortraitBattle=1}] in luigis_mansion:hidden run teleport @a 805.0 18 -48.0 90 0