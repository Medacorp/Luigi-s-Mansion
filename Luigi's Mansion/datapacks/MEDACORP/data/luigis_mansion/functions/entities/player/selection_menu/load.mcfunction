execute if entity @s[tag=!change_page] unless data storage luigis_mansion:data my_memory run function luigis_mansion:entities/player/memory/get with entity @s
data modify storage luigis_mansion:data my_memory.selection_menu.inventory set from entity @s[tag=!using_selection_menu] Inventory
execute unless data storage luigis_mansion:data menu_options.no_exit run data modify storage luigis_mansion:data inventory set value [{Slot:0b,id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:0,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"type":"translatable","translate":"luigis_mansion:item.menu.exit"}'},luigis_mansion:{namespace:"luigis_mansion",id:"menu_option",option:{id:"exit"},kill:1b}}}]
execute unless data storage luigis_mansion:data menu_options.no_exit if data storage luigis_mansion:data menu_options.back run data modify storage luigis_mansion:data inventory append value {Slot:1b,id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:1,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"type":"translatable","translate":"luigis_mansion:item.menu.back"}'},luigis_mansion:{namespace:"luigis_mansion",id:"menu_option",option:{id:"back"},kill:1b}}}
execute if data storage luigis_mansion:data menu_options.no_exit if data storage luigis_mansion:data menu_options.back run data modify storage luigis_mansion:data inventory set value [{Slot:0b,id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:1,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"type":"translatable","translate":"luigis_mansion:item.menu.back"}'},luigis_mansion:{namespace:"luigis_mansion",id:"menu_option",option:{id:"back"},kill:1b}}}]
execute if data storage luigis_mansion:data menu_options.back.to in minecraft:overworld run setblock 1 0 1 minecraft:oak_sign{front_text:{messages:['{"color":"white","italic":false,"type":"translatable","translate":"luigis_mansion:item.menu.back_to","with":[{"source":"storage","storage":"luigis_mansion:data","type":"nbt","nbt":"menu_options.back.to","interpret":true}]}','{"type":"text","text":""}','{"type":"text","text":""}','{"type":"text","text":""}']}}
execute if data storage luigis_mansion:data menu_options.back.to in minecraft:overworld run data modify storage luigis_mansion:data inventory[-1].tag.display.Name set from block 1 0 1 front_text.messages[0]
execute if data storage luigis_mansion:data menu_options.back.to in minecraft:overworld run setblock 1 0 1 minecraft:bedrock
execute if data storage luigis_mansion:data menu_options.back run data modify storage luigis_mansion:data inventory[-1].tag.luigis_mansion.option set from storage luigis_mansion:data menu_options.back
execute unless data storage luigis_mansion:data menu_options.no_exit if data storage luigis_mansion:data menu_options.back if data storage luigis_mansion:data menu_options.options[7] run function luigis_mansion:entities/player/selection_menu/make_pages_full/both
execute unless data storage luigis_mansion:data menu_options.no_exit unless data storage luigis_mansion:data menu_options.back if data storage luigis_mansion:data menu_options.options[8] run function luigis_mansion:entities/player/selection_menu/make_pages_full/one
execute if data storage luigis_mansion:data menu_options.no_exit if data storage luigis_mansion:data menu_options.back if data storage luigis_mansion:data menu_options.options[8] run function luigis_mansion:entities/player/selection_menu/make_pages_full/one
execute if data storage luigis_mansion:data menu_options.no_exit unless data storage luigis_mansion:data menu_options.back if data storage luigis_mansion:data menu_options.options[9] run function luigis_mansion:entities/player/selection_menu/make_pages_full/none
data modify storage luigis_mansion:data my_memory.selection_menu.current_options set from storage luigis_mansion:data menu_options
scoreboard players set #temp Time -1
execute if data storage luigis_mansion:data inventory[-1] store result score #temp Time run data get storage luigis_mansion:data inventory[-1].Slot
execute unless data storage luigis_mansion:data menu_options.options[-1] run data modify storage luigis_mansion:data inventory append value {Slot:5b,id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:4,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"type":"translatable","translate":"luigis_mansion:item.menu.empty"}'},luigis_mansion:{namespace:"luigis_mansion",id:"menu_option",option:{id:"reload",is_empty:1b},kill:1b}}}
execute if data storage luigis_mansion:data menu_options.options[-1] run function luigis_mansion:entities/player/selection_menu/insert_options
scoreboard players reset #temp Time
tag @s remove stop_adding
execute if data storage luigis_mansion:data inventory[{tag:{luigis_mansion:{option:{id:"previous_page"}}}}] run data modify storage luigis_mansion:data inventory append value {Slot:8b,id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:3,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"type":"translatable","translate":"luigis_mansion:item.menu.next_page"}'},luigis_mansion:{namespace:"luigis_mansion",id:"menu_option",option:{id:"next_page"},kill:1b}}}
tag @s add modifying_inventory
clear @s
function luigis_mansion:other/sync_inventory
tag @s add using_selection_menu
tag @s remove game_boy_horror_selected
tag @s remove flashlight_selected
tag @s remove poltergust_selected

data remove storage luigis_mansion:data menu_options
data modify storage luigis_mansion:data my_memory.selection_menu.options set value []
data modify storage luigis_mansion:data my_memory.selection_menu.options append from entity @s Inventory[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"menu_option"}}}].tag.luigis_mansion.option
execute if entity @s[tag=!change_page] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @s[tag=!change_page] run data remove storage luigis_mansion:data my_memory