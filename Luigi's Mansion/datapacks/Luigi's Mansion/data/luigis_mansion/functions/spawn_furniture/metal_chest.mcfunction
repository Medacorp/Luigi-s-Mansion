summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:furniture.metal_chest"}',Tags:["furniture","generic","immobile","chest","standing_furniture","this_entity"],Pose:{Head:[0.0f,0.01f,0.0f]},NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:62}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ 0
execute if data storage luigis_mansion:data furniture{searched:1b,no_search_animation:1b} run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.CustomModelData set value 66
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeLeft 14
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeUp 16
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeForward 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 12
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSearch 20
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture