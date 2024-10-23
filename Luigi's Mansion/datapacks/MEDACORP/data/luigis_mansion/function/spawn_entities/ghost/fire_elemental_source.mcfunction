summon minecraft:marker ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.fire_elemental_source"}',NoGravity:1b,Marker:1b,HasVisualFire:1b,CustomNameVisible:0b,Invulnerable:1b,Tags:["elemental_source","fire","enabled","same_room_players_only","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"elemental_source"}}}
execute as @e[tag=this_entity,limit=1] store result score @s ElementalNr run data get storage luigis_mansion:data unique_id.elemental_source
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data unique_id.elemental_source int 1 run scoreboard players add @s ElementalNr 1
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity