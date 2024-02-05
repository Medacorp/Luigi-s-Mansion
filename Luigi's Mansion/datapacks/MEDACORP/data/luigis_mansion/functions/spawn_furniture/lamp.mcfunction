summon minecraft:marker ~ ~-1.4 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:furniture.lamp"}',Tags:["furniture","no_reflection","lamp","was_dark_room","dark_room","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"furniture"}}}
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightLeft 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightUp 5
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightStrength 15
scoreboard players set @e[tag=this_entity,limit=1] FurnitureLightModel 0
function luigis_mansion:spawn_furniture/setup/debug_spawn
tag @e[tag=this_entity,limit=1] remove this_entity