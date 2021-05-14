function luigis_mansion:room/hidden/ball_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/ball_room
playsound luigis_mansion:block.chest.spawn block @a 701 11 68 2
stopsound @a[scores={Room=17}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=17}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=17}] Music 40
scoreboard players set @a[scores={Room=17}] MusicType 9