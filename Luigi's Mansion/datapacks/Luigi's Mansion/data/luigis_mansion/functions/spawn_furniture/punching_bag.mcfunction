summon minecraft:armor_stand ~ ~5.4 ~ {CustomName:'{"translate":"luigis_mansion:entity.punching_bag"}',Tags:["furniture","swinging","swinging_harms","hanging_furniture","punching_bag","scan_ignore","searchable_by_hand","searchable_by_vacuum","searchable_by_dust","searchable_by_fire","searchable_by_water","searchable_by_ice","this_entity"],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:7}}],Pose:{Head:[0.0f,0.001f,0.0f]},NoGravity:1b,Marker:1b,Marker:1b,Invisible:1b,DisabledSlots:2039583}
execute if data storage luigis_mansion:data furniture.loot run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data furniture.loot
execute if data storage luigis_mansion:data furniture.dialog run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.dialog set from storage luigis_mansion:data furniture.dialog
data remove storage luigis_mansion:data furniture
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] ActionTime -1
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSound 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeX 1
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeY 6
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeZ 1
scoreboard players set @e[tag=this_entity,limit=1] InteractionType -2
scoreboard players set @e[tag=this_entity,limit=1] FurnitureXOrigin 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureZOrigin 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureUp -10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureVacuum 100
tag @e[tag=this_entity,limit=1] remove this_entity