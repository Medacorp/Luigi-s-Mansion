tag @s add in_dialog
tag @s add dialog_menu
data modify storage luigis_mansion:data menu_options set value {no_exit:1b,options:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:6,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"translate":"luigis_mansion:item.menu.dialog.progress"}'},luigis_mansion:{id:"luigis_mansion:menu_option",option:{id:"reload",action:"progress"}}}}]}

function luigis_mansion:entities/player/selection_menu/load