tag @s remove visible
data modify entity @s ArmorItems[3] set value {}
data modify entity @e[tag=this_model,limit=1] ArmorItems[3] set value {}
execute if score #mirrored Selected matches 0 run data modify entity @e[tag=this_model,tag=right_arm,limit=1] ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:40}}
execute if score #mirrored Selected matches 0 run data modify entity @e[tag=this_model,tag=left_arm,limit=1] ArmorItems[3] set value {}
execute if score #mirrored Selected matches 1 run data modify entity @e[tag=this_model,tag=right_arm,limit=1] ArmorItems[3] set value {}
execute if score #mirrored Selected matches 1 run data modify entity @e[tag=this_model,tag=left_arm,limit=1] ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:40}}
data modify entity @s CustomNameVisible set value 0b