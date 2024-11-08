summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:furniture.food"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/food","minecraft:unbreakable":{},"minecraft:custom_model_data":{floats:[0f]},"minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"food",model_data:{default:{components:{"minecraft:custom_model_data":{floats:[0f]}}},slightly_descreased:{components:{"minecraft:custom_model_data":{floats:[1f]}}},decreased:{components:{"minecraft:custom_model_data":{floats:[2f]}}},largely_decreased:{components:{"minecraft:custom_model_data":{floats:[3f]}}},empty:{components:{"minecraft:custom_model_data":{floats:[4f]}}}}}}}],Tags:["furniture","immobile","standing_furniture","this_entity"],DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostForward 0
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture