function luigis_mansion:room/normal/basement_hallway/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/basement_hallway
stopsound @a[scores={Room=47}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=47}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=47}] Music 40
scoreboard players set @a[scores={Room=47}] MusicType 9