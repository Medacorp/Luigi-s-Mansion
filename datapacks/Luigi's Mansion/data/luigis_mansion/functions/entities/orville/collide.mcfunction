execute as @e[distance=..0.7,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
effect give @a[tag=!spectator,distance=..0.7] minecraft:instant_damage 1 0 true
scoreboard players set @a[tag=!spectator,distance=..0.7] ForcedDamage 4
advancement grant @a[tag=!spectator,distance=..0.7] only luigis_mansion:challenges/waluigi_pinball orville
execute as @a[tag=!spectator,distance=..0.7] run function luigis_mansion:entities/player/knockback/large
scoreboard players set @s[tag=!laugh] ActionTime 0
tag @s add laugh