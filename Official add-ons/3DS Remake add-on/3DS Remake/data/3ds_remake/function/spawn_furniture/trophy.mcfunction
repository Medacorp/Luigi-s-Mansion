summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"3ds_remake:furniture.trophy"},Tags:["furniture","immobile","standing_furniture","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"3ds_remake:furniture/trophy","minecraft:custom_model_data":{floats:[0f]}}}}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
execute if data storage 3ds_remake:data current_state.trophy.beginner{done:1b} rotated ~ ~ run function 3ds_remake:spawn_furniture/trophy/gold_ghost
execute if data storage 3ds_remake:data current_state.trophy.easy{done:1b} rotated ~ ~ run function 3ds_remake:spawn_furniture/trophy/garbage_can_ghost
execute if data storage 3ds_remake:data current_state.trophy.normal{done:1b} rotated ~ ~ run function 3ds_remake:spawn_furniture/trophy/purple_puncher
execute if data storage 3ds_remake:data current_state.trophy.hard{done:1b} rotated ~ ~ run function 3ds_remake:spawn_furniture/trophy/blue_twirler
execute if data storage 3ds_remake:data current_state.trophy.master{done:1b} rotated ~ ~ run function 3ds_remake:spawn_furniture/trophy/grabbing_ghost
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 18
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 30
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp 6
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 6
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp 6
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture
