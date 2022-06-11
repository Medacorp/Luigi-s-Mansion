teleport @s[tag=!hit_floor,tag=!boo,tag=!move_up] ^ ^-0.2 ^
teleport @s[tag=hit_floor,tag=!boo,tag=!move_up,scores={Move=..9}] ^ ^0.1 ^
teleport @s[tag=!hit_floor,tag=!move_up,tag=boo] ^ ^-0.2 ^0.1
teleport @s[tag=hit_floor,tag=!move_up,tag=boo,scores={Move=..9}] ^ ^0.1 ^0.1
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
execute at @s[scores={Move=10}] run execute as @e[distance=..3,scores={Invulnerable=0},tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute at @s[scores={Move=10}] run effect give @a[distance=..3,scores={Invulnerable=0},tag=!spectator] minecraft:instant_damage 1 0 true
execute at @s[scores={Move=10}] run scoreboard players set @a[distance=..3,scores={Invulnerable=0},tag=!spectator] ForcedDamage 4
execute at @s[scores={Move=10}] as @a[distance=..3,scores={Invulnerable=0},tag=!spectator] run function luigis_mansion:entities/player/knockback/burn
execute at @s[scores={Move=10}] run particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 1 4 force @a[tag=same_room]
execute at @s[scores={Move=10}] run playsound luigis_mansion:entity.ghost.explode hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={Move=10}] run data remove entity @s ArmorItems[3]
execute if entity @s[scores={Move=10,Owner=-2147483648..}] if entity @a[distance=..3,scores={Invulnerable=0},tag=!spectator,limit=1] run tag @s add make_laugh
execute if entity @s[scores={Move=30,Owner=-2147483648..}] run scoreboard players operation #temp GhostNr = @s Owner
execute if entity @s[scores={Move=30,Owner=-2147483648..}] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run scoreboard players set @s AnimationProg 0
execute if entity @s[scores={Move=30,Owner=-2147483648..},tag=make_laugh] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run tag @s add laugh
execute if entity @s[scores={Move=30,Owner=-2147483648..},tag=!make_laugh] as @e[tag=!model_piece,tag=ghost] if score @s GhostNr = #temp GhostNr run tag @s add complain
scoreboard players reset #temp GhostNr
tag @s[scores={Move=30}] add dead
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall