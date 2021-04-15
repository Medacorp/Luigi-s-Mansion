execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{dining_room_speedy_spirit:1b} positioned 687 102 -6 run function luigis_mansion:spawn_entities/new_ghost/speedy_spirit
summon minecraft:armor_stand 694 102 15 {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:0}}],Small:1b,Invisible:1b,Tags:["vacuumable","banana_peel","eternal"]}
summon minecraft:armor_stand 695 102 12 {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:0}}],Small:1b,Invisible:1b,Tags:["vacuumable","banana_peel","eternal"]}
summon minecraft:armor_stand 696 102 6 {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:0}}],Small:1b,Invisible:1b,Tags:["vacuumable","banana_peel","eternal"]}
summon minecraft:armor_stand 695 102 -5 {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:0}}],Small:1b,Invisible:1b,Tags:["vacuumable","banana_peel","eternal"]}
summon minecraft:armor_stand 696 102 -9 {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:0}}],Small:1b,Invisible:1b,Tags:["vacuumable","banana_peel","eternal"]}
summon minecraft:armor_stand 691 102 -8 {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:0}}],Small:1b,Invisible:1b,Tags:["vacuumable","banana_peel","eternal"]}
execute positioned 690 102 3 rotated -90 0 run function luigis_mansion:spawn_entities/portrait_ghost/mr_luggs
execute positioned 688 102 -10 run function luigis_mansion:spawn_entities/new_ghost/waiter
tag @e[x=688.5,y=102,z=-9.5,distance=..1,tag=waiter] add kitchen_waiter
execute positioned 692 102 16 run function luigis_mansion:spawn_entities/new_ghost/waiter
scoreboard players set #dining_room Wave 1