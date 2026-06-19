summon minecraft:item_display ~ ~1.05 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.ball"},item_display:"head",Tags:["chauncey","ball","big","same_room_players_only","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"ball"}},item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/chaunceys_ball","minecraft:custom_model_data":{strings:["big"]}}}}
teleport @e[tag=this_entity,limit=1] ~ ~1.05 ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 15
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 0
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity