function luigis_mansion:room/normal/conservatory/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/conservatory
function luigis_mansion:room/normal/conservatory/stop_music
playsound luigis_mansion:block.chest.spawn block @a 658 11 -17 2
stopsound @a[scores={Room=25},gamemode=!spectator] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=25},gamemode=!spectator] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=25},gamemode=!spectator] Music 40
scoreboard players set @a[scores={Room=25},gamemode=!spectator] MusicType 9