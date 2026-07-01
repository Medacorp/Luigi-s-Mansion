summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.deer_head"},Tags:["furniture","same_room_select_furniture","immobile","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"swinging",open_animation:{namespace:"3ds_remake",id:"deer_head"}},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"3ds_remake:furniture/deer_head","minecraft:custom_model_data":{floats:[0f]},"minecraft:custom_data":{model_data:{default:{components:{"minecraft:custom_model_data":{floats:[0f]}}},open:{components:{"minecraft:custom_model_data":{floats:[1f]}}},lit:{components:{"minecraft:custom_model_data":{floats:[2f]}}}}}}}}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeRadius 8
scoreboard players set @e[tag=this_entity,limit=1] FurnitureXOrigin 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureZOrigin 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp -5
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp -5
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture