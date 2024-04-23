tag @s add scanning

data modify storage luigis_mansion:data menu_options set value {back:{id:"original_menu",to:'{"type":"translatable","translate":"luigis_mansion:item.menu.original_menu"}'},options:[{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:damage":22,"minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:custom_model_data":53,"minecraft:attribute_modifiers":{modifiers:[]},"minecraft:item_name":'{"type":"translatable","translate":"luigis_mansion:item.menu.game_boy_horror.scan_furniture"}',"minecraft:custom_data":{option:{id:"reload",action:"scan"}}}}]}

function luigis_mansion:entities/player/selection_menu/load