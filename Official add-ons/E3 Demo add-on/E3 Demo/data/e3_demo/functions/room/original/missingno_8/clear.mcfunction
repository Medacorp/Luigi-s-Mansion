function e3_demo:room/original/missingno_8/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"e3_demo:original"},limit=1] add regenerate_map
execute as @a[scores={Room=24},gamemode=!spectator] unless entity @s[scores={MusicGroup=2,MusicType=3}] run function e3_demo:other/music/play/group_2/cleared_room