function luigis_mansion:room/hidden/bottom_of_the_well/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/bottom_of_the_well
stopsound @a[scores={Room=27}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=27}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=27}] Music 40
scoreboard players set @a[scores={Room=27}] MusicType 9