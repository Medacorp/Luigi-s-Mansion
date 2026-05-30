summon minecraft:armor_stand ~ ~-1.43875 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.fan"},Marker:1b,NoGravity:1b,Invisible:1b,data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"empty"},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/fan_lamp","minecraft:custom_model_data":{flags:[0b]},"minecraft:custom_data":{model_data:{off:{components:{"minecraft:custom_model_data":{flags:[0b]}}},on:{components:{"minecraft:custom_model_data":{flags:[1b]}}}}}}}},Tags:["furniture","lamp","hanging_furniture","this_entity"],DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.43875 ~ ~ 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 12
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp -10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp -10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp -10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightUp -8
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightStrength 15
function luigis_mansion:spawn_furniture/setup/pose
function luigis_mansion:spawn_furniture/setup/scan_result
function luigis_mansion:spawn_furniture/setup/animation
function luigis_mansion:spawn_furniture/setup/no_ai
function luigis_mansion:spawn_furniture/setup/room
function luigis_mansion:spawn_furniture/setup/tags
function luigis_mansion:spawn_furniture/setup/position
function luigis_mansion:spawn_furniture/setup/optimize_entity_search
function luigis_mansion:spawn_furniture/setup/static
tag @e[tag=this_entity,limit=1] remove this_entity

summon minecraft:armor_stand ~ ~-1.75875 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.fan"},Marker:1b,NoGravity:1b,Invisible:1b,data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"fan"},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/fan","minecraft:custom_model_data":{flags:[1b]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[0b]}}}}}}},Tags:["furniture","this_entity","turn_left"],DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.75875 ~ ~ 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureRotationSpeed 9
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 56
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 6
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp -11
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp -11
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp -11
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture