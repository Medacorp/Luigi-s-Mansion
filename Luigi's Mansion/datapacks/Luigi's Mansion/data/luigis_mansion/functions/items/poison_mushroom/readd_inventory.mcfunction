playsound luigis_mansion:item.poison_mushroom.wear_out player @a[tag=same_room] ~ ~ ~ 1
scoreboard players operation #temp ID = @s ID
execute as @e[tag=model_piece,nbt={Small:1b}] if score @s ID = #temp ID run data merge entity @s {Small:0b}
scoreboard players reset #temp ID
summon minecraft:armor_stand ~ 0 ~ {Tags:["inventory"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{luigis_mansion:{id:"luigis_mansion:inventory",items:[]}}}]}

function luigis_mansion:entities/player/memory/get
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.luigis_mansion.items set from storage luigis_mansion:data my_memory.inventory.inventory
execute store result score #temp Time run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag.luigis_mansion.items[{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}].tag.CustomModelData
execute if entity @s[tag=flashlight,tag=!flashlight_off] if data storage luigis_mansion:data my_memory.inventory{flashlight_on:0b} store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag.luigis_mansion.items[{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}].tag.CustomModelData int 1 run scoreboard players remove #temp Time 1
execute unless entity @s[tag=flashlight,tag=!flashlight_off] if data storage luigis_mansion:data my_memory.inventory{flashlight_on:1b} store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag.luigis_mansion.items[{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}].tag.CustomModelData int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
execute as @e[tag=inventory,limit=1] run function luigis_mansion:other/inventory_boxes/set
function luigis_mansion:other/inventory_boxes/load
data modify storage luigis_mansion:data my_memory.inventory set value {}
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory