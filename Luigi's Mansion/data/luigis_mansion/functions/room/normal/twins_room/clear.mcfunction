function luigis_mansion:room/normal/twins_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/twins_room
function luigis_mansion:room/normal/twins_room/remove_blockade
playsound luigis_mansion:block.chest.spawn block @a 740 20 40 2
stopsound @a[scores={Room=49}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=49}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=49}] Music 40
scoreboard players set @a[scores={Room=49}] MusicType 9