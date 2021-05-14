function luigis_mansion:room/hidden/wardrobe_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/wardrobe_room
stopsound @a[scores={Room=5}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=5}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=5}] Music 40
scoreboard players set @a[scores={Room=5}] MusicType 9