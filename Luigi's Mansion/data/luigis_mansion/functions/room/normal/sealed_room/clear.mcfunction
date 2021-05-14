function luigis_mansion:room/normal/sealed_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/sealed_room
playsound luigis_mansion:block.chest.spawn block @a 698 21 -73 2
stopsound @a[scores={Room=66}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=66}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=66}] Music 40
scoreboard players set @a[scores={Room=66}] MusicType 9