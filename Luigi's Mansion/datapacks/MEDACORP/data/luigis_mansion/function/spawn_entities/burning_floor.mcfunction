summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.burning_floor"},item_display:"head",data:{entity:{namespace:"luigis_mansion",id:"burning_floor"},damage:{attack:10}},item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/burning_floor"}},Tags:["burning_floor","affected_by_water","static","same_room_players_only","this_entity"]}
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 12
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 0
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity