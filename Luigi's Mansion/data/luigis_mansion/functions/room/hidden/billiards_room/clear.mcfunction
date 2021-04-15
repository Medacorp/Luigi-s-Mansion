function luigis_mansion:room/hidden/billiards_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/billiards_room
playsound luigis_mansion:block.chest.spawn block @a 680 102 -15 2
stopsound @a[scores={Room=37}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=37}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=37}] Music 40
scoreboard players set @a[scores={Room=37}] MusicType 9