function luigis_mansion:room/normal/bathroom_1/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_mansion:items/gameboy_horror/map/display/normal/bathroom_1
stopsound @a[scores={Room=12}] music
execute unless entity @s[scores={MusicType=19}] unless entity @s[scores={MusicType=27}] run function luigis_mansion:other/music/set/gameboy_horror_calling
playsound luigis_mansion:music.cleared_room music @a[scores={Room=12}] ~ ~ ~ 10000
scoreboard players set @a[scores={Room=12}] Music 40
scoreboard players set @a GBHCall 3