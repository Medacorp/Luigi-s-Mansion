summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:furniture.punching_bag"}',Tags:["furniture","affected_by_interact","swinging","immobile","swinging_harms","hanging_furniture","punching_bag","this_entity"],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:7}}],Pose:{Head:[0.0f,0.001f,0.0f]},NoGravity:1b,Marker:1b,Marker:1b,Invisible:1b,DisabledSlots:2039583}
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
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeH 60
scoreboard players set @e[tag=this_entity,limit=1] InteractionType -2
scoreboard players set @e[tag=this_entity,limit=1] FurnitureXOrigin 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureZOrigin 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureUp -10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSearch 100
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture