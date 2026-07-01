summon minecraft:marker ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.scan_area"},Tags:["furniture","requires_hitbox","no_reflection","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"empty"}}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture