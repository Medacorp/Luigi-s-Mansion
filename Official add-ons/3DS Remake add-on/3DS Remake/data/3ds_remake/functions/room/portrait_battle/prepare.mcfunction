$function $(mansion_namespace):room/portrait_battle/prepare_mansion/$(mansion_id)
$data modify storage luigis_mansion:data current_state.current_data.portrait_battle set value {namespace:"$(portrait_ghost_namespace)",id:"$(portrait_ghost_id)"}
data modify storage luigis_mansion:data current_state.current_data.portrait_battle.mode set from storage luigis_mansion:data selected_option.mode
data modify storage luigis_mansion:data current_state.current_data.portrait_battle.position set from storage luigis_mansion:data selected_option.portrait_battle_position
$data modify storage 3ds_remake:data loaded_mansion.high_scores set from storage 3ds_remake:data current_state.portrait_ghosts_defeated_in.$(portrait_ghost_namespace).$(portrait_ghost_id)[{mansion:{namespace:"$(mansion_namespace)",id:"$(mansion_id)"}}]

$function $(mansion_namespace):room/portrait_battle/battle/$(portrait_ghost_namespace)/$(portrait_ghost_id)/$(mansion_id)

gamemode spectator @a
gamemode adventure @s
scoreboard players set @s Health 100
scoreboard players set @s LoadedChunks 0
tag @s add portrait_battle
tag @s remove loaded_chunks
data modify storage luigis_mansion:data dialogs set value [{name:{namespace:"3ds_remake",id:"portrait_battle/start"},progress:0}]
function 3ds_remake:selection_menu/gallery_portrait/exit
tag @a[tag=using_selection_menu] add close_selection_menu