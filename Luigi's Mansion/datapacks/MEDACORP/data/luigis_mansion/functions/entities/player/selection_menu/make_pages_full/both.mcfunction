execute store result score #temp Time run data get storage luigis_mansion:data menu_options.options
scoreboard players operation #temp Time %= #5 Constants
execute if score #temp Time matches 1..4 run data modify storage luigis_mansion:data menu_options.options append value {}
execute if score #temp Time matches 1..3 run data modify storage luigis_mansion:data menu_options.options append value {}
execute if score #temp Time matches 1..2 run data modify storage luigis_mansion:data menu_options.options append value {}
execute if score #temp Time matches 1 run data modify storage luigis_mansion:data menu_options.options append value {}
scoreboard players reset #temp Time
data modify storage luigis_mansion:data inventory append value {Slot:2b,id:"minecraft:diamond_pickaxe",Count:1b,tag:{Damage:22,Unbreakable:1b,CustomModelData:2,HideFlags:63,AttributeModifiers:[],display:{Name:'{"color":"white","italic":false,"translate":"luigis_mansion:item.menu.previous_page"}'},luigis_mansion:{namespace:"luigis_mansion",id:"menu_option",option:{id:"previous_page"},kill:1b}}}