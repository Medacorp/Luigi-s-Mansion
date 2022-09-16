execute if entity @s[scores={Shrunk=0}] run playsound luigis_mansion:item.flashlight.off player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Shrunk=1..}] run playsound luigis_mansion:item.flashlight.off player @a[tag=same_room] ~ ~ ~ 1 2
summon minecraft:armor_stand ~ 0 ~ {Tags:["inventory"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{Slot:0b,id:"minecraft:stone_button",Count:1b,tag:{luigis_mansion:{id:"luigis_mansion:inventory",items:[]}}}]}
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.luigis_mansion.items set from entity @s Inventory
execute store result score #temp Time run data get entity @e[tag=inventory,limit=1] ArmorItems[3].tag.luigis_mansion.items[{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}].tag.CustomModelData
execute store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag.luigis_mansion.items[{tag:{luigis_mansion:{id:"luigis_mansion:flashlight"}}}].tag.CustomModelData int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
execute as @e[tag=inventory,limit=1] run function luigis_mansion:other/inventory_boxes/set
function luigis_mansion:other/inventory_boxes/load
tag @s remove had_flashlight_on