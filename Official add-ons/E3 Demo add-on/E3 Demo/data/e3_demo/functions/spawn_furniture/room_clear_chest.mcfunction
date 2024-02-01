summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:furniture.room_clear_chest"}',Tags:["furniture","delayed","chest","room_clear_chest","immobile","standing_furniture","this_entity"],NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:-6}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ 0
execute if data storage luigis_mansion:data furniture{searched:1b,no_search_animation:1b,no_spawn_sound:1b} run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.CustomModelData set value -2
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeLeft 14
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeUp 11
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeForward 12
execute if score #3ds_remake Loaded matches 1.. run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.luigis_mansion merge value {interact_animation:{namespace:"3ds_remake",id:"search/chest"}}
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp 7
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 7
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp 7
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostForward 0
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture