function luigis_mansion:room/hidden/clockwork_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/clockwork_room
stopsound @a[scores={Room=49}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=49}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=49}] Music 40
scoreboard players set @a[scores={Room=49}] MusicType 9