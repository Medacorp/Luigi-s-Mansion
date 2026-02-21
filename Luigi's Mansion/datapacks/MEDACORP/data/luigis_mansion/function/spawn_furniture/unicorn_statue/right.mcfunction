summon minecraft:armor_stand ~ ~-1.43875 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.unicorn_statue"},Marker:1b,NoGravity:1b,Invisible:1b,data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic"},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/unicorn_statue","minecraft:custom_model_data":{flags:[1b]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[0b]}}}}}}},Tags:["furniture","immobile","standing_furniture","this_entity"],DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.43875 ~ ~ 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeLeft 20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeUp 50
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeForward 40
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp 12
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 35
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentForward 25
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostForward 25
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture