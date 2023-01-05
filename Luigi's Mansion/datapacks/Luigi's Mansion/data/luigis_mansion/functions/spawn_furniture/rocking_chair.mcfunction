summon minecraft:armor_stand ~ ~-1.25 ~ {CustomName:'{"translate":"luigis_mansion:furniture.rocking_chair"}',Tags:["furniture","affected_by_interact","affected_by_vacuum","rocking_chair","standing_furniture","this_entity"],Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:34}}],Pose:{Head:[-10.0f,0.01f,0.0f]},NoGravity:1b,Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.25 ~ ~ 0
function luigis_mansion:spawn_furniture/setup/loot
function luigis_mansion:spawn_furniture/setup/dialog
function luigis_mansion:spawn_furniture/setup/scan_message
function luigis_mansion:spawn_furniture/setup/can_hide_boo
function luigis_mansion:spawn_furniture/setup/searchable
function luigis_mansion:spawn_furniture/setup/sound
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] ActionTime -1
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeW 20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeH 20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSearch 20
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture