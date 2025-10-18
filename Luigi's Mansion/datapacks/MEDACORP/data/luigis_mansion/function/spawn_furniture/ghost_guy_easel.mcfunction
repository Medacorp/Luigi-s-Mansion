execute unless score #mirrored Selected matches 1 run summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.ghost_guy_easel"},Tags:["furniture","immobile","standing_furniture","this_entity"],NoGravity:1b,Marker:1b,data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"ghost_art",open_animation:{namespace:"luigis_mansion",id:"ghost_art"}},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/portrait/ghost_guy","minecraft:custom_model_data":{flags:[0b,0b]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[1b,0b]}}},model_data:{default:{components:{"minecraft:custom_model_data":{flags:[0b,0b]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[1b,0b]}}}}}},open:{components:{"minecraft:custom_model_data":{flags:[0b,1b]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[1b,1b]}}}}}}}}}}},Invisible:1b,DisabledSlots:2039583}
execute if score #mirrored Selected matches 1 run summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.ghost_guy_easel"},Tags:["furniture","immobile","standing_furniture","this_entity"],NoGravity:1b,Marker:1b,data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"ghost_art",open_animation:{namespace:"luigis_mansion",id:"ghost_art"}},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/portrait/ghost_guy","minecraft:custom_model_data":{flags:[1b,0b]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[0b,0b]}}},model_data:{default:{components:{"minecraft:custom_model_data":{flags:[1b,0b]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[0b,0b]}}}}}},open:{components:{"minecraft:custom_model_data":{flags:[1b,1b]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[0b,1b]}}}}}}}}}}},Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 14
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 26
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostForward 9
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture