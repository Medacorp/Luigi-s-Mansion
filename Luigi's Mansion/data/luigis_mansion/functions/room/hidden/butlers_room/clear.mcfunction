function luigis_mansion:room/hidden/butlers_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/butlers_room
playsound luigis_mansion:block.chest.spawn block @a 715 102 -34 2
stopsound @a[scores={Room=19}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=19}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=19}] Music 40
scoreboard players set @a[scores={Room=19}] MusicType 9