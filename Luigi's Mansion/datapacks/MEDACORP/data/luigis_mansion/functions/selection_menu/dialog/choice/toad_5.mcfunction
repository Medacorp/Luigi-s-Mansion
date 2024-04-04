tag @s add in_dialog
tag @s add dialog_menu
tag @s add dialog_choice_menu
data modify storage luigis_mansion:data menu_options set value {no_exit:1b,options:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:87,HideFlags:63,AttributeModifiers:[],display:{},luigis_mansion:{option:{id:"reload",action:"select_branch",value:"yes"}}}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:86,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"type":"translatable","translate":"luigis_mansion:item.menu.dialog.toad_5.no"}'},luigis_mansion:{option:{id:"reload",action:"select_branch",value:"no"}}}}]}
tag @s add me
execute unless score #temp Health matches -1 in minecraft:overworld run setblock 27 0 0 minecraft:oak_sign{front_text:{messages:['{"color":"white","italic":false,"type":"translatable","translate":"luigis_mansion:item.menu.dialog.toad_5.yes","with":[{"type":"selector","selector":"@a[tag=me,limit=1]"}]}','{"type":"text","text":""}','{"type":"text","text":""}','{"type":"text","text":""}']}}
execute unless score #temp Health matches -1 in minecraft:overworld run data modify storage luigis_mansion:data menu_options.options[0].tag.display.Name set from block 27 0 0 front_text.messages[0]
execute unless score #temp Health matches -1 in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
tag @s remove me
function luigis_mansion:entities/player/selection_menu/load