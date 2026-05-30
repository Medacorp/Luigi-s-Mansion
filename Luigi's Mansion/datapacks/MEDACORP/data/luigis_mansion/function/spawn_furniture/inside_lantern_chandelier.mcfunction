summon minecraft:armor_stand ~ ~-1.43875 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.inside_lantern_chandelier"},Tags:["furniture","hanging_furniture","lamp","chandelier","immobile","this_entity"],NoGravity:1b,Marker:1b,data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"swinging"},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/inside_lantern_chandelier","minecraft:custom_model_data":{flags:[0b],strings:["default"]},"minecraft:custom_data":{model_data:{default:{components:{"minecraft:custom_model_data":{strings:["default"]}}},falling:{components:{"minecraft:custom_model_data":{strings:["falling"]}}},end:{components:{"minecraft:custom_model_data":{strings:["end"]}}},rod:{components:{"minecraft:custom_model_data":{strings:["rod"]}}},off:{components:{"minecraft:custom_model_data":{flags:[0b]}}},on:{components:{"minecraft:custom_model_data":{flags:[1b]}}}}}}}},Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.43875 ~ ~ 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 50
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 24
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp -20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureChandelier 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp -20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp -20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightUp -15
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightStrength 15
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture