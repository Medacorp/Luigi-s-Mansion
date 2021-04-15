function luigis_mansion:room/normal/armory/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/armory
playsound luigis_mansion:block.chest.spawn block @a 712 120 37 2
stopsound @a[scores={Room=51}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=51}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=51}] Music 40
scoreboard players set @a[scores={Room=51}] MusicType 9