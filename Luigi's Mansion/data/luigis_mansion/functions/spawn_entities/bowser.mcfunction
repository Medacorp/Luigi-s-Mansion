summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.bowser"}',NoGravity:1b,CustomNameVisible:1b,Invulnerable:1b,Silent:1b,DeathLootTable:"luigis_mansion:entities/bowser",Tags:["bowser","this_entity"]}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.bowser"}',NoGravity:1b,CustomNameVisible:0b,Invulnerable:1b,Silent:1b,DeathLootTable:"luigis_mansion:entities/bowser",Tags:["bowser_body"]}
scoreboard players set @e[tag=this_entity,limit=1] Room 75
tag @e[tag=this_entity,limit=1] remove this_entity