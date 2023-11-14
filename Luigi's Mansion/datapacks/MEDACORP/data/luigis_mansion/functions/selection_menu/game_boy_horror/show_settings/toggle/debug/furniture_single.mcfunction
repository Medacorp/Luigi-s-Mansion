function luigis_mansion:selection_menu/game_boy_horror/show_settings/debug/scan_furniture

tag @e[tag=hit,tag=furniture,tag=debug_furniture] add toggle_debug_furniture
tag @e[tag=hit,tag=furniture] add debug_furniture
tag @e[tag=hit,tag=furniture,tag=toggle_debug_furniture] remove debug_furniture
tag @e[tag=hit,tag=furniture,tag=toggle_debug_furniture] remove toggle_debug_furniture

execute unless entity @e[tag=hit,tag=furniture] run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.debugger.turned_on.furniture.nothing"}]}
execute as @e[tag=hit,tag=furniture,tag=!debug_furniture] run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.debugger.turned_off.furniture.single","with":[{"selector":"@s"}]}]}
execute as @e[tag=hit,tag=furniture,tag=debug_furniture] run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.debugger.turned_on.furniture.single","with":[{"selector":"@s"}]}]}

tag @e[tag=hit,tag=furniture] remove hit
tag @e[tag=scanned,tag=!furniture] remove scanned