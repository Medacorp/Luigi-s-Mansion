summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:furniture.hide_and_seek_box"}',Tags:["furniture","affected_by_interact","no_manual_shake","hide_and_seek_box","standing_furniture","no_dust","this_entity"],Pose:{Head:[0.0f,0.01f,0.0f]},NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:82}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ 0
function luigis_mansion:spawn_furniture/setup/loot
function luigis_mansion:spawn_furniture/setup/dialog
function luigis_mansion:spawn_furniture/setup/scan_message
function luigis_mansion:spawn_furniture/setup/pose
execute if data storage luigis_mansion:data furniture{searched:1b,no_search_animation:1b} run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.CustomModelData set value 86
function luigis_mansion:spawn_furniture/setup/searched
function luigis_mansion:spawn_furniture/setup/can_hide_boo
function luigis_mansion:spawn_furniture/setup/searchable
function luigis_mansion:spawn_furniture/setup/elemental_source
function luigis_mansion:spawn_furniture/setup/sound
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] InteractionType 3
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeW 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeH 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSearch -1
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElemenU 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElemenF 0
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture