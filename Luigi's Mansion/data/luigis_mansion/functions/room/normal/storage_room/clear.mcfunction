function luigis_mansion:room/normal/storage_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/storage_room
stopsound @a[scores={Room=18}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=18}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=18}] Music 40
scoreboard players set @a[scores={Room=18}] MusicType 9