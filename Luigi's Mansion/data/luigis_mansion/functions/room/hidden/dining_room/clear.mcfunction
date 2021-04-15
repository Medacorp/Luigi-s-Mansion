function luigis_mansion:room/hidden/dining_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/dining_room
playsound luigis_mansion:block.chest.spawn block @a 692 102 14 2
stopsound @a[scores={Room=22}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=22}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=22}] Music 40
scoreboard players set @a[scores={Room=22}] MusicType 9