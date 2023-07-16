function e3_demo:room/original/missingno_31/turn_on_lights
execute if entity @a[tag=looking_at_map,limit=1] run function e3_demo:items/game_boy_horror/map/display/original/generate
execute as @a[scores={Room=47},gamemode=!spectator] unless entity @s[scores={MusicGroup=2,MusicType=3}] run function e3_demo:other/music/play/group_2/cleared_room