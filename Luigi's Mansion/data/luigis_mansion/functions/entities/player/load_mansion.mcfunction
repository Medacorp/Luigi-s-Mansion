function luigis_mansion:entities/player/reset_mansion
scoreboard players reset #can_clear_hidden Selected
data modify storage luigis_mansion:data current_state.mansion_data set from storage luigis_mansion:data saved_state.mansion_data
data modify storage luigis_mansion:data current_state.ghosts_caught set from storage luigis_mansion:data saved_state.ghosts_caught
execute as @a run function luigis_mansion:entities/player/load_health
tellraw @a {"translate":"chat.type.text","with":[{"selector":"@s","color":"green"},{"translate":"luigis_mansion:message.save.load"}]}