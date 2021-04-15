function luigis_mansion:room/hidden/projection_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/projection_room
playsound luigis_mansion:block.chest.spawn block @a 679 102 6 2
stopsound @a[scores={Room=38}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=38}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=38}] Music 40
scoreboard players set @a[scores={Room=38}] MusicType 9