execute if entity @s[scores={GBHCall=1}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.gameboy_horror","color":"green"},{"translate":"luigis_mansion:message.gameboy_horror.1"}]}
execute if entity @s[scores={GBHCall=2}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.gameboy_horror","color":"green"},{"translate":"luigis_mansion:message.gameboy_horror.2"}]}
execute if entity @s[scores={GBHCall=2}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.gameboy_horror","color":"green"},{"translate":"luigis_mansion:message.gameboy_horror.2.more"}]}
execute if entity @s[scores={GBHCall=3}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.gameboy_horror","color":"green"},{"translate":"luigis_mansion:message.gameboy_horror.3"}]}
execute if entity @s[scores={GBHCall=3}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.gameboy_horror","color":"green"},{"translate":"luigis_mansion:message.gameboy_horror.3.more"}]}
execute if entity @s[scores={GBHCall=4}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.gameboy_horror","color":"green"},{"translate":"luigis_mansion:message.gameboy_horror.4"}]}
execute if entity @s[scores={GBHCall=5}] run function luigis_mansion:items/gameboy_horror/answer/text/hidden_boo
execute if entity @s[scores={GBHCall=6}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.gameboy_horror","color":"green"},{"translate":"luigis_mansion:message.gameboy_horror.6"}]}
execute if entity @s[scores={GBHCall=6}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.gameboy_horror","color":"green"},{"translate":"luigis_mansion:message.gameboy_horror.6.more"}]}
execute if entity @s[scores={GBHCall=7}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.gameboy_horror","color":"green"},{"translate":"luigis_mansion:message.gameboy_horror.7"}]}
execute if entity @s[scores={GBHCall=7}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.gameboy_horror","color":"green"},{"translate":"luigis_mansion:message.gameboy_horror.7.more"}]}
execute if entity @s[scores={GBHCall=8}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.gameboy_horror","color":"green"},{"translate":"luigis_mansion:message.gameboy_horror.8"}]}
execute if entity @s[scores={GBHCall=8}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.gameboy_horror","color":"green"},{"translate":"luigis_mansion:message.gameboy_horror.8.more"}]}
execute if entity @s[scores={GBHCall=9}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.gameboy_horror","color":"green"},{"translate":"luigis_mansion:message.gameboy_horror.9"}]}
execute if entity @s[scores={GBHCall=9}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.gameboy_horror","color":"green"},{"translate":"luigis_mansion:message.gameboy_horror.9.more"}]}
execute if entity @s[scores={GBHCall=10}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.gameboy_horror","color":"green"},{"translate":"luigis_mansion:message.gameboy_horror.10"}]}
execute if entity @s[scores={GBHCall=10}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.gameboy_horror","color":"green"},{"translate":"luigis_mansion:message.gameboy_horror.10.more"}]}
execute if entity @s[scores={GBHCall=11}] run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.gameboy_horror","color":"green"},{"translate":"luigis_mansion:message.gameboy_horror.11"}]}
execute if entity @s[scores={GBHCall=12}] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.gameboy_horror","color":"green"},{"translate":"luigis_mansion:message.gameboy_horror.12"}]}
execute if entity @s[scores={GBHCall=12}] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:item.gameboy_horror","color":"green"},{"translate":"luigis_mansion:message.gameboy_horror.12.more"}]}

execute if entity @s[scores={GBHCall=1}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {portrait_ghosts:1b}
execute if entity @s[scores={GBHCall=2}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {area_1_key:1b} 
execute if entity @s[scores={GBHCall=3}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {grabbing_ghosts:1b}
execute if entity @s[scores={GBHCall=4}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {released_boos_call:1b}
execute if entity @s[scores={GBHCall=6}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {fire_element_medal:1b}
execute if entity @s[scores={GBHCall=7}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {water_element_medal:1b}
execute if entity @s[scores={GBHCall=8}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {area_2_key:1b}
execute if entity @s[scores={GBHCall=9}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {ice_element_medal:1b}
execute if entity @s[scores={GBHCall=10}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {area_3_key:1b}
execute if entity @s[scores={GBHCall=11}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {blackout:1b}
scoreboard players set @s[scores={MusicType=19}] Dialog 0
execute if entity @s[tag=hang_up] as @a run function luigis_mansion:other/music/set/silence
scoreboard players set @a GBHCall 0 
scoreboard players set @a GBHWait 0