function luigis_mansion:room/normal/telephone_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/telephone_room
playsound luigis_mansion:block.chest.spawn block @a 704 120 1 2
stopsound @a[scores={Room=44}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=44}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=44}] Music 40
scoreboard players set @a[scores={Room=44}] MusicType 9