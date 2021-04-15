function luigis_mansion:room/hidden/study/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/study
playsound luigis_mansion:block.chest.spawn block @a 690 111 -13 2
stopsound @a[scores={Room=7}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=7}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=7}] Music 40
scoreboard players set @a[scores={Room=7}] MusicType 9