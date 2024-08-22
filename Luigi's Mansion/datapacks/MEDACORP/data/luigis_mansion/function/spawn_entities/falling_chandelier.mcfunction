summon minecraft:marker ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:furniture.chandelier"}',Tags:["chandelier","same_room_players_only","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"chandelier"}}}
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity