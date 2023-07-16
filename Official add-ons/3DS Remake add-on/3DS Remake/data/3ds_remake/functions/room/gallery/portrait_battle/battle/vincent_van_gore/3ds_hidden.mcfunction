execute if entity @s[scores={PortraitBattle=-2}] run function 3ds_remake:room/gallery/portrait_battle/prepare
execute if entity @s[scores={PortraitBattle=-2}] run function 3ds_remake:room/gallery/portrait_battle/prepare_mansion/3ds_hidden
execute if entity @s[scores={PortraitBattle=-2}] run data modify storage 3ds_remake:data loaded_mansion.high_scores set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.vincent_van_gore[{data_index:1,mansion_type:1}]
execute if entity @s[scores={PortraitBattle=-2}] in luigis_mansion:normal run teleport @a 699 29 -58 -180 0
execute if entity @s[scores={PortraitBattle=-2}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {vincent_van_gore_spoke:1b}