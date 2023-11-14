scoreboard players add #debug_messages Selected 1
execute if score #debug_messages Selected matches 3 run scoreboard players set #debug_messages Selected 0

execute if score #debug_messages Selected matches 0 run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.debugger.turned_off.messages"}]}
execute if score #debug_messages Selected matches 1 run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.debugger.turned_on.messages.errors"}]}
execute if score #debug_messages Selected matches 2 run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.debugger.turned_on.messages"}]}

execute as @a[nbt={Inventory:[{tag:{luigis_mansion:{option:{update_debug_variables:1b}}}}]}] run function luigis_mansion:selection_menu/game_boy_horror/show_settings/toggle/debug/messages_update