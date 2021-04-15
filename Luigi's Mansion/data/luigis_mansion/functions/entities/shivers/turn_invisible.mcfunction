tag @s remove visible
data modify entity @s ArmorItems[3] set value {}
data modify entity @e[tag=this_shivers_body,limit=1] ArmorItems[3] set value {}
execute if score #mirrored Selected matches 0 run data modify entity @s HandItems set value [{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:126}},{}]
execute if score #mirrored Selected matches 1 run data modify entity @s HandItems set value [{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:126}}]
data modify entity @s CustomNameVisible set value 0b