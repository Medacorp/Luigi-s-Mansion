function luigis_mansion:room/normal/sitting_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/sitting_room
function luigis_mansion:room/normal/sitting_room/remove_blockade
stopsound @a[scores={Room=56}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=56}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=56}] Music 40
scoreboard players set @a[scores={Room=56}] MusicType 9