execute if score #temp Room matches 1.. run function luigis_mansion:room/interactions_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
execute if entity @s[tag=poltergust] run function luigis_mansion:room/interactions_poltergust
execute if entity @s[tag=manual] run function luigis_mansion:room/interactions_manual
execute if entity @s[tag=gameboy_horror_scan] run function luigis_mansion:room/interactions_gameboy_horror_scan
function #luigis_mansion:extra_interaction_detect