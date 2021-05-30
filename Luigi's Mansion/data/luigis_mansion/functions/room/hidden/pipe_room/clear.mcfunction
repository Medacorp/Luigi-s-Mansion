function luigis_mansion:room/hidden/pipe_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/pipe_room
stopsound @a[scores={Room=67},gamemode=!spectator] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=67},gamemode=!spectator] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=67},gamemode=!spectator] Music 40
scoreboard players set @a[scores={Room=67},gamemode=!spectator] MusicType 9