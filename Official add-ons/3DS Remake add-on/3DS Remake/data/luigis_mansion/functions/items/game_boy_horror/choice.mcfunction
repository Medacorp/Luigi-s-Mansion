tellraw @s {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.game_boy_horror","color":"green"},{"translate":"luigis_mansion:message.game_boy_horror.choose"}]}
tellraw @s[tag=!portrait_battle] {"translate":"luigis_mansion:message.game_boy_horror.map","color":"green","clickEvent":{"action":"run_command","value":"/trigger GBHChoice set 1"}}
tellraw @s[tag=portrait_battle] {"translate":"3ds_remake:message.game_boy_horror.stop_portrait_battle","color":"green","clickEvent":{"action":"run_command","value":"/trigger GBHChoice set 5"}}
execute if data storage 3ds_remake:data {shown_gameboy_horror_part:1b} run tellraw @s {"translate":"luigis_mansion:message.game_boy_horror.scan","color":"green","clickEvent":{"action":"run_command","value":"/trigger GBHChoice set 2"}}
tellraw @s[tag=!portrait_battle] {"translate":"luigis_mansion:message.game_boy_horror.show_items","color":"green","clickEvent":{"action":"run_command","value":"/trigger GBHChoice set 3"},"extra":[{"text":"\n"},{"translate":"luigis_mansion:message.game_boy_horror.show_caught_ghosts","clickEvent":{"action":"run_command","value":"/trigger GBHChoice set 4"}}]}
tellraw @s {"translate":"luigis_mansion:message.game_boy_horror.show_settings","color":"green","clickEvent":{"action":"run_command","value":"/trigger SettingsCheck set -1"}}
scoreboard players enable @s GBHChoice
scoreboard players reset @s UseItem
tag @s add open_gbh_menu