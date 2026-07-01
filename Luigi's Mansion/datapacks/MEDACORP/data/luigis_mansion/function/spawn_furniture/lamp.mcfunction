summon minecraft:marker ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.lamp"},Tags:["furniture","no_reflection","lamp","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"empty"}}
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightUp 5
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightStrength 15
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture