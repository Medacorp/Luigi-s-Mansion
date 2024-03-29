execute if entity @s[scores={PortraitBattle=-2}] run function 3ds_remake:room/gallery/portrait_battle/prepare
execute if entity @s[scores={PortraitBattle=-2}] run function 3ds_remake:room/gallery/portrait_battle/prepare_mansion/3ds_hidden
execute if entity @s[scores={PortraitBattle=-2}] run data modify storage 3ds_remake:data loaded_mansion.high_scores set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.mr_luggs[{mansion:{namespace:"3ds_remake",id:"hidden"}}]
execute if entity @s[scores={PortraitBattle=-2}] in luigis_mansion:normal run teleport @a 704 11 31 0 0
execute if entity @s[scores={PortraitBattle=-2}] run function luigis_mansion:items/poltergust_3000/fire_element
execute if entity @s[scores={PortraitBattle=-2}] run data modify storage luigis_mansion:data current_state.current_data.obtained_items merge value {fire_element_medal:1b}
execute if entity @s[scores={PortraitBattle=-2}] run data modify storage luigis_mansion:data current_state.current_data.money_spawned set value ["dining_room_china_cabinet_2","dining_room_gold_mouse"]