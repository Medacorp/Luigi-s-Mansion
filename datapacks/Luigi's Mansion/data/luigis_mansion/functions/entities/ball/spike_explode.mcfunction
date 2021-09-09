tag @e[tag=bowser,tag=vacuum,distance=..6,scores={ActionTime=21..30}] add decapitate
tag @e[tag=bowser,tag=breathe_fire,distance=..6,scores={ActionTime=21..121}] add decapitate
summon minecraft:creeper ~ ~ ~ {Fuse:0s,ExplosionRadius:2b,Invulnerable:1b}
function luigis_mansion:spawn_entities/burning_floor
tag @s add dead