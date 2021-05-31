function luigis_mansion:room/hidden/bathroom_2/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/bathroom_2
playsound luigis_mansion:block.chest.spawn block @a 656 20 -3 2
stopsound @a[scores={Room=43},gamemode=!spectator] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=43},gamemode=!spectator] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=43},gamemode=!spectator] Music 40
scoreboard players set @a[scores={Room=43},gamemode=!spectator] MusicType 9