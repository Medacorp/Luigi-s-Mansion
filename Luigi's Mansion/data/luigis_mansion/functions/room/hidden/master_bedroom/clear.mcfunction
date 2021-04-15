function luigis_mansion:room/hidden/master_bedroom/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/master_bedroom
playsound luigis_mansion:block.chest.spawn block @a 687 111 -30 2
stopsound @a[scores={Room=8}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=8}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=8}] Music 40
scoreboard players set @a[scores={Room=8}] MusicType 9