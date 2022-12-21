tag @s add visible
data modify storage luigis_mansion:data tag set from entity @s ArmorItems[3].tag
data modify entity @s ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:77}}
data modify entity @s CustomNameVisible set value 1b
data modify entity @s ArmorItems[3].tag set from storage luigis_mansion:data tag
data remove storage luigis_mansion:data tag