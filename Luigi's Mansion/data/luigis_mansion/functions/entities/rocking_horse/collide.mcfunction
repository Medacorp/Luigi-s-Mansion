execute as @e[distance=..2,tag=gameboy_horror_location] run function luigis_mansion:gameboy_horror_location/bring_player_back
effect give @a[gamemode=!spectator,distance=..2] minecraft:instant_damage 1 0 true
scoreboard players set @a[gamemode=!spectator,distance=..2] ForcedDamage 4
tag @s add dead