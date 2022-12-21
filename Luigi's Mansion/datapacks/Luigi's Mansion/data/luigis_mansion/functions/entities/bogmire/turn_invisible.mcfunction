tag @s remove visible
data modify storage luigis_mansion:data tag set from entity @s ArmorItems[3].tag
data modify entity @s ArmorItems[3] set value {id:"minecraft:stone_button",Count:1b}
data modify entity @e[tag=this_model,limit=1] ArmorItems[3] set value {}
data modify entity @s HandItems set value [{},{}]
data modify entity @s CustomNameVisible set value 0b
data modify entity @s ArmorItems[3].tag set from storage luigis_mansion:data tag
data remove storage luigis_mansion:data tag