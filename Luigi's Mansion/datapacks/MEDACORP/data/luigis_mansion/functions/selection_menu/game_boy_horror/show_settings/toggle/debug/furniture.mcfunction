scoreboard players add #debug_furniture Selected 1
execute if score #debug_furniture Selected matches 2 run scoreboard players set #debug_furniture Selected 0

execute if score #debug_furniture Selected matches 0 run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.debugger.turned_off.furniture"}]}
execute if score #debug_furniture Selected matches 1 run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.debugger.turned_on.furniture"}]}

execute as @a[nbt={Inventory:[{tag:{luigis_mansion:{option:{update_debug_variables:1b}}}}]}] run function luigis_mansion:selection_menu/game_boy_horror/show_settings/toggle/debug/furniture_update