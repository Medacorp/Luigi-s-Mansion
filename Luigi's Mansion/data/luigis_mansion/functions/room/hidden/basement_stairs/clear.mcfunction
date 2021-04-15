function luigis_mansion:room/hidden/basement_stairs/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/basement_stairs
stopsound @a[scores={Room=11}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=11}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=11}] Music 40
scoreboard players set @a[scores={Room=11}] MusicType 9