data modify storage luigis_mansion:data current_state.current_state set value {}
data modify storage luigis_mansion:data current_state.mansion_data set from storage luigis_mansion:data saved_state.mansion_data
data modify storage luigis_mansion:data current_state.ghosts_caught set from storage luigis_mansion:data saved_state.ghosts_caught
execute if data storage luigis_mansion:data current_state.mansion_data[-1] run function luigis_mansion:entities/e_gadd/load_mansion_data
tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"luigis_mansion:message.save.load"}]}