$function luigis_mansion:items/money/$(size) {namespace:$(namespace),id:$(id),value:$(value)}
$execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.$(rank_namespace).$(rank_id).rank
$execute if score #temp Time matches ..$(rank) run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.$(rank_namespace).$(rank_id).rank set value $(rank)
data remove storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.null
scoreboard players reset #temp Time