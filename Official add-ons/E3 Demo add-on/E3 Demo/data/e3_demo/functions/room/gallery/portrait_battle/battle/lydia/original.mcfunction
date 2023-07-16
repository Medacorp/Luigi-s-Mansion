execute if entity @s[scores={PortraitBattle=2}] run function 3ds_remake:room/gallery/portrait_battle/prepare
execute if entity @s[scores={PortraitBattle=2}] run function e3_demo:room/gallery/portrait_battle/prepare_mansion/original
execute if entity @s[scores={PortraitBattle=2}] run data modify storage 3ds_remake:data loaded_mansion.high_scores set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.lydia[{data_index:2,mansion_type:2}]
execute if entity @s[scores={PortraitBattle=2}] in e3_demo:original run teleport @a 696 111 51 90 0