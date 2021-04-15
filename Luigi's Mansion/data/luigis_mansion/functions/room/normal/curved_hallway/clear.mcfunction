function luigis_mansion:room/normal/curved_hallway/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/curved_hallway
stopsound @a[scores={Room=48}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=48}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=48}] Music 40
scoreboard players set @a[scores={Room=48}] MusicType 9