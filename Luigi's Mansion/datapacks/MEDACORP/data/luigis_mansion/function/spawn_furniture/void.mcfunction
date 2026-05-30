execute summon minecraft:item_display run data merge entity @s {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.void"},item:{id:"minecraft:diamond_pickaxe",components:{"minecraft:item_model":"luigis_mansion:furniture/void"}},Tags:["static","immobile","no_ai","freeze_animation","requires_hitbox","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
function luigis_mansion:spawn_furniture/setup/hitbox
function luigis_mansion:spawn_furniture/setup/transformation
function luigis_mansion:spawn_furniture/setup/room
function luigis_mansion:spawn_furniture/setup/tags
function luigis_mansion:spawn_furniture/setup/position
function luigis_mansion:spawn_furniture/setup/debug_spawn
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture