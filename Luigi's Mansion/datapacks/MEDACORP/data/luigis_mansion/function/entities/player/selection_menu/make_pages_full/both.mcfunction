execute store result score #temp Time run data get storage luigis_mansion:data menu_options.options
scoreboard players operation #temp Time %= #5 Constants
execute if score #temp Time matches 1..4 run data modify storage luigis_mansion:data menu_options.options append value {}
execute if score #temp Time matches 1..3 run data modify storage luigis_mansion:data menu_options.options append value {}
execute if score #temp Time matches 1..2 run data modify storage luigis_mansion:data menu_options.options append value {}
execute if score #temp Time matches 1 run data modify storage luigis_mansion:data menu_options.options append value {}
scoreboard players reset #temp Time
data modify storage luigis_mansion:data inventory append value {Slot:2b,id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:menu/previous_page","minecraft:unbreakable":{},"minecraft:tooltip_display":{hidden_components:["minecraft:unbreakable"]},"minecraft:attribute_modifiers":[],"minecraft:item_name":{type:"translatable",translate:"luigis_mansion:item.menu.previous_page"},"minecraft:custom_data":{namespace:"luigis_mansion",id:"menu_option",option:{id:"previous_page"},kill:1b}}}