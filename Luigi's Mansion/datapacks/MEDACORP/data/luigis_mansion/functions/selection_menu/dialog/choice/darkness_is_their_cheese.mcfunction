tag @s add in_dialog
tag @s add dialog_menu
tag @s add dialog_choice_menu
data modify storage luigis_mansion:data menu_options set value {no_exit:1b,options:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:82,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"type":"translatable","translate":"luigis_mansion:dialog.darkness_is_their_cheese.yes"}'},luigis_mansion:{option:{id:"reload",action:"progress"}}}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:83,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"type":"translatable","translate":"luigis_mansion:dialog.darkness_is_their_cheese.no"}'},luigis_mansion:{option:{id:"reload",action:"skip"}}}}]}

function luigis_mansion:entities/player/selection_menu/load