tag @e[tag=bowser,tag=can_decapitate,distance=..6] add decapitate
execute as @e[distance=..3,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
effect give @a[distance=..3,scores={Invulnerable=0},tag=!spectator] minecraft:instant_damage 1 0 true
scoreboard players set @a[distance=..3,scores={Invulnerable=0},tag=!spectator] ForcedDamage 4
execute as @a[distance=..3,scores={Invulnerable=0},tag=!spectator] run function luigis_mansion:entities/player/knockback/burn
particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 1 4 force @a[tag=same_room]
playsound luigis_mansion:entity.ball.explode hostile @a[tag=same_room] ~ ~ ~ 1
function luigis_mansion:spawn_entities/burning_floor
tag @s add dead