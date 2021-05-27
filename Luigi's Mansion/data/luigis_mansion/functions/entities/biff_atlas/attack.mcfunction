execute if entity @s[scores={Sound=0}] run playsound luigis_mansion:entity.biff_atlas.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Sound=0}] run scoreboard players set @s[scores={Sound=0}] Sound 10
execute as @e[distance=..2,tag=gameboy_horror_location] run function luigis_mansion:gameboy_horror_location/bring_player_back
effect give @a[distance=..2,gamemode=!spectator] minecraft:instant_damage 1 0 true
scoreboard players set @a[distance=..2,gamemode=!spectator] ForcedDamage 4