function luigis_mansion:room/hidden/cold_storage/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/cold_storage
playsound luigis_mansion:block.chest.spawn block @a 704 93 23 2
stopsound @a[scores={Room=55}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=55}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=55}] Music 40
scoreboard players set @a[scores={Room=55}] MusicType 9