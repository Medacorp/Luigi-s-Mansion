execute as @e[distance=..3,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
effect give @a[tag=!spectator,distance=..3] minecraft:instant_damage 1 0 true
scoreboard players set @a[tag=!spectator,distance=..3] ForcedDamage 4
advancement grant @a[tag=!spectator,distance=..3] only luigis_mansion:challenges/waluigi_pinball boo
execute as @a[tag=!spectator,distance=..3] run function luigis_mansion:entities/player/knockback/large