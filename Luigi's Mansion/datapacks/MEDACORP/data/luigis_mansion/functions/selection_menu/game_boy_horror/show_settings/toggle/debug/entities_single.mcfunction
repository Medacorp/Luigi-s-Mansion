function luigis_mansion:selection_menu/game_boy_horror/show_settings/debug/scan_entity

tag @e[tag=scanned,tag=!furniture,tag=debug_entity] add toggle_debug_entity
tag @e[tag=scanned,tag=!furniture] add debug_entity
tag @e[tag=scanned,tag=!furniture,tag=toggle_debug_entity] remove debug_entity
tag @e[tag=scanned,tag=!furniture,tag=toggle_debug_entity] remove toggle_debug_entity

execute unless entity @e[tag=scanned,tag=!furniture] run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.debugger.turned_on.entities.nothing"}]}
execute as @e[tag=scanned,tag=!furniture,tag=!debug_entity] run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.debugger.turned_off.entities.single","with":[{"selector":"@s"}]}]}
execute as @e[tag=scanned,tag=!furniture,tag=debug_entity] run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.debugger.turned_on.entities.single","with":[{"selector":"@s"}]}]}

tag @e[tag=hit,tag=furniture] remove hit
tag @e[tag=scanned,tag=!furniture] remove scanned