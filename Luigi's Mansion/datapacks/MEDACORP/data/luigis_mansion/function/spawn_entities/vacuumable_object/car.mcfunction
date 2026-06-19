summon minecraft:item_display ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.car"},data:{entity:{namespace:"luigis_mansion",id:"vacuumable_object"}},item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/car"}},item_display:"head",Tags:["car","affected_by_vacuum","vacuumable_object","same_room_players_only","this_entity"]}
execute as @e[tag=this_entity,limit=1] run teleport @s ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeWidth 14
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeHeight 8
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 4
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity