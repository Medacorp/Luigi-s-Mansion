summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:furniture.room_clear_chest"}',Tags:["furniture","affected_by_interact","room_clear_chest","immobile","standing_furniture","sparkles","cannot_search_when_open","face_me","this_entity"],Pose:{Head:[0.0f,0.01f,0.0f]},NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:22}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ ~
function luigis_mansion:spawn_furniture/setup/loot
function luigis_mansion:spawn_furniture/setup/dialog
function luigis_mansion:spawn_furniture/setup/scan_message
function luigis_mansion:spawn_furniture/setup/pose
execute if data storage luigis_mansion:data furniture{open:1b} run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.CustomModelData set value 26
execute unless data storage luigis_mansion:data furniture{open:1b} run playsound luigis_mansion:furniture.room_clear_chest.spawn block @a ~ ~ ~ 2
function luigis_mansion:spawn_furniture/setup/open
function luigis_mansion:spawn_furniture/setup/can_hide_boo
execute if data storage luigis_mansion:data furniture{searchable:["hand"]} run tag @e[tag=this_entity,limit=1] add searchable_by_hand
function luigis_mansion:spawn_furniture/setup/elemental_source
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeL 16
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeU 12
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeF 9
scoreboard players set @e[tag=this_entity,limit=1] InteractionType 3
scoreboard players set @e[tag=this_entity,limit=1] FurnitureUp 7
scoreboard players set @e[tag=this_entity,limit=1] FurnitureForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElemenU 7
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElemenF 0
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture