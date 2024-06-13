function e3_demo:room/original/missingno_57/turn_on_lights
tag @a[tag=looking_at_map,nbt={Dimension:"e3_demo:original"},limit=1] add regenerate_map
execute as @a[scores={Room=73}] run function e3_demo:other/music/play/group_2/cleared_room