function luigis_mansion:room/normal/tea_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/tea_room
playsound luigis_mansion:block.chest.spawn block @a 659 112 -19 2
stopsound @a[scores={Room=30}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=30}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=30}] Music 40
scoreboard players set @a[scores={Room=30}] MusicType 9