function luigis_mansion:room/hidden/small_hallway/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/small_hallway
stopsound @a[scores={Room=6}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=6}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=6}] Music 40
scoreboard players set @a[scores={Room=6}] MusicType 9