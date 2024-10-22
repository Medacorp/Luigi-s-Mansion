scoreboard players add #debug_phase_through_walls Selected 1
execute if score #debug_phase_through_walls Selected matches 2 run scoreboard players set #debug_phase_through_walls Selected 0

execute if score #debug_phase_through_walls Selected matches 0 run tellraw @a {"type":"translatable","translate":"luigis_mansion:message.debug.format","with":[{"type":"translatable","translate":"luigis_mansion:message.debug","color":"gold"},{"type":"translatable","translate":"luigis_mansion:message.debug.debugger.turned_off.phase_through_walls"}]}
execute if score #debug_phase_through_walls Selected matches 1 run tellraw @a {"type":"translatable","translate":"luigis_mansion:message.debug.format","with":[{"type":"translatable","translate":"luigis_mansion:message.debug","color":"gold"},{"type":"translatable","translate":"luigis_mansion:message.debug.debugger.turned_on.phase_through_walls"}]}

execute as @a[nbt={Inventory:[{components:{"minecraft:custom_data":{option:{update_debug_variables:1b}}}}]}] run function luigis_mansion:selection_menu/game_boy_horror/show_settings/toggle/debug/phase_through_walls_update