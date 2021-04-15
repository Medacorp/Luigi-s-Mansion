function luigis_mansion:room/normal/main_stairs/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/main_stairs
stopsound @a[scores={Room=29}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=29}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=29}] Music 40
scoreboard players set @a[scores={Room=29}] MusicType 9