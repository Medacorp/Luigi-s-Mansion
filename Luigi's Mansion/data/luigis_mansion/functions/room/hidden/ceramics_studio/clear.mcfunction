function luigis_mansion:room/hidden/ceramics_studio/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/ceramics_studio
function luigis_mansion:room/hidden/ceramics_studio/remove_blockade
playsound luigis_mansion:block.chest.spawn block @a 704 29 -56 2
stopsound @a[scores={Room=65}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=65}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=65}] Music 40
scoreboard players set @a[scores={Room=65}] MusicType 9