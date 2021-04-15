function luigis_mansion:room/hidden/nanas_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/nanas_room
playsound luigis_mansion:block.chest.spawn block @a 657 111 9 2
stopsound @a[scores={Room=34}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=34}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=34}] Music 40
scoreboard players set @a[scores={Room=34}] MusicType 9