function luigis_mansion:room/hidden/hallway_4/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/hallway_4
stopsound @a[scores={Room=12},gamemode=!spectator] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=12},gamemode=!spectator] ~ ~ ~ 11000
scoreboard players set @a[scores={Room=12},gamemode=!spectator] Music 40
scoreboard players set @a[scores={Room=12},gamemode=!spectator] MusicType 9