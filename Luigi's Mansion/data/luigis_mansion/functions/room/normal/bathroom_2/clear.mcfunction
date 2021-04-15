function luigis_mansion:room/normal/bathroom_2/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/bathroom_2
playsound luigis_mansion:block.chest.spawn block @a 661 111 27 2
stopsound @a[scores={Room=33}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=33}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=33}] Music 40
scoreboard players set @a[scores={Room=33}] MusicType 9