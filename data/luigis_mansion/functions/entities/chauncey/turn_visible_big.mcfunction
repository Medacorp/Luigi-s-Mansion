tag @s add visible
data modify entity @s ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:116}}
data modify entity @e[tag=this_model,limit=1] ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:115}}
data modify entity @s HandItems set value [{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:115}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:115}}]
data modify entity @s CustomNameVisible set value 1b