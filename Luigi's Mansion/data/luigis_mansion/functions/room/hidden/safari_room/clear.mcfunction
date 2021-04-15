function luigis_mansion:room/hidden/safari_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/safari_room
playsound luigis_mansion:block.chest.spawn block @a 711 120 38 2
stopsound @a[scores={Room=40}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=40}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=40}] Music 40
scoreboard players set @a[scores={Room=40}] MusicType 9