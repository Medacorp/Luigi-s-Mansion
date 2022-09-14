summon minecraft:armor_stand ~ ~-1.25 ~ {CustomName:'{"translate":"luigis_mansion:entity.rocking_chair"}',Tags:["rocking_chair","furniture","standing_furniture","searchable_by_hand","searchable_by_vacuum","scan_ignore","this_entity"],Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:34}}],Pose:{Head:[-10.0f,0.0f,0.01f]},NoGravity:1b,Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.25 ~ ~ ~
execute if data storage luigis_mansion:data furniture.loot run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data furniture.loot
data remove storage luigis_mansion:data furniture
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSound 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeX 2
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeY 2
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeZ 2
scoreboard players set @e[tag=this_entity,limit=1] FurnitureUp -20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureVacuum 20
tag @e[tag=this_entity,limit=1] remove this_entity