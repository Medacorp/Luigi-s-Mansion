tag @s add visible
data modify storage luigis_mansion:data tag set from entity @s ArmorItems[3].tag
data modify entity @s ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:6}}
data modify entity @e[tag=this_model,tag=body,limit=1] ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:7}}
execute if score #mirrored Selected matches 0 run data modify entity @e[tag=this_model,tag=right_arm,limit=1] ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:7}}
execute if score #mirrored Selected matches 0 run data modify entity @e[tag=this_model,tag=left_arm,limit=1] ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:6}}
execute if score #mirrored Selected matches 1 run data modify entity @e[tag=this_model,tag=right_arm,limit=1] ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:6}}
execute if score #mirrored Selected matches 1 run data modify entity @e[tag=this_model,tag=left_arm,limit=1] ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:7}}
data modify entity @s CustomNameVisible set value 1b
data modify entity @s ArmorItems[3].tag set from storage luigis_mansion:data tag
data remove storage luigis_mansion:data tag