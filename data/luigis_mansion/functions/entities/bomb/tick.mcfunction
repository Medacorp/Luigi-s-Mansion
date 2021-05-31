teleport @s[tag=!hit_floor,tag=!boo] ^ ^-0.2 ^
teleport @s[tag=hit_floor,tag=!boo] ^ ^0.1 ^
teleport @s[tag=!hit_floor,tag=!move_up,tag=boo] ^ ^-0.2 ^0.1
teleport @s[tag=hit_floor,tag=!move_up,tag=boo] ^ ^0.1 ^0.1
teleport @s[tag=move_up] ^ ^0.1 ^0.1
execute at @s if block ~ ~-0.5 ~ #luigis_mansion:ghosts_ignore if block ~ ~-1.5 ~ #luigis_mansion:ghosts_ignore run tag @s[tag=move_up] remove move_up
execute at @s unless block ~ ~-0.1 ~ #luigis_mansion:ghosts_ignore run tag @s[tag=!move_up] add hit_floor
scoreboard players add @s[tag=hit_floor] Move 1
execute if entity @s[tag=!spawned_particle] run particle minecraft:lava ~ ~1 ~ 0 0 0 0 1
tag @s[tag=spawned_particle] add no_spawned_particle
tag @s[tag=spawned_particle] remove spawned_particle
tag @s[tag=!spawned_particle,tag=!no_spawned_particle] add spawned_particle
tag @s[tag=no_spawned_particle] remove no_spawned_particle
execute at @s run function luigis_mansion:animations/bomb/turn
execute at @s[scores={Move=10}] run summon minecraft:creeper ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.bomb"}',Fuse:0s,ExplosionRadius:2b,Invulnerable:1b,Silent:1b}
execute at @s[scores={Move=10}] run playsound minecraft:entity.generic.explode hostile @s ~ ~ ~ 2
tag @s[scores={Move=10}] add dead
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall