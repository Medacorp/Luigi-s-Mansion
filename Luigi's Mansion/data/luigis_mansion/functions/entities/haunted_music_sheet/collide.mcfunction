execute as @e[distance=..0.7,tag=gameboy_horror_location] run function luigis_mansion:gameboy_horror_location/bring_player_back
effect give @a[gamemode=!spectator,distance=..0.7] minecraft:instant_damage 1 0 true
scoreboard players set @a[gamemode=!spectator,distance=..0.7] ForcedDamage -1
scoreboard players set @s WaitTime 0