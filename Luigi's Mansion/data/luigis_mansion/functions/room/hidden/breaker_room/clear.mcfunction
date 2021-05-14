function luigis_mansion:room/hidden/breaker_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/breaker_room
playsound luigis_mansion:block.chest.spawn block @a 691 2 64 2
stopsound @a[scores={Room=57}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=57}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=57}] Music 40
scoreboard players set @a[scores={Room=57}] MusicType 9