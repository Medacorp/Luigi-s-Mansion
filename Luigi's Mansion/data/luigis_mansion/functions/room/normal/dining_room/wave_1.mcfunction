execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{dining_room_speedy_spirit:1b} positioned 699 11 52 run function luigis_mansion:spawn_entities/new_ghost/speedy_spirit
summon minecraft:armor_stand 706 11 31 {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:0}}],Small:1b,Invisible:1b,Tags:["vacuumable","banana_peel","eternal"]}
summon minecraft:armor_stand 707 11 34 {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:0}}],Small:1b,Invisible:1b,Tags:["vacuumable","banana_peel","eternal"]}
summon minecraft:armor_stand 708 11 40 {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:0}}],Small:1b,Invisible:1b,Tags:["vacuumable","banana_peel","eternal"]}
summon minecraft:armor_stand 707 11 51 {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:0}}],Small:1b,Invisible:1b,Tags:["vacuumable","banana_peel","eternal"]}
summon minecraft:armor_stand 708 11 55 {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:0}}],Small:1b,Invisible:1b,Tags:["vacuumable","banana_peel","eternal"]}
summon minecraft:armor_stand 703 11 54 {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:0}}],Small:1b,Invisible:1b,Tags:["vacuumable","banana_peel","eternal"]}
execute positioned 702 11 43 rotated -90 0 run function luigis_mansion:spawn_entities/portrait_ghost/mr_luggs
execute positioned 700 11 56 run function luigis_mansion:spawn_entities/new_ghost/waiter
tag @e[x=700.5,y=11,z=56.5,distance=..1,tag=waiter] add kitchen_waiter
execute positioned 704 11 30 run function luigis_mansion:spawn_entities/new_ghost/waiter
scoreboard players set #dining_room Wave 1