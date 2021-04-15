function luigis_mansion:room/hidden/storage_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/storage_room
stopsound @a[scores={Room=14}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=14}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=14}] Music 40
scoreboard players set @a[scores={Room=14}] MusicType 9