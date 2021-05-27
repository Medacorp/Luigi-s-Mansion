execute as @e[distance=..0.7,tag=gameboy_horror_location] run function luigis_mansion:gameboy_horror_location/bring_player_back
effect give @a[gamemode=!spectator,distance=..0.7] minecraft:instant_damage 1 0 true
scoreboard players set @a[gamemode=!spectator,distance=..0.7] ForcedDamage -1
advancement grant @a[gamemode=!spectator,distance=..0.7] only luigis_mansion:challenges/waluigi_pinball pink_flying_fish
scoreboard players set @s WaitTime 0
tag @s remove at_height