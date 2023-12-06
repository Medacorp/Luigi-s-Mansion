summon minecraft:marker ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.ice_elemental_source"}',NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,Tags:["elemental_source","ice","enabled","this_entity"]}
execute as @e[tag=this_entity,limit=1] store result score @s ElementalNr run data get storage luigis_mansion:data elemental_source_nr
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data elemental_source_nr int 1 run scoreboard players add @s ElementalNr 1
tag @e[tag=this_entity,limit=1] remove this_entity