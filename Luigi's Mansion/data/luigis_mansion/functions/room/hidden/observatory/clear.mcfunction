function luigis_mansion:room/hidden/observatory/create_path
function luigis_mansion:room/hidden/observatory/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/observatory
stopsound @a[scores={Room=36}] music
playsound luigis_mansion:music.cleared_observatory music @a[scores={Room=36}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=36}] Music 273