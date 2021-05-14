function luigis_mansion:room/hidden/hallway_1/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/hallway_1
stopsound @a[scores={Room=2}] music
playsound luigis_mansion:music.found_toad music @a[scores={Room=2}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=2}] Music 40
scoreboard players set @a[scores={Room=2}] MusicType 10