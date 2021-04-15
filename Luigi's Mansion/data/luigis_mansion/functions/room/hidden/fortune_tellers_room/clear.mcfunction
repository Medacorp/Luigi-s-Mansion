function luigis_mansion:room/hidden/fortune_tellers_room/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/fortune_tellers_room
function luigis_mansion:room/hidden/fortune_tellers_room/remove_blockade
playsound luigis_mansion:block.chest.spawn block @a 711 102 21 2
stopsound @a[scores={Room=16}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=16}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=16}] Music 40
scoreboard players set @a[scores={Room=16}] MusicType 9