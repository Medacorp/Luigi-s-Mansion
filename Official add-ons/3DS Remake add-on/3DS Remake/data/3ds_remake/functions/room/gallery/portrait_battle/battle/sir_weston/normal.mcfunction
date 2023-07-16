execute if entity @s[scores={PortraitBattle=0}] run function 3ds_remake:room/gallery/portrait_battle/prepare
execute if entity @s[scores={PortraitBattle=0}] run function 3ds_remake:room/gallery/portrait_battle/prepare_mansion/normal
execute if entity @s[scores={PortraitBattle=0}] run data modify storage 3ds_remake:data loaded_mansion.high_scores set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.sir_weston[{data_index:0,mansion_type:0}]
execute if entity @s[scores={PortraitBattle=0}] in luigis_mansion:normal run teleport @a 735 2 -3 0 0
execute if entity @s[scores={PortraitBattle=0}] run function luigis_mansion:items/poltergust_3000/fire_element
execute if entity @s[scores={PortraitBattle=0}] run data modify storage luigis_mansion:data current_state.current_data.obtained_items merge value {fire_element_medal:1b}