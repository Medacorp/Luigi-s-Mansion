tag @s add gallery_portrait_menu

data modify storage luigis_mansion:data menu_options set value {no_exit:1b,options:[]}

execute store result score #temp Time run function 3ds_remake:selection_menu/gallery_portrait/get_portrait_ghost_rank with storage luigis_mansion:data current_state.current_data.portrait_battle

data modify storage luigis_mansion:data menu_options.options append value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:0,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:item.menu.gallery_portrait.change_frame.bronze"}'},luigis_mansion:{option:{id:"reload"}}}}
execute if score #temp Time matches 1.. run data modify storage luigis_mansion:data menu_options.options append value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:0,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:item.menu.gallery_portrait.change_frame.silver"}'},luigis_mansion:{option:{id:"reload"}}}}
execute if score #temp Time matches 2.. run data modify storage luigis_mansion:data menu_options.options append value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:0,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:item.menu.gallery_portrait.change_frame.gold"}'},luigis_mansion:{option:{id:"reload"}}}}
execute if score #temp Time matches 3.. run data modify storage luigis_mansion:data menu_options.options append value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:0,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"type":"translatable","translate":"3ds_remake:item.menu.gallery_portrait.change_frame.platinum"}'},luigis_mansion:{option:{id:"reload"}}}}

data modify storage luigis_mansion:data menu_options.options[].id set from storage luigis_mansion:data current_state.current_data.portrait_battle.portraits.id
data modify storage luigis_mansion:data menu_options.options[].tag.Unbreakable set from storage luigis_mansion:data current_state.current_data.portrait_battle.portraits.tag.Unbreakable
data modify storage luigis_mansion:data menu_options.options[].tag.Damage set from storage luigis_mansion:data current_state.current_data.portrait_battle.portraits.tag.Damage
data modify storage luigis_mansion:data menu_options.options[].tag.CustomModelData set from storage luigis_mansion:data current_state.current_data.portrait_battle.portraits.tag.CustomModelData
data modify storage luigis_mansion:data menu_options.options[0] merge from storage luigis_mansion:data current_state.current_data.portrait_battle.portraits.tag.luigis_mansion.model_data.bronze
execute if data storage luigis_mansion:data menu_options.options[1] run data modify storage luigis_mansion:data menu_options.options[1] merge from storage luigis_mansion:data current_state.current_data.portrait_battle.portraits.tag.luigis_mansion.model_data.silver
execute if data storage luigis_mansion:data menu_options.options[2] run data modify storage luigis_mansion:data menu_options.options[2] merge from storage luigis_mansion:data current_state.current_data.portrait_battle.portraits.tag.luigis_mansion.model_data.gold
execute if data storage luigis_mansion:data menu_options.options[3] run data modify storage luigis_mansion:data menu_options.options[3] merge from storage luigis_mansion:data current_state.current_data.portrait_battle.portraits.tag.luigis_mansion.model_data.platinum

data modify storage luigis_mansion:data menu_options.options append value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:6,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"type":"translatable","translate":"luigis_mansion:item.menu.dialog.progress"}'},luigis_mansion:{option:{id:"portrait_battle_results_retry"}}}}

function luigis_mansion:entities/player/selection_menu/load