summon minecraft:item_display ~ ~0.45 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:item.banana_peel"},data:{entity:{namespace:"luigis_mansion",id:"banana_peel"}},item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/banana_peel"}},item_display:"head",Tags:["affected_by_vacuum","banana_peel","same_room_players_only","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~0.45 ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 5
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 0
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity