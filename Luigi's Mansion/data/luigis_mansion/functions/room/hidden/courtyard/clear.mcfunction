function luigis_mansion:room/hidden/courtyard/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/courtyard
playsound luigis_mansion:block.chest.spawn block @a 650 102 23 2
stopsound @a[scores={Room=26}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=26}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=26}] Music 40