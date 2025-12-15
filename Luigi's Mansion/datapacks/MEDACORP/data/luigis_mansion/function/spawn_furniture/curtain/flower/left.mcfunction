execute summon minecraft:item_display run data merge entity @s {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.curtain"},Marker:1b,NoGravity:1b,Invisible:1b,data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"curtain"},item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/curtain/flower","minecraft:custom_model_data":{flags:[1b]},"minecraft:custom_data":{mirror:{components:{"minecraft:custom_model_data":{flags:[0b]}}}}}},Tags:["furniture","curtain","left","requires_hitbox","this_entity"]}
teleport @e[tag=this_entity,limit=1] ^ ^ ^ ~ 0
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture