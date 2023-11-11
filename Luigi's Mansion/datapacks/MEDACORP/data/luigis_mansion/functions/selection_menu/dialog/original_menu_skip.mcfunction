tag @s add in_dialog
tag @s add dialog_menu
data modify storage dark_moon:data menu_options set value {no_exit:1b,options:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:6,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"translate":"dark_moon:item.menu.dialog.progress"}'},dark_moon:{id:"dark_moon:menu_option",option:{id:"reload",action:"progress"}}}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:7,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"translate":"dark_moon:item.menu.dialog.skip"}'},dark_moon:{id:"dark_moon:menu_option",option:{id:"reload",action:"skip"}}}}]}

function dark_moon:entities/player/selection_menu/load