function luigis_mansion:room/normal/balcony_1/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/balcony_1
stopsound @a[scores={Room=6},gamemode=!spectator] music
playsound luigis_mansion:music.found_toad music @a[scores={Room=6},gamemode=!spectator] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=6},gamemode=!spectator] Music 40