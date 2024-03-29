tag @s add in_dialog
tag @s add dialog_menu
tag @s add dialog_choice_menu
data modify storage luigis_mansion:data menu_options set value {no_exit:1b,options:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:84,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"type":"translatable","translate":"luigis_mansion:message.training_room.vanilla"}'},luigis_mansion:{option:{id:"reload",action:"new_dialog",value:{namespace:"luigis_mansion",id:"training_room/program"},global:0b}}}}]}
function luigis_mansion:selection_menu/dialog/choice/training_room

function luigis_mansion:entities/player/selection_menu/load