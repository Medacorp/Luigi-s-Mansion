function luigis_mansion:room/hidden/astral_hall/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/hidden/astral_hall
function luigis_mansion:room/hidden/astral_hall/remove_blockade
stopsound @a[scores={Room=45}] music
playsound luigis_mansion:music.cleared_room music @a[scores={Room=45}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=45}] Music 40
scoreboard players set @a[scores={Room=45}] MusicType 9