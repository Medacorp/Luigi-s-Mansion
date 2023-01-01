summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:entity.rocking_horse"}',Tags:["furniture","affected_by_interact","affected_by_vacuum","rocking_horse","immobile","this_entity"],Marker:1b,Pose:{Head:[0.0f,0.0f,0.01f]},NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:35}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ ~
function luigis_mansion:spawn_furniture/setup/loot
function luigis_mansion:spawn_furniture/setup/dialog
function luigis_mansion:spawn_furniture/setup/scan_message
function luigis_mansion:spawn_furniture/setup/can_hide_boo
function luigis_mansion:spawn_furniture/setup/searchable
function luigis_mansion:spawn_furniture/setup/sound
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] ActionTime -1
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeW 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeH 10
scoreboard players set @e[tag=this_entity,limit=1] InteractionType 3
scoreboard players set @e[tag=this_entity,limit=1] FurnitureUp 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSearch 20
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture