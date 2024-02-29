summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:furniture.room_clear_chest"}',Tags:["furniture","room_clear_chest","immobile","standing_furniture","sparkles","this_entity"],NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:17,luigis_mansion:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"delayed"},luigis_mansion:{interact_animation:{namespace:"3ds_remake",id:"search/chest"},open_animation:{namespace:"luigis_mansion",id:"room_clear_chest"},model_data:{default:{tag:{CustomModelData:7}},open:{tag:{CustomModelData:21}}}}}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeLeft 9
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeUp 7
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeForward 5
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp 4
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 4
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp 4
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostForward 0
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture
