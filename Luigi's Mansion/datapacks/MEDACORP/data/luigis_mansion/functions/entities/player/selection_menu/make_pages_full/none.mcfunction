execute store result score #temp Time run data get storage luigis_mansion:data menu_options.options
scoreboard players operation #temp Time %= #7 Constants
execute if score #temp Time matches 1..6 run data modify storage luigis_mansion:data menu_options.options append value {}
execute if score #temp Time matches 1..5 run data modify storage luigis_mansion:data menu_options.options append value {}
execute if score #temp Time matches 1..4 run data modify storage luigis_mansion:data menu_options.options append value {}
execute if score #temp Time matches 1..3 run data modify storage luigis_mansion:data menu_options.options append value {}
execute if score #temp Time matches 1..2 run data modify storage luigis_mansion:data menu_options.options append value {}
execute if score #temp Time matches 1 run data modify storage luigis_mansion:data menu_options.options append value {}
scoreboard players reset #temp Time
data modify storage luigis_mansion:data inventory append value {Slot:0b,id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:damage":22,"minecraft:unbreakable":{show_in_tooltip:0b},"minecraft:custom_model_data":2,"minecraft:attribute_modifiers":{modifiers:[]},"minecraft:item_name":'{"type":"translatable","translate":"luigis_mansion:item.menu.previous_page"}',"minecraft:custom_data":{namespace:"luigis_mansion",id:"menu_option",option:{id:"previous_page"},kill:1b}}}