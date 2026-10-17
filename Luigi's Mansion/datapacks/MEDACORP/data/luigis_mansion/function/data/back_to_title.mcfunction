function luigis_mansion:room/reset
function #luigis_mansion:room/reset_variable_to_default
data remove storage luigis_mansion:data current_state
data modify storage luigis_mansion:data dialogs set value [{name:{namespace:"luigis_mansion",id:"dummy"},progress:-1},{name:{namespace:"luigis_mansion",id:"title_screen"}}]
execute if data storage luigis_mansion:data memory[0] run data modify storage luigis_mansion:data memory[].poltergust_element set value "none"
tag @e[tag=luigi] remove cannot_be_removed
tag @e[tag=luigi] add remove_from_existence
scoreboard players set @a Health 100
execute as @a run function luigis_mansion:room/exterior/warp with storage luigis_mansion:data loaded_exterior