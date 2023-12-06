scoreboard players add #debug_entities Selected 1
execute if score #debug_entities Selected matches 2 run scoreboard players set #debug_entities Selected 0

execute if score #debug_entities Selected matches 0 run tellraw @a {"type":"translatable","translate":"luigis_mansion:message.debug.format","with":[{"type":"translatable","translate":"luigis_mansion:message.debug","color":"gold"},{"type":"translatable","translate":"luigis_mansion:message.debug.debugger.turned_off.entities"}]}
execute if score #debug_entities Selected matches 1 run tellraw @a {"type":"translatable","translate":"luigis_mansion:message.debug.format","with":[{"type":"translatable","translate":"luigis_mansion:message.debug","color":"gold"},{"type":"translatable","translate":"luigis_mansion:message.debug.debugger.turned_on.entities"}]}

execute as @a[nbt={Inventory:[{tag:{luigis_mansion:{option:{update_debug_variables:1b}}}}]}] run function luigis_mansion:selection_menu/game_boy_horror/show_settings/toggle/debug/entities_update