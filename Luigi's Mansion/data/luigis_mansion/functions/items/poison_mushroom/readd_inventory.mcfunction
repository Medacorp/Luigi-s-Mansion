playsound luigis_mansion:item.poison_mushroom.wear_out player @a[tag=same_room] ~ ~ ~ 1
summon minecraft:armor_stand ~ ~ ~ {Tags:["inventory"],Invisible:1b,Marker:1b}
data modify entity @e[tag=inventory,limit=1] ArmorItems[3] set from entity @s Inventory[{Slot:103b}]
execute as @e[tag=inventory,limit=1] run function luigis_mansion:other/inventory_boxes/set
function luigis_mansion:other/inventory_boxes/load
effect clear @s minecraft:invisibility