summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.cloth"},data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"cloth"},item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/cloth/wash_cloth"}},Tags:["furniture","cloth","front","requires_hitbox","this_entity"]}
teleport @e[tag=this_entity,limit=1] ^ ^ ^ ~ ~
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture