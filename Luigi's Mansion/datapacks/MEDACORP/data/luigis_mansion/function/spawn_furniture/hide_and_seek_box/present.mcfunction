summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.hide_and_seek_box"},Tags:["furniture","standing_furniture","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic",open_animation:{namespace:"luigis_mansion",id:"hide_and_seek_box"}},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/hide_and_seek_box/present","minecraft:custom_model_data":{floats:[0f]},"minecraft:custom_data":{model_data:{default:{components:{"minecraft:custom_model_data":{floats:[0f]}}},open:{components:{"minecraft:custom_model_data":{floats:[8f]}}}}}}}}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 10
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture