function luigis_mansion:room/hidden/balcony_2/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/balcony_2
playsound luigis_mansion:block.chest.spawn block @a 668 120 8 2
stopsound @a[scores={Room=42}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=42}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=42}] Music 40