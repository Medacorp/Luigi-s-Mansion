function luigis_mansion:room/hidden/attic_hallway_2/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/attic_hallway_2
stopsound @a[scores={Room=43}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=43}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=43}] Music 40
scoreboard players set @a[scores={Room=43}] MusicType 9