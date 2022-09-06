execute as @e[distance=..1,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
effect give @a[distance=..1,scores={Invulnerable=0},tag=!spectator,limit=1] minecraft:instant_damage 1 0 true
scoreboard players set @a[distance=..1,scores={Invulnerable=0},tag=!spectator,limit=1] ForcedDamage 14
execute as @a[distance=..1,scores={Invulnerable=0},tag=!spectator] run function luigis_mansion:entities/player/knockback/medium
tag @s remove moving
tag @s remove collision
tag @s add breaking