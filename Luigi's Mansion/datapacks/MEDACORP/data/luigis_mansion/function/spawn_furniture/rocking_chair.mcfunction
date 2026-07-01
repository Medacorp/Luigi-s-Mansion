summon minecraft:item_display ~ ~0.2 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.rocking_chair"},Tags:["furniture","rocking_chair","standing_furniture","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"rocking_chair"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/rocking_chair"}}}
teleport @e[tag=this_entity,limit=1] ~ ~0.2 ~ ~ ~
data modify entity @e[tag=this_entity,limit=1] transformation.left_rotation set value [-0.08715574274765817f,0.0f,0.0f,0.9961946980917455f]
scoreboard players set @e[tag=this_entity,limit=1] AnimationRotationX -100
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 20
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture