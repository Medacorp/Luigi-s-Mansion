execute if data storage luigis_mansion:data RightHandItem{id:"minecraft:diamond_pickaxe",tag:{Damage:3}} run data modify entity @s HandItems[0].tag.Damage set value 2
execute if data storage luigis_mansion:data LeftHandItem{id:"minecraft:diamond_pickaxe",tag:{Damage:2}} run data modify entity @s HandItems[1].tag.Damage set value 3
execute if data storage luigis_mansion:data RightHandItem{id:"minecraft:leather_chestplate",tag:{Damage:3}} run data modify entity @s HandItems[0].tag.Damage set value 2
execute if data storage luigis_mansion:data LeftHandItem{id:"minecraft:leather_chestplate",tag:{Damage:2}} run data modify entity @s HandItems[1].tag.Damage set value 3
execute if data storage luigis_mansion:data RightHandItem{id:"minecraft:diamond_pickaxe",tag:{Damage:17}} run data modify entity @s HandItems[0].tag.Damage set value 18
execute if data storage luigis_mansion:data LeftHandItem{id:"minecraft:diamond_pickaxe",tag:{Damage:18}} run data modify entity @s HandItems[1].tag.Damage set value 17
execute if data storage luigis_mansion:data RightHandItem{id:"minecraft:diamond_pickaxe",tag:{Damage:20}} run data modify entity @s HandItems[0].tag.Damage set value 21
execute if data storage luigis_mansion:data LeftHandItem{id:"minecraft:diamond_pickaxe",tag:{Damage:20}} run data modify entity @s HandItems[1].tag.Damage set value 21
execute if data storage luigis_mansion:data RightHandItem{id:"minecraft:diamond_pickaxe",tag:{Damage:21}} run data modify entity @s HandItems[0].tag.Damage set value 20
execute if data storage luigis_mansion:data LeftHandItem{id:"minecraft:diamond_pickaxe",tag:{Damage:21}} run data modify entity @s HandItems[1].tag.Damage set value 20
execute if data storage luigis_mansion:data mirror.ArmorItems[{id:"minecraft:diamond_pickaxe",tag:{Damage:20}}] run data modify entity @s ArmorItems[3].tag.Damage set value 21
execute if data storage luigis_mansion:data mirror.ArmorItems[{id:"minecraft:diamond_pickaxe",tag:{Damage:21}}] run data modify entity @s ArmorItems[3].tag.Damage set value 20
execute if data storage luigis_mansion:data mirror{Tags:["left_arm"]} unless data storage luigis_mansion:data mirror{Tags:["held_item"]} run data modify entity @s ArmorItems[3].tag.Damage set value 2
execute if data storage luigis_mansion:data mirror{Tags:["right_arm"]} unless data storage luigis_mansion:data mirror{Tags:["held_item"]} run data modify entity @s ArmorItems[3].tag.Damage set value 3
execute if data storage luigis_mansion:data mirror{Tags:["left_leg"]} run data modify entity @s ArmorItems[3].tag.Damage set value 2
execute if data storage luigis_mansion:data mirror{Tags:["right_leg"]} run data modify entity @s ArmorItems[3].tag.Damage set value 3
execute if data storage luigis_mansion:data mirror{Tags:["poltergust_body"]} as @s run function luigis_mansion:entities/reflection/swap_model/poltergust_body