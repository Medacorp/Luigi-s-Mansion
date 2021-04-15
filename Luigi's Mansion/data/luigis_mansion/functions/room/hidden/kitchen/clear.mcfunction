function luigis_mansion:room/hidden/kitchen/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/kitchen
playsound luigis_mansion:block.chest.spawn block @a 693 102 -32 2
stopsound @a[scores={Room=23}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=23}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=23}] Music 40
scoreboard players set @a[scores={Room=23}] MusicType 9