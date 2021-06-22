tag @s add visible
data modify entity @s ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:20}}
data modify entity @e[tag=this_model,limit=1] ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:21}}
execute if score #mirrored Selected matches 0 run data modify entity @s HandItems set value [{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:21}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:20}}]
execute if score #mirrored Selected matches 1 run data modify entity @s HandItems set value [{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:20}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:21}}]
data modify entity @s CustomNameVisible set value 1b