execute if entity @s[scores={PortraitBattle=1}] run function 3ds_remake:room/gallery/portrait_battle/prepare
execute if entity @s[scores={PortraitBattle=1}] run function 3ds_remake:room/gallery/portrait_battle/prepare_mansion/gcn_hidden
execute if entity @s[scores={PortraitBattle=1}] run data modify storage 3ds_remake:data loaded_mansion.high_scores set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.sue_pea[{mansion:{namespace:"luigis_mansion",id:"hidden"}}]
execute if entity @s[scores={PortraitBattle=1}] in luigis_mansion:hidden run teleport @a 741 20 60 0 0
execute if entity @s[scores={PortraitBattle=1}] run function luigis_mansion:items/poltergust_3000/water_element
execute if entity @s[scores={PortraitBattle=1}] run data modify storage luigis_mansion:data current_state.current_data.obtained_items merge value {water_element_medal:1b}
execute if entity @s[scores={PortraitBattle=1}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {sue_pea_spoke:1b}
execute if entity @s[scores={PortraitBattle=1}] run data modify storage luigis_mansion:data current_state.current_data.money_spawned set value ["guest_room_nightstand","guest_room_column_mounted_blue_potted_fern"]