function luigis_mansion:room/hidden/safari_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/safari_room
playsound luigis_mansion:block.chest.spawn block @a 738 29 56 2
stopsound @a[scores={Room=50}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=50}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=50}] Music 40
scoreboard players set @a[scores={Room=50}] MusicType 9