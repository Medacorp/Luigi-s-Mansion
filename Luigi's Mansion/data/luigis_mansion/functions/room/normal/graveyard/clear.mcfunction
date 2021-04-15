function luigis_mansion:room/normal/graveyard/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/graveyard
playsound luigis_mansion:block.chest.spawn block @a 656 102 46 2
stopsound @a[scores={Room=25}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=25}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=25}] Music 40