summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:entity.fan"}',Pose:{Head:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:20,CustomModelData:0}}],HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:20,CustomModelData:0}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:20,CustomModelData:0}}],Tags:["fan","furniture","this_entity","searchable_by_vacuum","scan_ignore"],DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ ~
execute if data storage luigis_mansion:data furniture.loot run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data furniture.loot
data remove storage luigis_mansion:data furniture
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] RotationSpeed 9
scoreboard players set @e[tag=this_entity,limit=1] RotationSpeedDef 9
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSound 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeX 3
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeY 3
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeZ 3
scoreboard players set @e[tag=this_entity,limit=1] FurnitureUp -24
tag @e[tag=this_entity,limit=1] remove this_entity