function luigis_beta_mansion:room/original/missingno_54/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function luigis_beta_mansion:items/gameboy_horror/map/display/original/generate
execute as @a[scores={Room=70},gamemode=!spectator] unless entity @s[scores={MusicGroup=2,MusicType=3}] run function luigis_beta_mansion:other/music/play/group_2/cleared_room