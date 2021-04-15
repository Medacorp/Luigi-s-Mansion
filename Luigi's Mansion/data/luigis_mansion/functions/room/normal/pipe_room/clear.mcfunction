function luigis_mansion:room/normal/pipe_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/pipe_room
stopsound @a[scores={Room=54}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=54}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=54}] Music 40
scoreboard players set @a[scores={Room=54}] MusicType 9