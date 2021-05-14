function luigis_mansion:room/hidden/hallway_10/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/hallway_10
stopsound @a[scores={Room=36}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=36}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=36}] Music 40
scoreboard players set @a[scores={Room=36}] MusicType 9