summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:furniture.metal_chest"}',Tags:["furniture","affected_by_interact","affected_by_vacuum","generic","immobile","chest","standing_furniture","this_entity"],Pose:{Head:[0.0f,0.01f,0.0f]},NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:62}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ ~
function luigis_mansion:spawn_furniture/setup/loot
function luigis_mansion:spawn_furniture/setup/dialog
function luigis_mansion:spawn_furniture/setup/scan_message
function luigis_mansion:spawn_furniture/setup/pose
execute if data storage luigis_mansion:data furniture{searched:1b,no_search_animation:1b} run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.CustomModelData set value 66
function luigis_mansion:spawn_furniture/setup/searched
function luigis_mansion:spawn_furniture/setup/can_hide_boo
function luigis_mansion:spawn_furniture/setup/searchable
function luigis_mansion:spawn_furniture/setup/sound
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeL 14
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeU 16
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeF 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureUp 12
scoreboard players set @e[tag=this_entity,limit=1] FurnitureForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSearch 20
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture