summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.bowser"}',NoGravity:1b,CustomNameVisible:1b,Invulnerable:1b,Silent:1b,DeathLootTable:"luigis_mansion:entities/bowser",Tags:["bowser","portrait_ghost","this_entity"]}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.bowser"}',NoGravity:1b,CustomNameVisible:0b,Invulnerable:1b,Silent:1b,DeathLootTable:"luigis_mansion:entities/bowser",Tags:["model_piece","found_owner","bowser_body","body","this_entity"]}
execute as @e[tag=bowser,tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=bowser,tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=model_piece,tag=this_entity] GhostNr = @e[tag=bowser,tag=this_entity,limit=1] GhostNr
tag @e[tag=this_entity] remove this_entity