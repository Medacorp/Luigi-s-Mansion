execute if entity @s[scores={PortraitBattle=-2}] run function luigis_mansion_3ds_remake:room/gallery/portrait_battle/prepare
execute if entity @s[scores={PortraitBattle=-2}] run function luigis_mansion_3ds_remake:room/gallery/portrait_battle/prepare_mansion/3ds_hidden
execute if entity @s[scores={PortraitBattle=-2}] run data modify storage luigis_mansion_3ds_remake:data loaded_mansion.high_scores set from storage luigis_mansion_3ds_remake:data current_state.portrait_ghosts_defeated_in.sue_pea[{data_index:1,mansion_type:1}]
execute if entity @s[scores={PortraitBattle=-2}] in luigis_mansion:normal run teleport @a 741 20 -45 -180 0
execute if entity @s[scores={PortraitBattle=-2}] run function luigis_mansion:items/poltergust_3000/water_element
execute if entity @s[scores={PortraitBattle=-2}] run data modify storage luigis_mansion:data current_state.current_data.obtained_items merge value {water_element_medal:1b}
execute if entity @s[scores={PortraitBattle=-2}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {sue_pea_spoke:1b}
execute if entity @s[scores={PortraitBattle=-2}] run data modify storage luigis_mansion:data current_state.current_data.money_spawned set value ["guest_room_nightstand","guest_room_column_mounted_blue_potted_fern"]