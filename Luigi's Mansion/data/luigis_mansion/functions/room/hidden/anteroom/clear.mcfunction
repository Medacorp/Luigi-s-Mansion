function luigis_mansion:room/hidden/anteroom/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/anteroom
function luigis_mansion:room/hidden/anteroom/remove_blockade
stopsound @a[scores={Room=3}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=3}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=3}] Music 40
scoreboard players set @a[scores={Room=3}] MusicType 9