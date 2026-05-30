summon minecraft:armor_stand ~ ~-1.43875 ~ {CustomName:{type:"translatable",translate:"e3_demo:furniture.chain_suspended_ovoid_lamp"},Tags:["furniture","hanging_furniture","lamp","immobile","this_entity"],NoGravity:1b,Marker:1b,data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"swinging"},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"e3_demo:furniture/chain_suspended_ovoid_lamp","minecraft:custom_model_data":{flags:[0b]},"minecraft:custom_data":{model_data:{off:{components:{"minecraft:custom_model_data":{flags:[0b]}}},on:{components:{"minecraft:custom_model_data":{flags:[1b]}}}}}}}},Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.43875 ~ ~ 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 12
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 18
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp -18
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp -18
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp -18
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightUp -13
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightStrength 15
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture