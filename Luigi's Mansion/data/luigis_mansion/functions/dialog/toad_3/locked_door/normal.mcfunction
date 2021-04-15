scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.unknown","color":"green"},{"translate":"luigis_mansion:dialog.washroom_toad.1"}]}
execute if entity @s[scores={Dialog=24}] if data storage luigis_mansion:data current_state.current_data.technical_data{released_boos:1b} run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.unknown","color":"green"},{"translate":"luigis_mansion:dialog.washroom_toad.2"}]}
execute if data storage luigis_mansion:data current_state.current_data.technical_data{released_boos:1b} run scoreboard players add @s[scores={Dialog=24}] Dialog 152
tag @s[scores={Dialog=176}] remove washroom_toad
scoreboard players reset @s[scores={Dialog=176}] Dialog
