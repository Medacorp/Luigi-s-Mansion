execute if entity @s[scores={PortraitBattle=0}] run function 3ds_remake:room/gallery/portrait_battle/prepare
execute if entity @s[scores={PortraitBattle=0}] run function 3ds_remake:room/gallery/portrait_battle/prepare_mansion/normal
execute if entity @s[scores={PortraitBattle=0}] run data modify storage 3ds_remake:data loaded_mansion.high_scores set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.luigis_mansion.spooky[{mansion:{namespace:"luigis_mansion",id:"normal"}}]
execute if entity @s[scores={PortraitBattle=0}] in luigis_mansion:normal run teleport @a 683 102 53 90 0
execute if entity @s[scores={PortraitBattle=0}] run scoreboard players set #boneyard_water Searched 1