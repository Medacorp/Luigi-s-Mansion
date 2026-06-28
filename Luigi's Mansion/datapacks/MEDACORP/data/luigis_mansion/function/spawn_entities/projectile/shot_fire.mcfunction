summon minecraft:item_display ~ ~1.45 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.shot_fire"},Tags:["shot_fire","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"shot_fire"}},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/shot_fire"}},brightness:{sky:15,block:15}}
teleport @e[tag=this_entity,limit=1] ~ ~1.45 ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] Move 25
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity