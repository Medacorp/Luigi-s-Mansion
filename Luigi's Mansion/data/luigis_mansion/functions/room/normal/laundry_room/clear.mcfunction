function luigis_mansion:room/normal/laundry_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/laundry_room
playsound luigis_mansion:block.chest.spawn block @a 716 11 66 2
stopsound @a[scores={Room=18}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=18}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=18}] Music 40
scoreboard players set @a[scores={Room=18}] MusicType 9