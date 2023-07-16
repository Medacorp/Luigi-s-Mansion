execute if entity @s[scores={PortraitBattle=0}] run function 3ds_remake:room/gallery/portrait_battle/prepare
execute if entity @s[scores={PortraitBattle=0}] run function 3ds_remake:room/gallery/portrait_battle/prepare_mansion/normal
execute if entity @s[scores={PortraitBattle=0}] run data modify storage 3ds_remake:data loaded_mansion.high_scores set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.biff_atlas[{data_index:0,mansion_type:0}]
execute if entity @s[scores={PortraitBattle=0}] in luigis_mansion:normal run teleport @a 640 11 -58 -90 0
execute if entity @s[scores={PortraitBattle=0}] run data modify storage luigis_mansion:data current_state.current_data.money_spawned set value ["rec_room_workout_cabinet","rec_room_caged_lamp_1","rec_room_speedy_spirit"]
execute if entity @s[scores={PortraitBattle=0}] run data modify storage luigis_mansion:data current_state.current_data.obtained_keys set value ["hallway_8"]