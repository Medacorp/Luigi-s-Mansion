function luigis_mansion:room/hidden/hidden_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/hidden_room
playsound luigis_mansion:block.chest.spawn block @a 746 11 -25 2
stopsound @a[scores={Room=24}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=24}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=24}] Music 40
scoreboard players set @a[scores={Room=24}] MusicType 9