function luigis_mansion:room/normal/boneyard/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/boneyard
stopsound @a[scores={Room=24}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=24}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=24}] Music 40