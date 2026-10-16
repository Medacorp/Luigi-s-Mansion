summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"3ds_remake:furniture.trophy"},Tags:["furniture","trophy_base","trophy_piece","immobile","standing_furniture","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"3ds_remake:furniture/trophy","minecraft:custom_model_data":{floats:[0f]}}}}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
execute if data storage luigis_mansion:data current_state.3ds_remake.trophy.beginner{done:1b} rotated ~ ~ run function 3ds_remake:spawn_furniture/trophy/gold_ghost
execute if data storage luigis_mansion:data current_state.3ds_remake.trophy.easy{done:1b} rotated ~ ~ run function 3ds_remake:spawn_furniture/trophy/garbage_can_ghost
execute if data storage luigis_mansion:data current_state.3ds_remake.trophy.normal{done:1b} rotated ~ ~ run function 3ds_remake:spawn_furniture/trophy/purple_puncher
execute if data storage luigis_mansion:data current_state.3ds_remake.trophy.hard{done:1b} rotated ~ ~ run function 3ds_remake:spawn_furniture/trophy/blue_twirler
execute if data storage luigis_mansion:data current_state.3ds_remake.trophy.master{done:1b} rotated ~ ~ run function 3ds_remake:spawn_furniture/trophy/grabbing_ghost
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 18
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 30
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp 6
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 6
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp 6
function luigis_mansion:spawn_furniture/setup/default
data remove storage luigis_mansion:data furniture
data modify storage luigis_mansion:data temp set value {3ds:0b,other:0b}
function #3ds_remake:selection_menu/gallery_trophy/check_collections
execute unless data storage luigis_mansion:data temp{3ds:0b,other:0b} run data modify storage luigis_mansion:data dialogs append value {name:{namespace:"3ds_remake",id:"upgrade_trophy"},progress:0,room:0}
execute if data storage luigis_mansion:data temp{3ds:1b} run data modify storage luigis_mansion:data dialogs[-1].3ds_remake set value 1b
execute store result storage luigis_mansion:data dialogs[-1].room int 1 run scoreboard players get @e[tag=this_entity,limit=1] Room
data remove storage luigis_mansion:data temp
tag @e[tag=this_entity,limit=1] remove this_entity