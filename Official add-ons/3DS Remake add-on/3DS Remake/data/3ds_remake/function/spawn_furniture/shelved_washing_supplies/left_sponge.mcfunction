summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"3ds_remake:furniture.shelved_washing_supplies"},Tags:["furniture","immobile","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"3ds_remake:furniture/shelved_washing_supplies","minecraft:custom_model_data":{flags:[1b]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[0b]}}}}}}}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeLeft 22
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeUp 16
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeForward 10
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture