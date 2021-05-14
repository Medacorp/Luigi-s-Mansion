function luigis_mansion:room/normal/hallway_14/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/hallway_14
stopsound @a[scores={Room=40}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=40}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=40}] Music 40
scoreboard players set @a[scores={Room=40}] MusicType 9