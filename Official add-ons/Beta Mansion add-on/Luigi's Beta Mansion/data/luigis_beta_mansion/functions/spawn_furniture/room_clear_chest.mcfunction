summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:furniture.room_clear_chest"}',Tags:["furniture","affected_by_interact","beta_room_clear_chest","immobile","standing_furniture","this_entity"],Pose:{Head:[0.0f,0.01f,0.0f]},NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:-6}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ ~
function luigis_mansion:spawn_furniture/setup/loot
function luigis_mansion:spawn_furniture/setup/scan_message
function luigis_mansion:spawn_furniture/setup/pose
execute if data storage luigis_mansion:data furniture{open:1b} run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.CustomModelData set value -2
execute unless data storage luigis_mansion:data furniture{open:1b} run playsound luigis_mansion:furniture.room_clear_chest.spawn block @a ~ ~ ~ 2
function luigis_mansion:spawn_furniture/setup/open
function luigis_mansion:spawn_furniture/setup/can_hide_boo
function luigis_mansion:spawn_furniture/setup/elemental_source
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeL 14
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeU 11
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeF 12
scoreboard players set @e[tag=this_entity,limit=1] InteractionType 3
scoreboard players set @e[tag=this_entity,limit=1] FurnitureForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSearch 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElemenU 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElemenF 0
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture