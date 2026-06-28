summon minecraft:item_display ~ ~1.85 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.bone"},Tags:["bone","same_room_players_only","this_entity"],item_display:"head",brightness:{block:15,sky:15},data:{entity:{namespace:"luigis_mansion",id:"bone"}},item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/bone"}}}
teleport @e[tag=this_entity,limit=1] ~ ~1.85 ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 2
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 0
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity