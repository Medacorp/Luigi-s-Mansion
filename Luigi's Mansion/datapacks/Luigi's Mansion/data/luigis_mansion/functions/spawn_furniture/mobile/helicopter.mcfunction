execute if score #mirrored Selected matches 0 run summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:furniture.helicopter_mobile"}',Pose:{Head:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:20,CustomModelData:1}}],Tags:["swirling","furniture","affected_by_interact","hanging_furniture","this_entity","no_dust"],DisabledSlots:2039583}
execute if score #mirrored Selected matches 1 run summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:furniture.helicopter_mobile"}',Pose:{Head:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:21,CustomModelData:1}}],Tags:["swirling","furniture","affected_by_interact","hanging_furniture","this_entity","no_dust"],DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ ~
function luigis_mansion:spawn_furniture/setup/loot
function luigis_mansion:spawn_furniture/setup/dialog
function luigis_mansion:spawn_furniture/setup/scan_message
function luigis_mansion:spawn_furniture/setup/can_hide_boo
function luigis_mansion:spawn_furniture/setup/searchable
function luigis_mansion:spawn_furniture/setup/elemental_source
function luigis_mansion:spawn_furniture/setup/sound
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] ActionTime -1
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeW 30
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeH 20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSpins 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSearch 5
scoreboard players set @e[tag=this_entity,limit=1] FurnitureUp -4
scoreboard players set @e[tag=this_entity,limit=1] FurnitureForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElemenU -4
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElemenF 0
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture