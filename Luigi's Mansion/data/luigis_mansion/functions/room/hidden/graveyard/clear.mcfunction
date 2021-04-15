function luigis_mansion:room/hidden/graveyard/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/graveyard
playsound luigis_mansion:block.chest.spawn block @a 656 102 -31 2
stopsound @a[scores={Room=25}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=25}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=25}] Music 40