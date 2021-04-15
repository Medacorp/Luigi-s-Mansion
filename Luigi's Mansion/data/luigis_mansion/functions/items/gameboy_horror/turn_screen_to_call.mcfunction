summon minecraft:armor_stand ~ ~ ~ {Tags:["inventory"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{Slot:0b,id:"minecraft:structure_void",Count:1b,tag:{luigis_mansion:{id:"luigis_mansion:inventory",items:[]}}}]}
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.luigis_mansion.items set from entity @s Inventory
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.luigis_mansion.items[{tag:{luigis_mansion:{id:"luigis_mansion:gameboy_horror"}}}].tag merge value {Damage:2}
execute as @e[tag=inventory,limit=1] run function luigis_mansion:other/inventory_boxes/set
function luigis_mansion:other/inventory_boxes/load