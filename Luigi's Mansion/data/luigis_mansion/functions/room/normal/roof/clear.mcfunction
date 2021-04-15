function luigis_mansion:room/normal/roof/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/roof
playsound luigis_mansion:block.chest.spawn block @a 684 137 36 2
stopsound @a[scores={Room=50}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=50}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=50}] Music 40