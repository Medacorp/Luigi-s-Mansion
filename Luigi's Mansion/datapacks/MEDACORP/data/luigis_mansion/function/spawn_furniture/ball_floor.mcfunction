summon minecraft:item_display ~ ~0.01 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.ball_floor"},data:{entity:{namespace:"luigis_mansion",id:"ball_floor"}},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/ball_floor"}},Tags:["ball_floor","immobile","this_entity"]}
execute store result entity @e[tag=this_entity,limit=1] Rotation[0] float 1 run random value -180..179
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
function luigis_mansion:spawn_furniture/setup/room
function luigis_mansion:spawn_furniture/setup/tags
function luigis_mansion:spawn_furniture/setup/debug_spawn
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture