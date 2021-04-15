function luigis_mansion:room/normal/secret_altar/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/secret_altar
stopsound @a[scores={Room=59}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=59}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=59}] Music 40
scoreboard players set @a[scores={Room=59}] MusicType 9