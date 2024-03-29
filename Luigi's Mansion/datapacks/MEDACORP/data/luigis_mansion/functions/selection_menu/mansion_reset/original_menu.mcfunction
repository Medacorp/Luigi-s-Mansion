execute at @s run function luigis_mansion:entities/player/stop_model
gamemode adventure @s

tag @s add mansion_reset_menu
tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.reset_mansion.1"}]}
data modify storage luigis_mansion:data menu_options set value {no_exit:1b,options:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:0,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"type":"translatable","translate":"luigis_mansion:dialog.reset_mansion.yes"}'},luigis_mansion:{option:{id:"confirmation"}}}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:0,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"type":"translatable","translate":"luigis_mansion:dialog.reset_mansion.no"}'},luigis_mansion:{option:{id:"exit"}}}}]}

function luigis_mansion:entities/player/selection_menu/load