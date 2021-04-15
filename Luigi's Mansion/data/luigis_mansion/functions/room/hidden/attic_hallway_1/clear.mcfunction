function luigis_mansion:room/hidden/attic_hallway_1/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/attic_hallway_1
stopsound @a[scores={Room=41}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=41}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=41}] Music 40
scoreboard players set @a[scores={Room=41}] MusicType 9